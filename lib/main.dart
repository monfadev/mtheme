import 'package:flutter/material.dart';
import 'package:mtheme/core/config/config.dart';
import 'package:mtheme/core/providers/theme_provider.dart';
import 'package:mtheme/ui/constant/constant.dart';
import 'package:mtheme/ui/screens/auth/login_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()..initialized()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, val, _) => MaterialApp(
          title: titleName,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: val.themeMode,
          home: const LoginScreen(),
        ),
      ),
    );
  }
}
