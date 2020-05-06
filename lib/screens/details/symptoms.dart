import 'package:covidapp/components/custom_header.dart';
import 'package:covidapp/components/list-item.dart';
import 'package:covidapp/components/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsSymptoms extends StatefulWidget {
  @override
  _DetailsRequestState createState() => _DetailsRequestState();
}

class _DetailsRequestState extends State<DetailsSymptoms> {
  List<int> _selected;
  final List<String> _symptoms = [
    'Moderate to severe difficulty breathing',
    'Coughing up blood',
    'Signs of low BP (feeling cold, too weak to stand)',
    'None of the above'
  ];

  @override
  void initState() {
    this._selected = [];
    super.initState();
  }

  void handleSelect(int selected) {
    if (!this._selected.contains(selected)) {
      this.setState(() {
        this._selected.add(selected);
      });
    } else {
      this.setState(() {
        this._selected.remove(selected);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomHeader(),
              Container(
                width: screen.width,
                margin: const EdgeInsets.only(
                  top: 19.0,
                  bottom: 40.0,
                ),
                child: TextCard(
                  text: 'COVID-19 Test Request',
                ),
              ),
              Container(
                child: Text(
                  'Do you have any of the following symptoms?',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Color(0xFF2F2F2F),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30.0,
                  ),
                  width: screen.width,
                  child: ListView.builder(
                    itemCount: this._symptoms.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => handleSelect(index),
                        child: ListItem(
                          text: this._symptoms[index],
                          checked: this._selected.contains(index),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 56.0,
        height: 61.0,
        margin: EdgeInsets.only(bottom: 10.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF3EB16E),
          child: SvgPicture.asset('assets/icons/check.svg'),
          onPressed: () {
            Navigator.pushNamed(context, 'details-past-question');
          },
        ),
      ),
    );
  }
}
