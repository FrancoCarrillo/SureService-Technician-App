import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper {
  final String urlBase = 'https://sure-service.herokuapp.com/api/v1';
  final String urlServiceRequest = '/services';
  final String urlTechnician = '/technician';

  Future<List?> getServicesRequestByTechnician(String technicianId) async {
    final String url = '$urlBase$urlServiceRequest$urlTechnician/$technicianId';
    http.Response result = await http.get(Uri.parse(url));

    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final serviceRequestMap = jsonResponse;
      List serviceRequest =
          serviceRequestMap.map((i) => Movie.fromJson(i)).toList();
      return serviceRequest;
    } else {
      return null;
    }
  }
}
