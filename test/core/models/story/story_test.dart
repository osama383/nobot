import 'package:flutter_test/flutter_test.dart';
import 'package:nobot/core/models/customer/customer.dart';
import 'package:nobot/core/models/product/product.dart';
import 'package:nobot/core/models/product/service_status.dart';
import 'package:nobot/core/models/story/story.dart';

void main() {
  test('', () {
    final customer = Customer(
      id: 'someId',
      name: 'big foods',
      products: {
        Uco(
          status: ServiceStatus.active,
          dueDate: DateTime.now(),
          lastService: DateTime.now(),
        ),
        Grease(
          status: ServiceStatus.inactive,
          dueDate: DateTime.now(),
          lastService: DateTime.now(),
        ),
      },
    );
  });
}
