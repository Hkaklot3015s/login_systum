import 'package:flutter/material.dart';
import 'package:login_systum/resources/Color_Resource.dart';

class GoButton extends StatelessWidget {
  String title;
  GestureTapCallback onTap;

  GoButton({super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontFamily: "SourceSans3",
            color: ColorResource.WHITE,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
