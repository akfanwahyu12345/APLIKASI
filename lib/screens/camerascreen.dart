import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/ResultDetection.dart';
import 'package:flutter_tflite/flutter_tflite.dart';

late List<CameraDescription> _cameras;

class CameraScreen extends StatefulWidget {
  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  bool _loadingDetection = false;
  ResultDetection? _result = null;
  bool _isCameraInitialized = false; // To track if the camera is initialized

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _loadModel();
  }

  Future<void> _initializeCamera() async {
    // Fetch the available cameras before initializing the controller.
    _cameras = await availableCameras();
    Fimber.d("$_cameras");
    // Check if cameras list is not empty
    if (_cameras.isNotEmpty) {
      _controller = CameraController(_cameras[0], ResolutionPreset.max);

      try {
        await _controller.initialize();
        setState(() {
          _isCameraInitialized =
              true; // Set the flag to true as the camera is now initialized
        });
      } on CameraException catch (e) {
        // Handle the camera exception
        print(e);
        // Implement error handling strategies here, such as showing an error message
      }
    } else {
      // Handle the case when no cameras are available
      print('No cameras found');
      // Implement error handling or messaging to inform the user
    }
  }

  Future<void> _loadModel() async {
    final res = await Tflite.loadModel(
        model: "assets/model/model.tflite",
        labels: "assets/model/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );

    Fimber.d("load model $res");
  }

  void processImage(File image) async {
    setState(() {
      _loadingDetection = true;
    });
    try {
      var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.5,
        imageMean: 127.5,
        imageStd: 127.5,
      );

      setState(() {
        _result = output != null
            ? ResultDetection(
                label: output[0]['label'], confidence: output[0]['confidence'])
            : null;
      });

      final exist = await image.exists();

      Fimber.d("output ${output?[0]}");
      Fimber.d("${image}");
    } catch (e) {
      Fimber.e("error: $e");
    } finally {
      setState(() {
        _loadingDetection = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Camera Screen')),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: !_isCameraInitialized
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Initialize camera"),
                            CircularProgressIndicator(),
                          ],
                        ),
                      )
                    : _controller.value.isInitialized
                        ? CameraPreview(_controller)
                        : const _CameraNotInitialized()),
          ),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Result of Image Classification',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                _Result(
                    resultDetection: _result,
                    loadingDetection: _loadingDetection)
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (_isCameraInitialized) {
                final image = await _controller.takePicture();
                // Fimber.d("image: $image");
                File file = File(image.path);
                processImage(file);
              }
              // Add code here to access file directory
              // For example, using file_picker package
            },
            child: const Icon(Icons.camera),
          ),
        ],
      ),
    );
  }
}

class _CameraNotInitialized extends StatelessWidget {
  const _CameraNotInitialized({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Camera View',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  final ResultDetection? resultDetection;
  final bool loadingDetection;
  const _Result(
      {super.key,
      required this.resultDetection,
      required this.loadingDetection});

  @override
  Widget build(BuildContext context) {
    return resultDetection != null
        ? Column(
            children: [
              Text(resultDetection?.label ?? "-"),
              Text("confidence: ${resultDetection?.confidence ?? 0.0}")
            ],
          )
        : loadingDetection
            ? const SizedBox(
                width: 24.0, height: 24.0, child: CircularProgressIndicator())
            : SizedBox.shrink();
  }
}
