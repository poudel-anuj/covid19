import 'package:covid19/components/reusable_card.dart';
import 'package:covid19/models/data.dart';
import 'package:flutter/material.dart';

class RecordTile extends StatelessWidget {
  final Welcome record;
  const RecordTile(this.record);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Corona Cases in Nepal',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 20,),

          ResuableCard(
            record: record,
            label: 'Positive cases',
            value: record.todayCases,
          ),
          ResuableCard(
            record: record,
            label: 'Recovered cases',
            value: record.todayRecovered,
          ),
          ResuableCard(
            record: record,
            label: ' Deaths',
            value: record.todayDeaths,
          ),
          ResuableCard(
            record: record,
            label: 'Total death',
            value: record.deaths,
          ),
          ResuableCard(
            record: record,
            label: 'Total cases',
            value: record.cases,
          ),
          // ResuableCard(
          //   record: record,
          //   label: 'toal tested cases',
          //   value: record.testedTotal,
          // ),
          // ResuableCard(
          //   record: record,
          //   label: 'updated at',
          //   value: record.updatedAt,
          // ),
        ],
      ),
    );
  }
}
