part of '../create_profile_screen.dart';

class CreateProfileDetailsLayout extends StatelessWidget {
  const CreateProfileDetailsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Skip'),
          ),
        ],
      ),
    );
  }
}
