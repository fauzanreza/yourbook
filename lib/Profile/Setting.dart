import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import '../main.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // User card
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.notifications_on,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Notifikasi',
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    subtitle: '',
                    trailing: Switch.adaptive(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.black,
                    ),
                    title: 'Tema',
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    subtitle: "Dark Mode",
                    trailing: Switch.adaptive(
                      value: false,
                      onChanged: (bool _isLight) {
                        currentTheme.switchTheme();
                      },
                    ),
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.language_outlined,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.blue,
                    ),
                    title: 'Bahasa',
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    subtitle: "Bahasa Indonesia",
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.message_outlined,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.yellow.shade900,
                    ),
                    title: 'Kirim Feedback',
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    subtitle: ' ',
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'Tentang Aplikasi',
                    titleStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    subtitle: "Learn more about Yourbook",
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
