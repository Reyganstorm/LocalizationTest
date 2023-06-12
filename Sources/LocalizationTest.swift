import UIKit

public struct LocalizationTest {
    
    var window: UIWindow
    
    

    
    public init(window: UIWindow?) {
        self.window = window!
//        super.init()
        startScreenFlow()
    }
    
    private func startScreenFlow() {
        let vc = StartViewController()
        
        self.window.rootViewController = vc
        self.window.makeKeyAndVisible()
    }
}
