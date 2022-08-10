import 'package:analogclock/screens/components/size_config.dart';
import 'package:analogclock/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'clock.dart';
import 'country_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Newport Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
            ),
          const TimeInHourAndMinute(),
          const Spacer(),
          const Clock(),
          const Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CountryYard(
                   country: "New York, USA",
                          timeZone: "+3 HRS | EST",
                          iconSrc: "assets/icons/Liberty.svg",
                          time: "9:20",
                          period: "PM",
                ), CountryYard(
                      country: "Sydney, AU",
                      timeZone: "+19 HRS | AEST",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    ),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}



