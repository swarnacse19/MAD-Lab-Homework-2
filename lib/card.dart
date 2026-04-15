import 'package:flutter/material.dart';

class CardBox extends StatefulWidget {
  final String number;
  final String type; 
  final String description; 

  const CardBox({
    super.key,
    required this.number,
    required this.type,
    required this.description,
  });

  @override
  State<CardBox> createState() => _CardBoxState();
}

class _CardBoxState extends State<CardBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 1, 52, 61),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(211, 255, 255, 255),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 64, 72, 76), 
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.phone, color: Colors.white70, size: 28),
          ),

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.min,
             children: [
               Text(widget.number, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
               SizedBox(height: 10),
               Text("${widget.type} \u2022 ${widget.description}", style: TextStyle(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w500)),
             ],
           ),
          Icon(Icons.edit, color: Colors.white70, size: 28),
          Icon(Icons.delete, color: Colors.white70, size: 28),
        ],
      ),
    );
  }
}