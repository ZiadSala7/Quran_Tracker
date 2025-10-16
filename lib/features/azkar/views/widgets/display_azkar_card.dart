import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class DisplayAzkarCard extends StatefulWidget {
  final String text;
  const DisplayAzkarCard({super.key, required this.text});

  @override
  State<DisplayAzkarCard> createState() => _DisplayAzkarCardState();
}

class _DisplayAzkarCardState extends State<DisplayAzkarCard> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isActive
          ? AppColors.green
          : const Color.fromARGB(175, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.black : AppColors.grey,
              ),
            ),
            Align(
              alignment: AlignmentGeometry.bottomLeft,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isActive = true;
                      });
                    },
                    icon: Icon(
                      Icons.check,
                      color: isActive ? Colors.black : AppColors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isActive = false;
                      });
                    },
                    icon: Icon(Icons.restart_alt, color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
