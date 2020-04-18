import 'package:aqueduct/aqueduct.dart';

class TextCard extends ManagedObject<_TextCard> implements _TextCard {}

class _TextCard {
  @primaryKey
  int id;

  @Column()
  String front;

  @Column()
  String back;

  @Column(databaseType: ManagedPropertyType.integer)
  int level = 0;

  @Column(databaseType: ManagedPropertyType.datetime)
  DateTime nextOccurence;
}
