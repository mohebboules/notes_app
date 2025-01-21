import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 50),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 59, 27, 114),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: const Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Spacer(),
          CustomSearchIcon()
        ],
      ),
    );
  }
}
