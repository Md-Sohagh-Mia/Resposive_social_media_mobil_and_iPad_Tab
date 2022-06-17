import 'package:flutter/material.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/desktop.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/pages/post_mobile.dart';
import 'package:resposive_social_media_mobil_and_desktop/responsive/res_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ResponsiveLayout(
        mobileBody: PostPage(),
        desktopBody: DesktopPage(),
      ),
    );
  }
}
