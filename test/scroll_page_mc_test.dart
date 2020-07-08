import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:scroll_page_mc/scroll_page_mc.dart';

void main() {
  const MethodChannel channel = MethodChannel('scroll_page_mc');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await ScrollPageMc.platformVersion, '42');
  });
}
