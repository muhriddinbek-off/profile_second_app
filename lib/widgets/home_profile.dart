import 'package:flutter/material.dart';
import 'package:profile_second_app/core/model.dart';
import 'package:profile_second_app/provider/modal_provider.dart';
import 'package:profile_second_app/widgets/avatar.dart';
import 'package:provider/provider.dart';

import 'button.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    UserModal? data = Provider.of<UserProvider>(context, listen: false).userModal;
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
            child: Image.asset(
          'images/1.png',
          width: MediaQuery.of(context).size.height * 0.45,
          fit: BoxFit.fill,
        )),
        Positioned(
          top: 170,
          child: Column(
            children: [
              const AvatarImg(),
              Text('${data!.firstName} ${data.lastName}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF242760))),
              const Text('Interior designer', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF544C4C))),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 27),
                  Text('${data.country}, Nigeria', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF544C4C))),
                ],
              ),
              const SizedBox(height: 26),
              Row(
                children: [
                  Column(
                    children: const [
                      Text('122', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF242760))),
                      Text('followers', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF544C4C))),
                    ],
                  ),
                  const SizedBox(width: 37),
                  Column(
                    children: const [
                      Text('67', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF242760))),
                      Text('following', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF544C4C))),
                    ],
                  ),
                  const SizedBox(width: 37),
                  Column(
                    children: const [
                      Text('37K', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF242760))),
                      Text('likes', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF544C4C))),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 17),
              Row(
                children: [
                  ButtonProfile(title: 'Edit profile', ontap: () {}),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                  ButtonProfile(title: 'Add friends', ontap: () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
