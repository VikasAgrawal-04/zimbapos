class AreaModel {
  int areaId;
  String areaName;
  int rateSet;
  bool isActive;

  AreaModel({
    required this.areaId,
    required this.areaName,
    required this.rateSet,
    required this.isActive,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
      areaId: json['areaId'] ?? 0,
      areaName: json['areaName'] ?? "",
      rateSet: json['rateSet'] ?? 0,
      isActive: json['isActive'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'areaId': areaId,
      'areaName': areaName,
      'rateSet': rateSet,
      'isActive': isActive,
    };
  }
}
