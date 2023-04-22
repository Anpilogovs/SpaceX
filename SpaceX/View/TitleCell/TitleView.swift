
import SnapKit
import UIKit

class TitleView: UIView {
        
     var nameRocket: UILabel = {
        let label = UILabel()
        label.text = "Name Rocket"
        label.backgroundColor = .brown
        return label
    }()
    
     var settinButton: UIButton = {
        let button = UIButton()
        var image = UIImage(named: "setting")?.withTintColor(.white)
        button.setImage(image, for: .normal)
        button.titleLabel?.text = "Hello"
        button.addTarget(self, action: #selector(didTapSettingButton), for: .touchUpInside)
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
    
    @objc private func didTapSettingButton() {
//        delegate?.didTapTitleViewButton()
    }
}

extension TitleView {
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
