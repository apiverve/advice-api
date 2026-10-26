/// Response models for the Advice Generator API.

/// API Response wrapper.
class AdviceResponse {
  final String status;
  final dynamic error;
  final AdviceData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AdviceResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AdviceResponse.fromJson(Map<String, dynamic> json) => AdviceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AdviceData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
