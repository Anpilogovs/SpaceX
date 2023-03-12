
import SnapKit
import UIKit

class HeaderRocketViewCell: UIView {
    
    private var nameRocket: UILabel = {
        let label = UILabel()
        label.text = "NAme Rocket"
        return label
    }()
    
    private var settinButton: UIButton = {
        let button = UIButton()
//        button.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControl.State#>)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUIView()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUIView() {
        addSubview(nameRocket)
        addSubview(settinButton)
    }
    
    @objc private func didTapButton() {
        
    }
}

extension HeaderRocketViewCell {
    private func setupContraints() {
        nameRocket.snp.makeConstraints { constraints in
            constraints.leading.top.equalToSuperview().inset(16)
        }
        
        settinButton.snp.makeConstraints { constraints in
            constraints.top.trailing.equalToSuperview().inset(16)
        }
    }
}
