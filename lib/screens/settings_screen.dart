import 'package:covid19/NavDrawer.dart';
import 'package:covid19/components/number_selection_card.dart';
import 'package:covid19/components/time_slider_card.dart';
import 'package:covid19/screens/breathe_screen.dart';
import 'package:covid19/state/settings.dart';
import 'package:covid19/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'SettingsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        iconTheme: new IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Breathing',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 48.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NumberSelectionCard(
                value: Provider.of<Settings>(context).numRounds,
                title: 'Rounds',
                onChanged: (newValue) {
                  Provider.of<Settings>(context).numRounds = newValue;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              NumberSelectionCard(
                value: Provider.of<Settings>(context).breathsPerRound,
                title: 'Breaths',
                onChanged: (newValue) {
                  Provider.of<Settings>(context).breathsPerRound = newValue;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Consumer<Settings>(
                builder: (context, settings, child) => TimeSliderCard(
                  value: settings.holdTime,
                  onChanged: (newValue) {
                    if (newValue.ceil() != settings.holdTime) {
                      settings.holdTime = newValue.ceil();
                    }
                  },
                  title: 'Hold Time',
                  min: 5,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              MaterialButton(
                minWidth: double.infinity,
                color: Colors.lightBlueAccent,
                height: 50.0,
                onPressed: () {
                  Navigator.pushNamed(context, BreatheScreen.id);
                },
                child: Text(
                  'GO',
                  style: kTitleTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
