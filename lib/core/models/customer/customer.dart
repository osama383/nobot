import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/firestore_document.dart';

import '../product/product.dart';
import '../value_object/value_object.dart';

part 'customer.mapper.dart';

@MappableClass()
class Customer extends FirestoreDocument with CustomerMappable {
  final VString name;
  final Set<Product> products;

  Customer({
    required super.id,
    required this.name,
    required this.products,
  });
}
