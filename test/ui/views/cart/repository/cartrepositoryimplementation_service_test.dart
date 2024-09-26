import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CartrepositoryimplementationServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}