import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';

part 'network_observable.freezed.dart';

/// Shortcut type for delivering [NetworkDataSnapshot] instances through an [ObservableValue]
///
/// A [NetworkObservable] can be observed like any other Observable in the mobx ecosystem. The
/// [value] of the observable will be a [NetworkDataSnapshot] instance, which could contain data, a
/// loading state, a not-found state, or an error state. This represents the status of synchonising
/// the live data stream over the network. New values should be published over the observable
/// in (near) real time as they are received.
///
/// The network observable can be handled in the UI using the [when] method of the observable's
/// [value] to handle each possible state:
///
/// ```dart
/// Center(
///   child: Observer(builder: (context) {
///     return myNetworkObservable.value.when(
///       data: (data, _) => ContentView(data),
///       unknownError: () => const Text('Unknown error'),
///       loading: () => const CircularProgressIndicator(),
///       notFound: () => Text('Item not found'),
///     );
///   }),
/// )
/// ```
typedef NetworkObservable<T> = ObservableValue<NetworkDataSnapshot<T>>;

/// Build a [NetworkObservable] in a loading state, useful for initialisation.
NetworkObservable<T> loadingNetworkObservable<T>() =>
    Observable<NetworkDataSnapshot<T>>(const NetworkDataSnapshot.loading());

/// A snapshot of a live data stream which receives real-time data updates over the network
@freezed
class NetworkDataSnapshot<T> with _$NetworkDataSnapshot<T> {
  /// A value has been successfully retrieved from the server or local cache
  const factory NetworkDataSnapshot.data(T data, DataSource source) = NetworkDataSnapshotData;

  /// An unknown error has occured retrieving the value
  const factory NetworkDataSnapshot.unknownError() = NetworkDataSnapshotError;

  /// The value is currently being loaded from the server or local cache
  const factory NetworkDataSnapshot.loading() = NetworkDataSnapshotLoading;

  /// The value was not found on the server
  const factory NetworkDataSnapshot.notFound() = NetworkDataSnapshotNotFound;
}

enum DataSource {
  /// The value was retrieved from the local cache
  local,

  /// The value was retrieved over the network from the server
  server,
}

extension NetworkObservableExtension<T> on NetworkObservable<T> {
  /// Return value if it is available, otherwise return null
  T? valueOrNull() {
    return value.maybeWhen(
      data: (data, _) => data,
      orElse: () => null,
    );
  }

  /// Map the value to a different type. If a value is not present, the NetworkLiveData is returned
  /// as-is but cast to the new type.
  NetworkObservable<V> map<V>(V Function(T data) mapper) {
    return Computed<NetworkDataSnapshot<V>>(() {
      return value.maybeWhen(
        data: (data, source) => NetworkDataSnapshot.data(mapper(data), source),
        orElse: () => this as NetworkDataSnapshot<V>,
      );
    });
  }
}
