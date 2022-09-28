import 'package:dqu/controller/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/card_item.dart';

class NightPage extends ConsumerWidget {
  const NightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dzikrListProvider);
    final theme = Theme.of(context);

    return ListView.separated(
      itemCount: state.length,
      separatorBuilder: (context, index) => const Divider(thickness: 1.0),
      itemBuilder: (context, index) => CardItem(
        title: state[index].title,
        source: state[index].source,
        suggestion: state[index].suggestion,
        texts: state[index].textsDzikir,
        description: state[index].description,
        surah: state[index].surah,
        onTap: state[index].faedah == null
            ? null
            : () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: false,
                  elevation: 5.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                  ),
                  builder: (_) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            'Faedah',
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        if (state[index].faedah != null)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 16.0),
                            child: Text(state[index].faedah!,
                                style: theme.textTheme.subtitle2),
                          ),
                      ],
                    );
                  },
                );
              },
      ),
    );
  }
}
