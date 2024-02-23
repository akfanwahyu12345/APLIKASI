class ResultDetection {
  final String label;
  final double confidence;
  ResultDetection({required this.label, required this.confidence});

  factory ResultDetection.fromJson(Map<String, dynamic> json) {
    return ResultDetection(
      label: "${json['label']}",
      confidence: json['confidence'],
    );
  }
}
