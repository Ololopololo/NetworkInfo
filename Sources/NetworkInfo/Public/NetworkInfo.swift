import Foundation

public final class NetworkInfo {
    private let wifiInfo: WiFiInfo
    private var networkStatus: NetworkStatusProtocol

    public init(networkStatus: NetworkStatusProtocol = NetworkStatus()) {
        self.wifiInfo = WiFiInfo()
        self.networkStatus = networkStatus
    }

    public func getSSID() -> String? {
        return wifiInfo.getCurrentSSID()
    }

    public func getCurrentConnectionType() -> String {
        return networkStatus.getCurrentConnectionType()
    }

    public func startMonitoring(connectionStatusChangeHandler: @escaping (Bool, String) -> Void) {
        networkStatus.connectionStatusChangeHandler = connectionStatusChangeHandler
        networkStatus.startMonitoring()
    }
}
