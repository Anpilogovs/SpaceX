
import UIKit


enum LabelText: String {
    
    case firstLaunch = "First Launch"
    case country = "Country"
    case costOfLaunch = "The cost of launch"
    case firstStage = "First Stage"
    case engines = "Engines"
    case fuelAmountTonsFirst =  "Fuel Amount Tons"
    case burnTimeFirst = "Burn Time Sec"
    case secondStage =  "Second Stage"
    case hight = "22"
    case diameter = "Диаметер"
    case mass = "Macca"
    case payload = "Полезная нагрузка"
}

extension UILabel {
    
    convenience init(text: LabelText, textDefult: String = "") {
        self.init()
        self.text = text.rawValue
        self.text = textDefult
        self.font = .labGrotesqueThin()
        self.textColor = .white
    }
}
