part of 'main_page.dart';

class DesktopModeWidget extends ConsumerWidget {
  const DesktopModeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavigationRail(
              useIndicator: true,
              elevation: 10.0,
              indicatorColor: Colors.lightBlue[200],
              selectedIndex: ref.watch(navigationBarProvider),
              minWidth: sizeWidth * 0.07,
              labelType: NavigationRailLabelType.none,
              selectedIconTheme: theme.brightness == Brightness.light
                  ? theme.iconTheme
                  : theme.iconTheme.copyWith(color: Colors.black),
              onDestinationSelected: (value) {
                ref.read(navigationBarProvider.notifier).state = value;
              },
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.sunny),
                  label: Text('Day'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.dark_mode),
                  label: Text('Night'),
                ),
              ],
              trailing: Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: IconButton(
                      onPressed: () {
                        final isEnableDarkMode =
                            !ref.read(darkModeProvider.state).state;
                        ref.read(darkModeProvider.notifier).state =
                            isEnableDarkMode;
                      },
                      icon: theme.brightness == Brightness.dark
                          ? const Icon(Icons.lightbulb, color: Colors.white)
                          : const Icon(Icons.lightbulb_outline),
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(child: AutoRouter())
          ],
        ),
      ),
    );
  }
}
