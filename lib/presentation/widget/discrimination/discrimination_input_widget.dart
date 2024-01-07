import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:house_rabbit/presentation/widget/discrimination/discrimination_radio_square_button_widget.dart';
import 'package:provider/provider.dart';

import '../../view_model/discrimination_view_model.dart';

class DiscriminationInputWidget extends StatelessWidget {
  const DiscriminationInputWidget({super.key});

  @override
  Widget build(BuildContext context) {

    Widget discriminationRadioInput(String question) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              SizedBox(width: 10),
              DiscriminationRadioSquareButtonWidget(value: 0),
              SizedBox(width: 7),
              Text(
                "네",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 30),
              DiscriminationRadioSquareButtonWidget(value: 1),
              SizedBox(width: 7),
              Text(
                "아니오",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(width: 30),
              DiscriminationRadioSquareButtonWidget(value: 2),
              SizedBox(width: 7),
              Text(
                "모르겠어요",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 13),
        ],
      );
    }

    Widget discriminationTextInput(String question) {
      final controller = TextEditingController();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 40),
              Flexible(
                flex: 7,
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.right,
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Colors.black87, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('#1E319D'), width: 1.5),
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                      hintText: '입력해주세요',
                      hintStyle: TextStyle(color: Colors.grey[800])
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Flexible(
                flex:1,
                child: Text(
                  '만원',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 13),
        ],
      );
    }

    return Padding(
        padding: const EdgeInsets.only(left: 27.0, right: 27.0),
        child: Column(
          children: [
            discriminationRadioInput('1. 계약 과정에서 집주인과 대면해 신분증을 확인하고 계약서 상의 집주인과 동일 인물임을 확인하셨나요?'),
            discriminationRadioInput('2. 기존 세입자가 계약일 전에 이사를 완료했나요?'),
            discriminationRadioInput('3. 등기부등본의 <갑구>란에 소유자가 수탁자 OOO 신탁이라고 적혀있나요?'),
            discriminationRadioInput('4. 집주인이 체납 중인 세금이 존재하나요?'),
            discriminationRadioInput('5. 건축물대장에 위반건축물 표기가 되어있나요?'),
            discriminationRadioInput('6. 중개사가 공인중개사 자격증을 가지고 있나요?'),
            discriminationTextInput('7. 해당 매물의 시세는 얼마인가요?'),
            discriminationTextInput('8. 해당 매물의 근저당권은 얼마인가요?'),
            discriminationTextInput('9. 해당 매물의 선순위 보증금의 총합은 얼마인가요?'),
            discriminationTextInput('10. 해당 매물의 전세보증금액은 얼마인가요?'),
            discriminationRadioInput('11. 해당 매물의 전세보증금액이 최우선변제금액보다 높은가요?'),
          ],
        ));
  }
}
