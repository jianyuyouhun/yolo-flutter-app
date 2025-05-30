import 'dart:ui';

/// A detected object.
class DetectedObject {
  /// Creates a [DetectedObject].
  DetectedObject({
    required this.confidence,
    required this.boundingBox,
    required this.index,
    required this.label,
    required this.duration,
  });

  /// Creates a [DetectedObject] from a [json] object.
  factory DetectedObject.fromJson(Map<dynamic, dynamic> json) {
    int? duration;
    if (json['duration'] != null) {
      duration = json['duration'] as int;
    }
    return DetectedObject(
      confidence: json['confidence'] as double,
      boundingBox: Rect.fromLTWH(
        json['x'] as double,
        json['y'] as double,
        json['width'] as double,
        json['height'] as double,
      ),
      index: json['index'] as int,
      label: json['label'] as String,
      duration: duration,
    );
  }

  /// The confidence of the detection.
  final double confidence;

  /// The bounding box of the detection.
  final Rect boundingBox;

  /// The index of the label.
  final int index;

  /// The label of the detection.
  final String label;

  /// The duration of the detection.
  final int? duration;
}
