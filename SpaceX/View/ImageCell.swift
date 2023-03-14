
import SDWebImage
import UIKit

class ImageCell: UICollectionViewCell {
    
    public static var identifier: String {
        get {
            return "ImageCell"
        }
    }

    let rocketImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(viewModel: RocketCollectionCellViewModel) {
        self.rocketImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
