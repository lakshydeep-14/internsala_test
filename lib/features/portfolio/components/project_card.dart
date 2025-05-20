import 'package:advanced_rich_text/advanced_rich_text.dart';
import 'package:internsala_test/core/extenstions.dart';
import 'package:internsala_test/features/portfolio/model/project_item_model.dart';

class ProjectCard extends StatefulWidget {
  final ProjectItemModel projectItem;

  const ProjectCard({super.key, required this.projectItem});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(top: 15),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColor.borderColor, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: widget.projectItem.image.image(
              width: context.deviceWidth * 0.3,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.projectItem.title,
                    style: context.text.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.projectItem.label1} ',
                            style: context.text.bodyMedium!.copyWith(
                              fontSize: 10.sp,
                            ),
                          ),
                          AdvanceRichText(
                            initialText: widget.projectItem.label2Sub1,
                            initialTextStyle: context.text.bodyMedium!.copyWith(
                              fontSize: 10.sp,
                              color: AppColor.greyText,
                            ),
                            secondaryTextStyle: context.text.bodyMedium!
                                .copyWith(
                                  fontSize: 10.sp,
                                  color: AppColor.greyText,
                                  fontWeight: FontWeight.w600,
                                ),
                            textList: [
                              TextSpanList(text: widget.projectItem.label2Sub2),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffF39519), Color(0xffFFCD67)],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'A',
                            style: context.text.bodyMedium!.copyWith(
                              color: AppColor.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
