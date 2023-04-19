import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/style/style.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({this.input, this.controller});
  final input;
  final controller;

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  bool isShow = true;
  bool isClick = false;
  String? get _errorText {
    if (isClick) {
      final text = widget.controller.value.text;
      if (text.isEmpty) {
        return '${widget.input} tidak boleh kosong';
      }
      if (widget.input.toLowerCase() == 'nik') {
        if (text.length < 16) {
          return 'Harap masukan NIK yang sesuai';
        }
      }
      if (widget.input.toLowerCase() == 'password') {
        if (text.length < 6) {
          return 'Password minimal 6 karakter';
        }
      }
    }
    // return null if the text is valid
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: blue,
        controller: widget.controller,
        onTap: () => setState(() {
              isClick = true;
            }),
        keyboardType:
            widget.input.toLowerCase() == 'tlp' ? TextInputType.number : null,
        style: TextStyle(
          color: blue,
          fontFamily: 'Product Sans',
        ),
        obscureText: widget.input.toLowerCase() == 'password' && isShow,
        onChanged: (value) => setState(() {
              widget.controller.value;
            }),
        decoration: InputDecoration(
            errorText: _errorText,
            suffixIcon: widget.input.toLowerCase() == 'password'
                ? IconButton(
                    onPressed: () => setState(() {
                          isShow = !isShow;
                        }),
                    icon: Icon(
                      isShow
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      color: blue,
                    ))
                : null,
            alignLabelWithHint: true,
            labelStyle: TextStyle(color: blue),
            contentPadding: EdgeInsets.all(10),
            focusColor: blue,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: blue, width: 1),
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: blue, width: 2),
                borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: blue, width: 2),
                borderRadius: BorderRadius.circular(15)),
            labelText: widget.input));
  }
}
