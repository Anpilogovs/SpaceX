
import UIKit

protocol TitleCellButtonDelegate: AnyObject {
    func didTapTitleButton(in cell: TitleCell)
}

class TitleCell: UICollectionViewCell {
    
    weak var delegate: TitleCellButtonDelegate?

    public static var identifier: String {
        get {
            return "TitleCell"
        }
    }
    
    var titleViewModel: TitleRocketViewModel? {
        didSet {
            titleBindViewModel()
        }
    }
    
    let titleView = TitleView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        contentView.addSubview(titleView)
        backgroundColor = .black
        setupContraints()
        
        titleView.settinButton.addTarget(self, action: #selector(didTapSettinButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func didTapSettinButton() {
        print("Hello")
        delegate?.didTapTitleButton(in: self)
    }
    
    
   private func titleBindViewModel() {
        guard let titleViewModel = titleViewModel else {
            return
        }
        titleView.nameRocket.text = titleViewModel.nameRocket
    }
}

extension TitleCell {
    private func setupContraints() {
        titleView.snp.makeConstraints { constraints in
            constraints.trailing.leading.bottom.top.equalToSuperview()
        }
    }
}
