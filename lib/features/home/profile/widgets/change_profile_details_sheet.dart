import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wild_life/constants/constants.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/features/home/profile/widgets/profile_change_success_sheet.dart';
import 'package:wild_life/features/shared/buttons/button.dart';
import 'package:wild_life/features/shared/text_field/app_text_field.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';

class ChangeProfileDetailsSheet extends StatefulWidget {
  final String title;
  final String labelText;

  const ChangeProfileDetailsSheet({
    super.key,
    required this.title,
    required this.labelText,
  });

  @override
  State<ChangeProfileDetailsSheet> createState() =>
      _ChangeProfileDetailsSheetState();
}

TextEditingController? _editController;

class _ChangeProfileDetailsSheetState extends State<ChangeProfileDetailsSheet> {
  @override
  void initState() {
    super.initState();
    _editController = TextEditingController();
    _editController!.text = widget.labelText;
  }

  late final screenSize = context.screenSize;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: screenSize.height * 0.6,
      padding: MediaQuery.of(context).viewInsets,
      duration: StaticDurations.bottomSheetLoading,
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title).asScreenTitle().colorRegular(),
              const SizedBox(
                height: 50,
              ),
              AppTextField(
                labelText: widget.title,
                controller: _editController,
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton.primary(
                    label: 'Save',
                    onPressed: () {
                      context.pop();
                      showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (_) {
                            return const ProfileChangeSuccessSheet();
                          });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton.outlined(
                    label: 'Cancel',
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
