/// Response models for the Advice Generator API.

/// API Response wrapper.
class AdviceResponse {
  final String status;
  final dynamic error;
  final AdviceData? data;

  AdviceResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AdviceResponse.fromJson(Map<String, dynamic> json) => AdviceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AdviceData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Advice Generator API.

class AdviceData {
  String? id;
  String? advice;
  String? lang;

  AdviceData({
    this.id,
    this.advice,
    this.lang,
  });

  factory AdviceData.fromJson(Map<String, dynamic> json) => AdviceData(
      id: json['id'],
      advice: json['advice'],
      lang: json['lang'],
    );
}
