import 'package:flutter/material.dart';

part 'create_profile_screen_mixin.dart';
part 'layouts/create_profile_details_layout.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen>
    with CreateProfileScreenMixin {
  @override
  Widget build(BuildContext context) {
    return const CreateProfileDetailsLayout();
  }
}
