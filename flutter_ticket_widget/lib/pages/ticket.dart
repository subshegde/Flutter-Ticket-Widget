import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

class MyTicketView extends StatelessWidget {
  const MyTicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            SingleChildScrollView(
              child: Center(
                child: TicketWidget(
                  width: 350,
                  height: 500,
                  isCornerRounded: true,
                  padding: EdgeInsets.all(20),
                  child: TicketData(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(width: 1.0, color: Colors.green),
              ),
              child: const Center(
                child: Text(
                  'Business Class',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  'LHR',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.flight_takeoff,
                    color: Colors.pink,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'ISL',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Flight Ticket',
            style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ticketDetailsWidget('Passengers', 'SSHegde Visuals', 'Date', '07-02-2025'),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                child: ticketDetailsWidget('Flight', '31316A31', 'Gate', '31B'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                child: ticketDetailsWidget('Class', 'Business', 'Seat', '31B'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
          child: Container(
            width: 250.0,
            height: 60.0,
            decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/barcode.png'), fit: BoxFit.cover)),
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 95.0, right: 75.0),
          child: Text(
            '+91 8765431232',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc, String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );
}