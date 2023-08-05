import 'package:trucks_client/trucks_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/utils/singletons.dart';
import 'package:trucks_flutter/utils/api_client.dart';

class TruckProvider extends StateNotifier<List<Truck>> {
  final client = singleton<ApiClient>().client.truck;
  final Ref ref;

  TruckProvider(this.ref) : super([]) {
    load();
  }

  load() async {
    state = await client.readAll();
  }

  create({
    required String truckName,
    required int truckModelId,
    required String registrationNumber,
    required DateTime registrationDate,
    int? bodyTypeId,
    int? cargoTypeId,
    int? maxLoadingCapacity,
    required int truckCc,
    String? defaultTruckLocation,
    int? fuelConsumptionPerKm,
    String status = 'Active',
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) async {
    await client.create(
      truckName: truckName,
      truckModelId: truckModelId,
      registrationNumber: registrationNumber,
      registrationDate: registrationDate,
      truckCc: truckCc,
      status: status,
      modifiedBy: modifiedBy,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
      bodyTypeId: bodyTypeId,
      cargoTypeId: cargoTypeId,
      maxLoadingCapacity: maxLoadingCapacity,
      defaultTruckLocation: defaultTruckLocation,
      fuelConsumptionPerKm: fuelConsumptionPerKm,
    );
    load();
  }
}