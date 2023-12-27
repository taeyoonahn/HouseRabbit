import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchHouseWidget extends StatelessWidget {
  const SearchHouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        hintText: "등록 매물 검색",
        hintStyle: TextStyle(color: HexColor('#1E319D')),
        prefixIcon: Icon(
          Icons.search_outlined,
          color: HexColor('#1E319D'),
        ),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white70),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: HexColor('#1E319D')),
        ),
      ),
    );
  }
}