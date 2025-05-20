import 'package:internsala_test/core/extenstions.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Input Screen',
          style: context.text.bodyLarge!.copyWith(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
