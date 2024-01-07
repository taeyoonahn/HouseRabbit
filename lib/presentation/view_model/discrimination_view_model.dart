import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:house_rabbit/presentation/view/discrimination_view/discrimination_view_input/discrimination_input_view.dart';
import 'package:house_rabbit/presentation/widget/discrimination/discrimination_input_widget.dart';
import '../../domain/model/house.dart';
import '../view/discrimination_view/discrimination_view_result/discrimination_result_view.dart';
import '../widget/discrimination/discrimination_input_submit_button_widget.dart';

class DiscriminationViewModel extends ChangeNotifier {
  late House _house;
  House get house => _house;
  int? _radioValue;
  int? get radioValue => _radioValue;
  ScrollController scrollController = ScrollController();

  void discriminatingNavigate(BuildContext context, House house) {
    _house = house;
    if (house.isDiscriminated) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => const DiscriminationResultView()));
    } else {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => const DiscriminationInputView()));
    }
  }

  Widget discriminationInputIntro() {
    return Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            _house.name,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800
                            )
                        ),
                        const Row(
                          children: [
                            Text(
                                '해당 매물의 ',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800
                                )
                            ),
                            Text(
                                '위험 요소',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w800
                                )
                            ),
                            Text(
                                '를',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w800
                                )
                            ),
                          ],
                        ),
                        const Text(
                            '꼼꼼하게 점검해볼까요?',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Divider(
                  thickness: 1.6,
                  color: HexColor('#1E319D'),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
            ],
          ),
    );
  }

  Widget buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget discriminationInput(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              discriminationInputIntro(),
              const DiscriminationInputWidget(),
              const SizedBox(height: 30),
              const DiscriminationInputSubmitButton(),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  void setRadioValue(int value) {
    _radioValue = value;
    notifyListeners();
  }

  showDiscriminationReport() {
    return Padding(
        padding: const EdgeInsets.only(left: 27.0, right: 27.0),
        child: Column(
          children: [],
        )
    );
  }

  showHouseColor() {
    Color rankColor = Colors.blue;

    switch(house.rank){
      case 'A':
        rankColor = Colors.indigo;
        break;

      case 'B':
        rankColor = Colors.green;
        break;

      case 'C':
        rankColor = Colors.yellow;
        break;

      case 'D':
        rankColor = Colors.red;
        break;
    }

    return rankColor;
  }

}


