import 'package:flutter/material.dart';
import 'package:wild_life/extensions/extensions.dart';
import 'package:wild_life/themes/foundations/app_colors.dart';
import 'package:wild_life/themes/foundations/text_styles.dart';

class AppCard extends StatelessWidget {
  final String title;
  final String description;
  final String? image;
  final Color color;
  final bool isIconAvailable;
  final Function()? onTap;

  const AppCard({
    Key? key,
    required this.title,
    required this.description,
    this.image,
    required this.color,
    required this.isIconAvailable,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Card(
      color: color,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.secondary),
            borderRadius: BorderRadius.circular(15),
          ),
          width: screenSize.width * 1,
          height: screenSize.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: screenSize.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: bodyStyle.copyWith(
                              fontSize: 16,
                              color: AppColors.secondary,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(description).asDescription().colorRegular(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                isIconAvailable
                    ? InkWell(
                        onTap: onTap,
                        child: Image.asset(
                          image!,
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          )),
    );
  }
}
