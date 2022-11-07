import "package:flutter/material.dart";
import 'package:login/Models/service_request.dart';
import 'package:login/UI/General/pending_requests/pending_request_detail.dart';

import '../../../Utils/http_helper.dart';

class PendingRequestScreen extends StatefulWidget {
  const PendingRequestScreen({super.key});

  @override
  State<PendingRequestScreen> createState() => _PendingRequestScreenState();
}

class _PendingRequestScreenState extends State<PendingRequestScreen> {
  int? serviceRequestCount;
  List? serviceRequest;
  HttpHelper? helper;

  @override
  void initState() {
    helper = HttpHelper();
    initialize();
    super.initState();
  }

  Future initialize() async {
    serviceRequest = List.empty();
    serviceRequest = await helper?.getServicesRequestByTechnician(144);
    setState(() {
      serviceRequestCount = serviceRequest?.length;
      serviceRequest = serviceRequest;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: ListView.builder(
        itemCount: (serviceRequestCount == null) ? 0 : serviceRequestCount,
        itemBuilder: ((context, index) {
          return ServiceRequestItem(serviceRequest![index]);
        }),
      ),
    ));
  }
}

class ServiceRequestItem extends StatefulWidget {
  final ServiceRequest serviceRequest;
  const ServiceRequestItem(this.serviceRequest, {super.key});

  @override
  State<ServiceRequestItem> createState() => _ServiceRequestItemState();
}

class _ServiceRequestItemState extends State<ServiceRequestItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      //El card debe tener una foto en la parte superior, el nombre del usuario, la fecha de solicitud y el botón mas información
      elevation: 3.0,
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360")),
            title: Text(
                "${widget.serviceRequest.client!.name} ${widget.serviceRequest.client!.lastName}"),
            subtitle: const Text('20/12/2022'),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            alignment: Alignment.centerLeft,
            child: Text(widget.serviceRequest.detail!),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (_) =>
                          PendingRequestDetail(widget.serviceRequest));
                  Navigator.push(context, route);
                },
                child: const Text("MORE INFO")),
          ),
        ],
      ),
    );
  }
}
