import 'package:objectbox/objectbox.dart';
import 'package:ol10/entity/item.dart';

@Entity()
class User {
  int id;
  String name;

  @Backlink('owner')
  ToMany<Item> givenItems = ToMany<Item>();

  @Backlink('recipient')
  ToMany<Item> receivedItems = ToMany<Item>();

  User({this.id = 0, required this.name});
}
