// lib/model/companion_model.dart
class CompanionModel {
  final String id;
  final String sportName;
  final String logoPath;
  final String organiserName;
  final String venue;
  final String city;
  final String description;
  final String date;
  final String time;
  final String gender;
  final String ageLimit;
  final String paidStatus;
  final double latitude;
  final double longitude;

  CompanionModel({
    required this.id,
    required this.sportName,
    required this.logoPath,
    required this.organiserName,
    required this.venue,
    required this.city,
    required this.description,
    required this.date,
    required this.time,
    required this.gender,
    required this.ageLimit,
    required this.paidStatus,
    required this.latitude,
    required this.longitude,
  });

  factory CompanionModel.fromJson(Map<String, dynamic> json) {
    return CompanionModel(
      id: json['id'] ?? '',
      sportName: json['sportName'] ?? '',
      logoPath: json['logoPath'] ?? 'assets/images/default.jpg',
      organiserName: json['organiserName'] ?? '',
      venue: json['venue'] ?? '',
      city: json['city'] ?? '',
      description: json['description'] ?? '',
      date: json['date'] ?? '',
      time: json['time'] ?? '',
      gender: json['gender'] ?? 'All',
      ageLimit: json['ageLimit'] ?? '18-25',
      paidStatus: json['paidStatus'] ?? 'Unpaid',
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sportName': sportName,
      'logoPath': logoPath,
      'organiserName': organiserName,
      'venue': venue,
      'city': city,
      'description': description,
      'date': date,
      'time': time,
      'gender': gender,
      'ageLimit': ageLimit,
      'paidStatus': paidStatus,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
