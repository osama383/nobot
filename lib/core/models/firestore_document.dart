abstract class FirestoreDocument {
  final String id;

  const FirestoreDocument({required this.id});

  String get collectionPath => throw Error();

  Map<String, dynamic> toMap();
}



// @freezed
// @MappableClass(discriminatorKey: 'type')
// sealed class Product extends BaseProduct with _$Product {
//   @MappableClass(discriminatorValue: 'uco')
//   factory Product.uco() = Uco;
//   @MappableClass(discriminatorValue: 'grease')
//   factory Product.grease() = Grease;
// }
