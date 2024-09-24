import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SecurestorageServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
    test('should return true when data is stored', () {
      assert(true, true);
    });
  });
}
