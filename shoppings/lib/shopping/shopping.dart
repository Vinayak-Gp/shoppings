import 'package:flutter/material.dart';

class shoppings extends StatelessWidget {
  const shoppings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'shoppings',
            style: TextStyle(
                color: Colors.blue,
                 fontSize: 30,
                  fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              decoration:
               BoxDecoration(
                BoxDecoration(
                  color:Colors.blue
                ),

              ),
            )
          ],
          ),
          
          
          
          
    );
  }
}
