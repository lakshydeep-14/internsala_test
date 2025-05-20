import 'package:internsala_test/core/extenstions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Screen',
          style: context.text.bodyLarge!.copyWith(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
