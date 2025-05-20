import 'package:internsala_test/core/extenstions.dart';

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
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              children: [Container(), Container(), Container(), Container()],
            ),
          ),
        ],
      ),
    );
  }
}
