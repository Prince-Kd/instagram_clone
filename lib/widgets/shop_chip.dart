import 'package:flutter/material.dart';

class ShopChip extends StatelessWidget {
  final String chipText;
  const ShopChip({Key? key, required this.chipText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: GestureDetector(
        onTap: (){},
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Text(chipText, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
