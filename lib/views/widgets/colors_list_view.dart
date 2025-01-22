import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffA1E8AF),
    Color(0xff94C595),
    Color(0xff747C92),
    Color(0xff372772),
    Color(0xff3A2449),
    Color(0xff2F1847),
    Color(0xff624763),
    Color(0xffC62E65),
    Color(0xffF9B3D1),
    Color(0xffD63AF9),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38 * 2 + 18,
      padding: const EdgeInsets.only(left: 8, right: 8, top: 18),
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
