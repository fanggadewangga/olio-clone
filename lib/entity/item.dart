import 'package:objectbox/objectbox.dart';
import 'package:ol10/entity/user.dart';

@Entity()
class Item {
  int id;
  String name;
  bool isFood;
  bool isPickedUp;
  String description;
  String pickUpTime;
  String location;
  String imageUrl;

  ToOne<User> owner = ToOne<User>();
  ToOne<User> recipient = ToOne<User>();

  Item(
      {this.id = 0,
      required this.name,
      required this.isFood,
      this.isPickedUp = false,
      required this.description,
      required this.pickUpTime,
      required this.location,
      required this.imageUrl});
}
