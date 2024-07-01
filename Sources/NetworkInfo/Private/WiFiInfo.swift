import SystemConfiguration.CaptiveNetwork
import Foundation

final class WiFiInfo {
    func getCurrentSSID() -> String? {
        guard let interfaces = CNCopySupportedInterfaces() as? [String] else {
            return nil
        }
        
        for interface in interfaces {
            if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as CFString) as NSDictionary? {
                return interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
            }
        }
        
        return nil
    }
}
