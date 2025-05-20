import 'package:internsala_test/core/extenstions.dart';
import 'package:internsala_test/features/home/home.dart';
import 'package:internsala_test/features/input/input.dart';
import 'package:internsala_test/features/portfolio/portfolio.dart';
import 'package:internsala_test/features/profile/profile.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PersistentTabController controller = PersistentTabController(initialIndex: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PersistentTabView(
        controller: controller,

        tabs: [
          PersistentTabConfig(
            screen: HomeScreen(),
            item: _itemConfig(icon: Assets.images.homeSvg, label: "Home"),
          ),
          PersistentTabConfig(
            screen: PortfolioScreen(),
            item: _itemConfig(
              icon: Assets.images.portfoliaSvg,
              label: "Portfolio",
            ),
          ),
          PersistentTabConfig(
            screen: InputScreen(),
            item: _itemConfig(icon: Assets.images.inputSvg, label: "Input"),
          ),
          PersistentTabConfig(
            screen: ProfileScreen(),
            item: _itemConfig(icon: Assets.images.profileSvg, label: "Profile"),
          ),
        ],
        navBarBuilder: (navBarConfig) {
          final tabs = navBarConfig.items;
          final selectedIndex = navBarConfig.selectedIndex;
          return Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: [
                BoxShadow(
                  color: AppColor.shadowColor.withOpacity(0.1),
                  offset: Offset(0, -3),
                  spreadRadius: 0,
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(tabs.length, (index) {
                final isSelected = index == selectedIndex;
                final item = tabs[index];
                return GestureDetector(
                  onTap: () => navBarConfig.onItemSelected(index),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 2,
                        width: isSelected ? 24 : 0,
                        decoration: BoxDecoration(
                          color:
                              isSelected ? AppColor.orange : Colors.transparent,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: 4),
                      isSelected ? item.icon : item.inactiveIcon,
                      Text(item.title ?? '', style: context.text.bodySmall),
                    ],
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }

  ItemConfig _itemConfig({required SvgGenImage icon, required String label}) {
    return ItemConfig(
      textStyle: context.text.bodySmall!.copyWith(fontWeight: FontWeight.w400),
      activeForegroundColor: AppColor.orange,
      icon: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: icon.svg(color: AppColor.orange, height: 24, width: 24),
      ),
      inactiveIcon: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: icon.svg(height: 24, width: 24, color: AppColor.inactiveIcon),
      ),
      title: label,
    );
  }
}
