import 'package:flutter/widgets.dart';

class TestNotification extends Notification{
  TestNotification(
      this.sendInfos,
);

  final String sendInfos;
}