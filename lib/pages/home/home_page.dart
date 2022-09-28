import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.sunny, color: Colors.yellow[700], size: 50.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.dark_mode_rounded, size: 50.0),
              )
            ],
          ),
          Text('DZIKIR', style: theme.textTheme.headline1),
          RichText(
              text: TextSpan(
            children: [
              TextSpan(text: 'Pagi', style: theme.textTheme.headline3),
              TextSpan(text: ' & ', style: theme.textTheme.headline3),
              TextSpan(text: 'Petang', style: theme.textTheme.headline3)
            ],
          ))
        ],
      ),
    );
  }
}
