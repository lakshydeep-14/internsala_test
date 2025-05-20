import 'package:internsala_test/core/extenstions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Screen',
          style: context.text.bodyLarge!.copyWith(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
