import 'package:flutter/material.dart';
import 'package:line_leap_example/ui/components/footer_logo_group.dart';
import 'package:line_leap_example/ui/components/menu_list.dart';
import 'package:line_leap_example/ui/global/global_variables.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FooterTopSection(),
        gblSectionDeviderVerticalSpace,
        FooterBottomSection()
      ],
    );
  }
}

class FooterTopSection extends StatelessWidget {
  const FooterTopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isBigScreen(context) ? HorizontalItems() : VerticalItems();
  }
}

class FooterBottomSection extends StatelessWidget {
  const FooterBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: gblAccentBColor,
      child: Row(
        children: [
          SizedBox(
            width: 200,
          ),
          Text(
            '© LineLeap 2020',
            style: gblSmallTextStyle,
          ),
          Spacer(
            flex: 2,
          ),
          Text(
            'Privacy Policy',
            style: gblSmallTextStyle,
          ),
          Spacer(),
          Text(
            'Terms & Conditions',
            style: gblSmallTextStyle,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class HorizontalItems extends StatelessWidget {
  const HorizontalItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
        ),
        FootLogoGroup(),
        Spacer(
          flex: 2,
        ),
        MenuList(
          groupTitle: 'Company',
          menuItems: ['Contact Us', 'Brand Ambassadors', 'About Us'],
        ),
        Spacer(),
        MenuList(
          groupTitle: 'Customers',
          menuItems: [
            'Buy Event Tickets',
            'Buy Gift Cards',
            'Refunds',
            'Merch'
          ],
        ),
        Spacer(),
        MenuList(
          groupTitle: 'Venue Owners',
          menuItems: [
            'Learn More',
            'Platform',
            'Pricing',
            'Schedule Demo',
            'Dashboard Login'
          ],
        ),
        SizedBox(
          width: 150,
        ),
      ],
    );
  }
}

class VerticalItems extends StatelessWidget {
  const VerticalItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
        ),
        FootLogoGroup(),
        SizedBox(
          width: 50,
        ),
        MenuList(
          groupTitle: 'Company',
          menuItems: ['Contact Us', 'Brand Ambassadors', 'About Us'],
        ),
        SizedBox(
          width: 50,
        ),
        MenuList(
          groupTitle: 'Customers',
          menuItems: [
            'Buy Event Tickets',
            'Buy Gift Cards',
            'Refunds',
            'Merch'
          ],
        ),
        SizedBox(
          width: 50,
        ),
        MenuList(
          groupTitle: 'Venue Owners',
          menuItems: [
            'Learn More',
            'Platform',
            'Pricing',
            'Schedule Demo',
            'Dashboard Login'
          ],
        )
      ],
    );
  }
}
