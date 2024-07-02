import Foundation
import NetworkExtension

final class WiFiInfo {
    func fetchCurrentWithCompletionHandler(completion: @escaping (String?) -> Void) {
        NEHotspotNetwork.fetchCurrent { network in
            completion(network?.ssid)
        }
    }
}
