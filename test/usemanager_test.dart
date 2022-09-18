import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp((() {}));
  test('user calculate test', (() {
    final users = [
      GenericUser('emk', '10', 20),
      GenericUser('emk', '10', 20),
    ];
    final result = UserManagement(AdminUser('emk', '1', 300, 1))
        .calculateMoney(users);
    expect(result, 40);
  }));
}
