import 'package:aqueduct/aqueduct.dart';

class TextCard extends ManagedObject<_TextCard> implements _TextCard {}

class _TextCard {
  @primaryKey
  int id;

  @Column()
  String front;

  @Column()
  String back;

  @Column()
  int level = 0;

  @Column()
  DateTime nextOccurence;
}
