import 'package:first/helpers/constants.dart';
import 'package:flutter/material.dart';

class WidgetSteps extends StatelessWidget {
  const WidgetSteps({
    Key? key,
    required this.numberSteps,
    required this.description,
    required this.timeStep,
  }) : super(key: key);

  final String numberSteps;
  final String description;
  final String timeStep;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398,
      height: 120,
      decoration: const BoxDecoration(
        color: colorGreyContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 17, right: 10),
        child: Row(
          children: [
            Text(
              numberSteps,
              style: const TextStyle(
                fontSize: 40,
                color: colorBorder,
              ),
            ),
            const SizedBox(width: 29),
            SizedBox(
              width: 245,
              child: Text(
                description,
                maxLines: 4,
                style: const TextStyle(
                  fontSize: 12,
                  color: colorGreyDescription,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: colorGreyDescription,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  timeStep,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: colorGreyDescription,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
