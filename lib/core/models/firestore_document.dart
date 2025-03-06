abstract class FirestoreDocument {
  final String id;

  FirestoreDocument({required this.id});
}



// @freezed
// @MappableClass(discriminatorKey: 'type')
// sealed class Product extends BaseProduct with _$Product {
//   @MappableClass(discriminatorValue: 'uco')
//   factory Product.uco() = Uco;
//   @MappableClass(discriminatorValue: 'grease')
//   factory Product.grease() = Grease;
// }
