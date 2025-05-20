import 'package:internsala_test/core/extenstions.dart';
import 'package:internsala_test/features/portfolio/components/filter.dart';
import 'package:internsala_test/features/portfolio/project.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Filter(),
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Text(
          'Portfolio',
          style: context.text.bodyLarge!.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.images.icRoundShoppingBag.svg(
                height: 24,
                width: 24,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.images.icBaselineNotifications.svg(
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicator: UnderlineTabIndicator(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 2.0, color: AppColor.orange),
            ),
            labelColor: AppColor.orange,
            labelStyle: context.text.headlineSmall!.copyWith(
              fontSize: 14.sp,
              color: AppColor.grey,
              fontWeight: FontWeight.w600,
            ),
            labelPadding: EdgeInsets.zero,
            unselectedLabelStyle: context.text.headlineSmall!.copyWith(
              color: AppColor.grey,
              fontSize: 14.sp,
            ),
            dividerColor: AppColor.borderColor,
            dividerHeight: 2,
            indicatorColor: AppColor.borderColor,
            unselectedLabelColor: AppColor.black,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: "Project"),
              Tab(text: "Saved"),
              Tab(text: "Shared"),
              Tab(text: "Achievement"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ProjectTab(),
                _title('Saved Tab'),
                _title('Shared Tab'),
                _title('Achievement Tab'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _title(String label) {
    return Center(
      child: Text(
        label,
        style: context.text.bodyLarge!.copyWith(
          color: AppColor.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
