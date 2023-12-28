import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../domain/model/house.dart';

class HouseItemWidget extends StatelessWidget {
  final House house;
  final Function? onDeleteTap;
  const HouseItemWidget({Key? key, required this.house, this.onDeleteTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 65,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500]!,
                  offset: const Offset(4,4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                )
              ]
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      house.name,
                      //maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 100),
                  GestureDetector(
                    onTap: () {
                      onDeleteTap?.call();
                    },
                    child: Icon(Icons.create_rounded, color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      onDeleteTap?.call();
                    },
                    child: Icon(Icons.delete, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
