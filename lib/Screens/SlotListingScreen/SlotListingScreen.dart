import 'package:flutter/material.dart';
import 'package:zodo_doctor/Screens/SlotListingScreen/Views/SlotListingAppBar.dart';

class SlotListingScreen extends StatelessWidget {
  const SlotListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SlotListingAppBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [

                
              ],
            ),
          ))
        ],
      ),
    );
  }
}
