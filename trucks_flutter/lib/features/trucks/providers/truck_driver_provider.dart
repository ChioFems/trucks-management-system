import 'package:trucks_client/trucks_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/utils/singletons.dart';
import 'package:trucks_flutter/utils/api_client.dart';

class TruckDriverProvider extends StateNotifier<List<TruckDriver>> {
  final int driverId;
  final client = singleton<ApiClient>().client.truckDriver;
  final Ref ref;

  TruckDriverProvider(this.ref, this.driverId) : super([]) {
    load();
  }

  load() async {
    state = await client.readByDriver(driverId);
  }

  create({
    required int truckId,
    required int driverId,
    String truckStatus = 'Free',
    required int modifiedBy,
    required DateTime createdDate,
    required DateTime modifiedDate,
  }) async {
    await client.create(
      truckId: truckId,
      driverId: driverId,
      truckStatus: truckStatus,
      modifiedBy: modifiedBy,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
    );
    load();
  }
}

// with family provider, there's an instance for each driver that is loaded by calling "readByDriver" method hence returning truck driver list for a certain driver
final truckDriverProvider =
    StateNotifierProvider.family<TruckDriverProvider, List<TruckDriver>, int>(
        (ref, driverId) => TruckDriverProvider(ref, driverId));
