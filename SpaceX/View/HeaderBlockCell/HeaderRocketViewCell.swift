
import SnapKit
import UIKit

class HeaderRocketViewCell: UIView {
    
    private var nameRocket: UILabel = {
        let label = UILabel()
        label.text = "Name Rocket"
        label.backgroundColor = .brown
        return label
    }()
    
    private var settinButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Setting"), for: .normal)
        button.titleLabel?.text = "Hello"
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
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
            constraints.trailing.top.equalToSuperview().inset(8)
            constraints.height.width.equalTo(40)
        }
    }
}
