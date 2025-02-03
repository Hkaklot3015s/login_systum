import 'package:flutter/material.dart';
import 'package:login_systum/resources/Color_Resource.dart';

class GoIconButton extends StatelessWidget {
  String icon;
  GestureTapCallback onTap;

  GoIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorResource.WHITE,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Image.asset(
          icon,
          width: 30,
        ),
      ),
    );
  }
}
