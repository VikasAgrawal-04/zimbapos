enum OutletType {
  restaurant,
  cloudKitchen,
}

extension OutletTypeExtension on OutletType {
  Map<String, dynamic> toMap() {
    switch (this) {
      case OutletType.restaurant:
        return {'outletType': 'restaurant'};
      case OutletType.cloudKitchen:
        return {'outletType': 'cloudKitchen'};
    }
  }

  static OutletType fromMap(Map<String, dynamic> map) {
    final type = map['outletType'];
    switch (type) {
      case 'restaurant':
        return OutletType.restaurant;
      case 'cloudKitchen':
        return OutletType.cloudKitchen;
      default:
        throw Exception('Invalid OutletType: $type');
    }
  }
}
