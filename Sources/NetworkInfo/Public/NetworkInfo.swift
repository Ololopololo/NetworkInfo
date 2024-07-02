import Foundation

public final class NetworkInfo {
    private let wifiInfo: WiFiInfo
    private var networkStatus: NetworkStatusProtocol

    private init(networkStatus: NetworkStatusProtocol) {
        self.wifiInfo = WiFiInfo()
        self.networkStatus = networkStatus
        _ = LocationManager.shared
    }
    
    public static func create() -> NetworkInfo {
        let networkStatus = NetworkStatus()
        return NetworkInfo(networkStatus: networkStatus)
    }

    public func getSSID(completion: @escaping (String?) -> Void) {
        wifiInfo.fetchCurrentWithCompletionHandler(completion: completion)
    }

    public func getCurrentConnectionType() -> String {
        return networkStatus.getCurrentConnectionType()
    }

    public func startMonitoring(connectionStatusChangeHandler: @escaping (Bool, String) -> Void) {
        networkStatus.connectionStatusChangeHandler = connectionStatusChangeHandler
        networkStatus.startMonitoring()
    }
}
