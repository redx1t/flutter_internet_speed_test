import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //MethodChannelFlutterInternetSpeedTest platform = MethodChannelFlutterInternetSpeedTest();
  const MethodChannel channel =
      MethodChannel('flutter_internet_speed_test_pro');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  /*test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });*/
}
