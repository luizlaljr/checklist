import 'package:checklist/models/item.dart';

List<Item> loadItems(List<List<String>> lista) {
  List<Item> items = List<Item>();


  lista.forEach((i) => items.add(new Item(title: i[0], subtitle: i[1], done: false)));

  return items;
}
