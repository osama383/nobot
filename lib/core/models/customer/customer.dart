import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/firestore_document.dart';
import 'package:nobot/core/models/product/service_status.dart';
import 'package:nobot/core/models/utc.dart';
import 'package:nobot/core/util/extensions/extensions.dart';

import '../address/address.dart';
import '../product/product.dart';
import '../value_object/value_object.dart';

part 'customer.mapper.dart';

@MappableClass()
class Customer extends FirestoreDocument with CustomerMappable {
  final VString name;
  final Address address;
  final Set<Product> products;
  final String locationNotes;
  final Utc createdDate;

  Customer({
    required super.id,
    required this.name,
    required this.address,
    required this.createdDate,
    required this.locationNotes,
    required this.products,
  });

  Product? product(Products type) {
    return products.toList().firstWhereOrNull((e) => e.type == type);
  }

  Customer activateProduct(Products type) {
    final existingProduct = product(type);
    if (existingProduct != null) {
      return copyWith(
        products: products
          ..remove(existingProduct)
          ..add(existingProduct.copyWith(status: ServiceStatus.active)),
      );
    }

    final initializedProduct = switch (type) {
      Products.uco => Uco.initialize(this),
      Products.grease => Grease.initialize(this),
    };

    return copyWith(products: products..add(initializedProduct));
  }

  Grease get grease => products.whereType<Grease>().first;
  Uco get uco => products.whereType<Uco>().first;
}
