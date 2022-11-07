import 'package:login/Models/client.dart';

class ServiceRequest {
  int? id;
  String? detail;
  double? totalPrice;
  double? reservationPrice;
  int? confirmation;
  Client? client;

  ServiceRequest(this.id, this.detail, this.totalPrice, this.reservationPrice,
      this.confirmation, this.client);

  ServiceRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    detail = json['detail'].toString();
    totalPrice = json['total_price'] * 1.0;
    reservationPrice = json['reservation_price'] * 1.0;
    confirmation = json['confirmation'];
    client = Client.fromJson(json['client']);
  }
}