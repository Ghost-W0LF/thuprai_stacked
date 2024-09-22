import 'package:flutter/material.dart';
import 'package:thuprai_stacked/ui/common/app_colors.dart';


class SectionSelector extends StatelessWidget {
  const SectionSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  debugPrint("Pressed$index");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kcPrimaryColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("Your Text"),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
