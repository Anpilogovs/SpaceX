
import UIKit

extension UILabel {
    
    convenience init(text: String = "") {
        self.init()
        self.text = text
        self.font = .labGrotesqueThin()
        self.textColor = .white
    }
}
