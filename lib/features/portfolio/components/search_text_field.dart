import 'package:internsala_test/core/extenstions.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.controller,
    this.onChanged,
    required this.focusNode,
  });
  final FocusNode focusNode;
  final TextEditingController? controller;

  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 20),
      child: TextFormField(
        onChanged: onChanged,
        focusNode: focusNode,
        controller: controller,
        textInputAction: TextInputAction.search,
        style: context.text.bodyMedium,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: AppColor.white,
          hintText: 'Search a project',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.borderColor, width: 1),
          ),
          hintStyle: context.text.bodyMedium!.copyWith(
            color: AppColor.greyText,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.borderColor, width: 1),
          ),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.borderColor, width: 1),
          ),
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 36,
            minWidth: 40,
          ),
          suffixIcon: Focus(
            canRequestFocus: false,
            descendantsAreFocusable: false,
            child: Container(
              height: 28,
              width: 28,
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: AppColor.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Assets.images.icBaselineSearch.svg(
                  height: 16,
                  width: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
