import 'package:internsala_test/core/extenstions.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Portfolio Screen',
          style: context.text.bodyLarge!.copyWith(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
