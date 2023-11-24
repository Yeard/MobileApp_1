import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test extends StatefulWidget {
  final String name;

  const Test({super.key, required this.name});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          widget.name,
          style: isChecked
              ? const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SourceSansPro',
                  fontSize: 17.0,
                  decoration: TextDecoration.lineThrough)
              : const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SourceSansPro',
                  fontSize: 17.0,
                ),
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black,
              width: 2,
            )),
            child: isChecked
                ? const Center(
                    child: FaIcon(
                      FontAwesomeIcons.check,
                      color: Colors.lightBlueAccent,
                      size: 18,
                    ),
                  )
                : const Center(
                    child: FaIcon(
                      FontAwesomeIcons.galacticRepublic,
                      color: Colors.white,
                      size: 1,
                    ),
                  ),
          ),
        )

        // Checkbox(
        //   checkColor: Colors.lightBlueAccent,
        //   activeColor: Colors.white,
        //
        //
        //
        //
        //
        //   value: isChecked,
        //   onChanged: (bool? value) {
        //     setState(() {
        //       isChecked = value!;
        //     });
        //   },
        // ),

        //onTap: () {},
        );
  }
}
