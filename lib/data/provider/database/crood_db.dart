import 'package:isar/isar.dart';

part 'crood_db.g.dart';

@collection
class CoordDB {
  Id id = Isar.autoIncrement;
  final double lat;
  final double lon;

  CoordDB({required this.lat, required this.lon});
}
