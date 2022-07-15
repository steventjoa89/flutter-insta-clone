// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileLabelCount extends StatelessWidget {
  const ProfileLabelCount({
    Key? key,
    required this.label,
    required this.total,
  }) : super(key: key);

  final String label;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('${total}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Text('${label}',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
        ],
      ),
    );
  }
}
