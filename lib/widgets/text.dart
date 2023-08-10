import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Photos', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF242760))),
            SizedBox(width: MediaQuery.of(context).size.height * 0.15),
            const Text('Likes', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF9B9494))),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 2,
          width: MediaQuery.of(context).size.height * 0.37,
          color: const Color(0xFFCBC4C4),
        ),
      ],
    );
  }
}
