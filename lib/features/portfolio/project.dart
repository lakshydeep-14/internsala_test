import 'package:internsala_test/core/extenstions.dart';
import 'package:internsala_test/features/portfolio/components/project_card.dart';
import 'package:internsala_test/features/portfolio/components/search_text_field.dart';
import 'package:internsala_test/features/portfolio/model/project_item_model.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  List<ProjectItemModel> searchResult = [];
  FocusNode searchFocus = FocusNode();
  TextEditingController textEditingController = TextEditingController();
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showLoadingDialog();
  }

  showLoadingDialog() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 1)).then(
      (_) => setState(() {
        isLoading = false;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        context.hideKeyboard();
      },
      child:
          isLoading
              ? Center(child: CircularProgressIndicator(color: AppColor.orange))
              : Column(
                children: [
                  SearchTextField(
                    controller: textEditingController,
                    onChanged: (v) {
                      setState(() {
                        searchResult.clear();
                      });
                      var res =
                          projectItemList
                              .where((e) => e.title.toLowerCase().contains(v))
                              .toList();

                      setState(() {
                        searchResult.addAll(res);
                      });
                    },
                    focusNode: searchFocus,
                  ),
                  Expanded(
                    child:
                        searchResult.isEmpty && searchFocus.hasFocus
                            ? Center(
                              child: Text(
                                textEditingController.text.isEmpty
                                    ? 'Enter keyword to search'
                                    : 'No result found.',
                                style: context.text.bodyMedium!.copyWith(
                                  color: AppColor.greyText,
                                ),
                              ),
                            )
                            : searchResult.isEmpty &&
                                textEditingController.text.isNotEmpty
                            ? Center(
                              child: Text(
                                'No result found.',
                                style: context.text.bodyMedium!.copyWith(
                                  color: AppColor.greyText,
                                ),
                              ),
                            )
                            : searchResult.isNotEmpty
                            ? ListView.builder(
                              padding: EdgeInsets.only(bottom: 20),
                              itemCount: searchResult.length,
                              itemBuilder: (context, i) {
                                return ProjectCard(
                                  projectItem: searchResult[i],
                                );
                              },
                            )
                            : ListView.builder(
                              padding: EdgeInsets.only(bottom: 20),
                              itemCount: projectItemList.length,
                              itemBuilder: (context, i) {
                                return ProjectCard(
                                  projectItem: projectItemList[i],
                                );
                              },
                            ),
                  ),
                ],
              ),
    );
  }
}
