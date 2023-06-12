import UIKit

public struct LocalizationManager {
    
    public func start(
        at presenter: UIViewController
    ) {
        let vc = StartViewController()
        vc.modalPresentationStyle = .fullScreen
        presenter.present(vc, animated: false)
    }
    
    public init() {
    }
    

}
