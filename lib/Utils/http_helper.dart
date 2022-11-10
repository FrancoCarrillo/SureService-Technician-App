import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:login/Models/service_request.dart';
import 'package:login/Models/technician.dart';

import '../Models/reservation_request.dart';

class HttpHelper {
  final String urlBase = 'https://sure-service.herokuapp.com/api/v1';
  final String urlServiceRequest = '/services';
  final String urlTechnician = '/technician';
  final String urlLogin = "/users/auth/sign-in";
  final String urlReservations = "/reservations";

  Future<int?> login(Technician user) async {
    http.Response result = await http.post(
      Uri.parse(urlBase + urlLogin),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      return jsonResponse['id'] as int;
    }

    return null;
  }

  Future<List?> getReservationsByTechnician(int technicianId) async {
    final String url = '$urlBase$urlReservations$urlTechnician/$technicianId';
    http.Response result = await http.get(Uri.parse(url));

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final serviceRequestMap = jsonResponse;
      List serviceRequest =
          serviceRequestMap.map((i) => ReservationRequest.fromJson(i)).toList();
      return serviceRequest;
    } else {
      return null;
    }
  }

  Future<List?> getServicesRequestByTechnician(int technicianId) async {
    final String url = '$urlBase$urlServiceRequest$urlTechnician/$technicianId';
    http.Response result = await http.get(Uri.parse(url));

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final serviceRequestMap = jsonResponse;
      List serviceRequest =
          serviceRequestMap.map((i) => ServiceRequest.fromJson(i)).toList();
      return serviceRequest;
    } else {
      return null;
    }
  }

  Future<int> editServiceRequest(ServiceRequest serviceRequest) async {
    final String url = '$urlBase$urlServiceRequest/${serviceRequest.id}';
    final editServiceRequestUrl = Uri.parse(url);
    http.Response result = await http.put(editServiceRequestUrl,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "total_price": "${serviceRequest.totalPrice}",
          "reservation_price": "${serviceRequest.reservationPrice}",
          "confirmation": "${serviceRequest.confirmation}"
        }));
    return result.statusCode;
  }
}
