import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.texts,
    required this.suggestion,
    required this.source,
    this.title,
    this.description,
    this.surah,
    this.onTap,
  }) : super(key: key);
  final String suggestion;
  final String source;
  final String? title;
  final List<String> texts;
  final String? description;
  final Function()? onTap;
  final String? surah;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            if (title != null)
              Text(title!,
                  style: theme.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.bold)),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                        children: texts
                            .map(
                              (e) => TextSpan(
                                text: e,
                                style: theme.textTheme.headline6?.copyWith(
                                    fontFamily: 'Noto Sans Arabic',
                                    fontWeight: FontWeight.w500,
                                    height: 2.0),
                              ),
                            )
                            .toList()))),
            RichText(
              text: TextSpan(
                  text: description ?? '',
                  children: [
                    if (surah != null)
                      TextSpan(
                          text: surah,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: suggestion,
                        style: const TextStyle(fontWeight: FontWeight.bold))
                  ],
                  style: theme.textTheme.subtitle2),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(source),
            )
          ],
        ),
      ),
    );
  }
}
