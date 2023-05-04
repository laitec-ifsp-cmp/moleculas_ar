import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NoFormatLinkWidget extends StatelessWidget {
  final String url;
  final LaunchMode launchMode;
  final Widget child;

  const NoFormatLinkWidget({
    Key? key,
    required this.url,
    this.launchMode = LaunchMode.externalApplication,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: launchMode);
        }
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: child,
    );
  }
}
