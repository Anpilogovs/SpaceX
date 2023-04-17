
import SDWebImage
import UIKit

class BackgroundImageCell: UICollectionViewCell {
    
    static let identifier = "BackgroundImageCell"
    
    var viewModel: BackgroundImageViewModel? {
        didSet {
            configure()
        }
    }

    let rocketImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(rocketImageView)
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        guard let viewModel = viewModel else { return }
        if let imageUrl = viewModel.imageUrl {
            rocketImageView.sd_setImage(with: imageUrl)
        } else {
            rocketImageView.image = nil
        }
    }
}

extension BackgroundImageCell {
    private func setupContraints() {
        rocketImageView.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
}
