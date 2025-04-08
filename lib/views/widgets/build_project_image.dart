import 'package:flutter/material.dart';

Widget buildProjectImage(String imageUrl, {bool isSmall = false}) {
    return Container(
      width: isSmall ? double.infinity : 500,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [ 
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }