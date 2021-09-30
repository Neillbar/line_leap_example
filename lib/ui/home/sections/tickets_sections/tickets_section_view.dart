import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/secondary_button.dart';
import 'package:line_leap_example/ui/components/ticket_component.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class TicketsSectionView extends StatelessWidget {
  const TicketsSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: screenHeight(context) * 0.3),
      width: screenWidth(context) * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Event Tickets", style: gblBigTextStyle,),
          gblMassiveVerticalSpace,
          Wrap(
            runSpacing: 35,
             spacing: 35,
            children: [
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image1@4x.png',
                title: 'Diplo Presents: Higher Ground',
                fromPrice: 'From \$99',
                address: 'Champs Downtown•State College, PA',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Diplo',
              ),
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image2@4x.png',
                title: 'Trippie Redd - Neon Shark Live',
                fromPrice: 'From \$99',
                address: 'Rick’s American Cafe•Ann Arbor, MI',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Trippie Redd',
              ),
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image3@4x.png',
                title: 'Kacey Musgraves - oh, what a word: tour II',
                fromPrice: 'From \$99',
                address: 'Bridgestone Arena•Nashville, TN',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Kacey Musgraves, Maggie Rogers, Yola',
              ),
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image4@4x.png',
                title: 'Diplo Presents: Higher Ground',
                fromPrice: 'From \$99',
                address: 'Champs Downtown•State College, PA',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Diplo',
              ),
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image5@4x.png',
                title: 'Diplo Presents: Higher Ground',
                fromPrice: 'From \$99',
                address: 'Champs Downtown•State College, PA',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Diplo',
              ),
              TicketComponent(
                assetImage: 'assets/event_images/Event-Image6@4x.png',
                title: 'Diplo Presents: Higher Ground',
                fromPrice: 'From \$99',
                address: 'Champs Downtown•State College, PA',
                date: 'Fri, August 26, 6:00 PM  +2 more',
                shortTitle: 'Diplo',
              )
            ],
          ),
          gblMassiveVerticalSpace,
          Center(child: SecondaryButton(buttontitle: "See 6 More",size: Size(580, 50),)),
          gblMassiveVerticalSpace,
        ],
      ),
    );
  }
}
