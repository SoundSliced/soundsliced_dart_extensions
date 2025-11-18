import 'package:flutter_test/flutter_test.dart';
import 'package:soundsliced_dart_extensions/soundsliced_dart_extensions.dart';

void main() {
  group('Duration Extensions', () {
    test('convertToEasyReadString formats duration correctly', () {
      expect(
          Duration(hours: 2, minutes: 30).convertToEasyReadString(), '2:30:00');
      expect(Duration(minutes: 45).convertToEasyReadString(), '45:00');
      expect(Duration(seconds: 30).convertToEasyReadString(), '30 sec');
    });

    test('convertToDateTime converts duration to DateTime', () {
      final duration = Duration(hours: 2, minutes: 30);
      final dateTime = duration.convertToDateTime();
      expect(dateTime.hour, 2);
      expect(dateTime.minute, 30);
    });
  });

  group('EdgeInsets Extensions', () {
    test('tuple extensions create EdgeInsets correctly', () {
      final padding1 = (10, 20).leftPad.rightPad;
      expect(padding1.left, 10);
      expect(padding1.right, 20);

      final padding2 = (5, 10, 15).leftPad.topPad.rightPad;
      expect(padding2.left, 5);
      expect(padding2.top, 10);
      expect(padding2.right, 15);
    });
  });

  group('Basic Library Import', () {
    test('library can be imported without errors', () {
      // This test simply verifies the library imports successfully
      expect(true, true);
    });
  });
}
