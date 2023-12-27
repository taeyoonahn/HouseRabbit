import 'package:firebase_auth/firebase_auth.dart';
import '../model/house.dart';

abstract class HouseDomainRepository {
  Future<List<House>> getHouses();
  Future<House> getHouseById(int id);
  Future<void> insertHouse(House house);
  Future<void> updateHouse(House house);
  Future<void> deleteHouse(House house);
}