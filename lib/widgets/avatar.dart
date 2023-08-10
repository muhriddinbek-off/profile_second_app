import 'package:flutter/material.dart';
import 'package:profile_second_app/core/model.dart';
import 'package:profile_second_app/provider/modal_provider.dart';
import 'package:provider/provider.dart';

class AvatarImg extends StatelessWidget {
  const AvatarImg({super.key});

  @override
  Widget build(BuildContext context) {
    UserModal? data = Provider.of<UserProvider>(context, listen: false).userModal;
    return Container(
      height: 154,
      width: 154,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 2, color: Colors.blueAccent),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network('${data!.img}', height: 150, width: 150, fit: BoxFit.fill),
      ),
    );
  }
}
