import 'package:flutter/material.dart';
import 'package:profile_second_app/core/model.dart';
import 'package:profile_second_app/provider/modal_provider.dart';
import 'package:profile_second_app/widgets/avatar.dart';
import 'package:profile_second_app/widgets/box.dart';
import 'package:profile_second_app/widgets/change.dart';
import 'package:profile_second_app/widgets/title.dart';
import 'package:provider/provider.dart';

class BodyPages extends StatelessWidget {
  const BodyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<UserProvider>(context, listen: false).userInfo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            UserModal? data = Provider.of<UserProvider>(context, listen: false).userModal;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      AvatarImg(),
                    ],
                  ),
                  const TitlePage(textName: 'Name'),
                  BoxContainer(title: '${data!.firstName} ${data.lastName}'),
                  const TitlePage(textName: 'Email'),
                  BoxContainer(title: '${data!.email}'),
                  const TitlePage(textName: 'Password'),
                  BoxContainer(title: '${data!.password}'),
                  const TitlePage(textName: 'Date of Birth'),
                  BoxContainer(title: '${data!.data}'),
                  const TitlePage(textName: 'Country/Region'),
                  BoxContainer(title: '${data!.country}'),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ChangeButton(),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text('Error', style: TextStyle(fontSize: 30)));
          }
        });
  }
}
