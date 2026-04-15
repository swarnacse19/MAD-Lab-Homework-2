import 'package:flutter/material.dart';
import 'card.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> contacts = [
      {
        "number": "+1 (555) 987-6543",
        "type": "Home",
        "description": "Added 2mo ago",
      },
      {
        "number": "+44 20 7123 4567",
        "type": "Work",
        "description": "Unverified",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Secondary Numbers",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 10),
        for (var item in contacts)
          CardBox(
            number: item["number"]!,
            type: item["type"]!,
            description: item["description"]!,
          ),
      ],
    );
  }
}
