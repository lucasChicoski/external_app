import 'package:device_apps/device_apps.dart';
import 'package:external_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/**
 * Attention:
 * the lib device_apps need to be configured in the AndroidManifest.xml.
 *  <manifest...>
      <uses-permission android:name="android.permission.QUERY_ALL_PACKAGES" />
    </manifest>
 */

class ExternalApp extends StatelessWidget {
  const ExternalApp({Key? key}) : super(key: key);

  //the function that will be call in the button
  void openWahtsApp() async {
    try {
      //verifying if your device contains the app.
      bool isAppInstalled = await DeviceApps.isAppInstalled('com.whatsapp');
      if (isAppInstalled) {
        //if your device contain the app, will be oppen
        DeviceApps.openApp('com.whatsapp');
      } else {
        //otherwise, you will be redirectioned to appstore
        await launch(
            'https://play.google.com/store/apps/details?id=com.whatsapp');
      }
    } catch (e) {
      rethrow;
    }
  }

  void openPicPay() async {
    try {
      bool isAppInstalled = await DeviceApps.isAppInstalled('com.picpay');
      if (isAppInstalled) {
        DeviceApps.openApp('com.picpay');
      } else {
        await launch(
            'https://play.google.com/store/apps/details?id=com.picpay');
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWidget(
            onPressed: openWahtsApp,
            image: 'assets/whatsapp.png',
          ),
          ButtonWidget(
            onPressed: openPicPay,
            image: 'assets/picpay-logo.png',
            width: 100,
          ),
        ],
      ),
    );
  }
}
