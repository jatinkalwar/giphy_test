import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomSearchBar extends StatefulWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const CustomSearchBar({
    super.key,
    this.hintText,
    this.onChanged,
    this.controller,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchBar> {
  Timer? _searchTimer;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.unfocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      child: CupertinoTextField(
        autocorrect: true,
        controller: widget.controller,
        focusNode: _focusNode,
        style: TextStyle(
          fontSize: 15,
    
          color: Colors.black,
        ),
        onTapOutside: (_) => _focusNode.unfocus(),
        placeholder: widget.hintText,

        placeholderStyle: TextStyle(
          fontSize: 15,
          color: Colors.black,
    
        ),
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        onChanged: (value) {
          _searchTimer?.cancel();
          _searchTimer = Timer(const Duration(milliseconds: 700), () {
            widget.onChanged?.call(value);
          });
        },
  
       
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
