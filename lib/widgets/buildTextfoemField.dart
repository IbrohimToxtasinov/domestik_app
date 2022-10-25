import 'package:domestika/utils/colors.dart';
import 'package:domestika/utils/styles.dart';
import 'package:flutter/material.dart';

class TextFormFild extends StatefulWidget {
  final String name;
  final String errorname;
  final String hintName;
  const TextFormFild({super.key, required this.name, required this.errorname, required this.hintName});

  @override
  State<TextFormFild> createState() => _TextFormFildState();
}

class _TextFormFildState extends State<TextFormFild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.name,
            style: MyStyles.segoeUI400
                .copyWith(color: MyColors.cFFFFFF, fontSize: 16)),
        const SizedBox(
          height: 1,
        ),
        SizedBox(
          width: 278,
          child: TextFormField(
            keyboardType: TextInputType.text,
            obscureText: false,
            validator: (value) {
            if(value == null || value.isEmpty) {
              return widget.errorname;
            }
            return null;
          },
            decoration: InputDecoration(
              errorStyle: const TextStyle(color: Colors.amber, fontSize: 14),
              hintText: widget.hintName,
              suffix: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: MyColors.cC4C4C4F,
                ),
                child: Center(
                    child: Text(
                  "✓",
                  style: MyStyles.segoeUI400.copyWith(
                      fontSize: 20,
                      color: MyColors.cFF3535,
                      fontWeight: FontWeight.w700),
                )),
              ),
              filled: true,
              fillColor: MyColors.cFFFFFF,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
        ),
      ],
    );
  }
}