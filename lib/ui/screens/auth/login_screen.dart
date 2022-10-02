import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mtheme/core/config/config.dart';
import 'package:mtheme/core/providers/theme_provider.dart';
import 'package:mtheme/ui/constant/constant.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static DateTime now = DateTime.now();
  String formattedTime = DateFormat.jm().format(now);
  String formattedDate = DateFormat('MMM d, yyyy | EEEEEE').format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(bghome, width: 95),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _topContent(),
                    _centerContent(),
                    _bottomContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        Row(
          children: [
            Text(
              formattedTime,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(width: 30),
            SvgPicture.asset(cloud),
            const SizedBox(width: 8),
            Text(
              '34° C',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          formattedDate,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(logo, height: 50),
          const SizedBox(height: 18),
          Text(
            'mTheme',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 18),
          Text(
            'Aesthetic is concerned with beauty or the appreciation of beauty. \n\n (Theme)',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Consumer<ThemeProvider>(
      builder: (context, value, _) => Column(
        children: [
          MaterialButton(
            elevation: 0,
            color: primaryColor,
            height: 50,
            minWidth: 200,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              value.changeTheme('dark');
            },
            child: Text(
              'Sign in',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              value.changeTheme('light');
            },
            child: Text(
              'Create an Account',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          )
        ],
      ),
    );
  }
}
