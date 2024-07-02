import Foundation

protocol NetworkStatusProtocol {
    var connectionStatusChangeHandler: ((Bool, String) -> Void)? { get set }
    func startMonitoring()
    func getCurrentConnectionType() -> String
}
