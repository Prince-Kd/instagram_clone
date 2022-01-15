import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String stat;
  final String val;
  const StatsCard({Key? key, required this.stat, required this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(val, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
        Text(stat, style: const TextStyle(fontSize: 17,),),
      ],
    );
  }
}
