import 'package:internsala_test/core/extenstions.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 104,
      height: 34,
      decoration: BoxDecoration(
        color: AppColor.orange,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Color(0xffdf553240).withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.filter.svg(height: 24, width: 24),
            SizedBox(width: 5),
            Text(
              'Filter',
              style: context.text.bodyMedium!.copyWith(color: AppColor.white),
            ),
          ],
        ),
      ),
    );
  }
}
