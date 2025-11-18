import 'package:flutter/material.dart';

import 'package:bank_quantech/core/core.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final foregroundColor = switch (color.computeLuminance()) {
      > 0.5 => Colors.black,
      _ => Colors.white,
    };
    return Material(
      color: color,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: SizedBox(
                  height: double.infinity,
                  child: Assets.images.taieri.image(
                    color: foregroundColor,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox.square(
                  dimension: 35.0,
                  child: Transform.scale(
                    scale: 1.4,
                    child: Assets.images.visa.image(
                      color: foregroundColor,
                      height: 35.0,
                      width: 35.0,
                    ),
                  ),
                ),
                Text(
                  "Platinum",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: foregroundColor,
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                Text(
                  "•••• ••••",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: foregroundColor,
                    letterSpacing: 2.0,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
