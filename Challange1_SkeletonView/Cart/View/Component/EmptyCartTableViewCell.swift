//
//  EmptyCartTableViewCell.swift
//  ChallengeUI
//
//  Created by Gramedia on 25/12/22.
//

import UIKit
import SkeletonView
import SnapKit

class EmptyCartTableViewCell: UITableViewCell {
    static let identifier: String = "emptyCartCell"
    
    private lazy var image:UIImageView = {
        let view = UIImageView()
        view.isSkeletonable = true
        view.image = UIImage(named: "emptyCart")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var descriptionLabel:UILabel = {
        let view = UILabel()
        view.isSkeletonable = true
        view.text = "Tas belanja kamu masih kosong lho!\nMulai belanja sekarang dan dapatkan Produk yang kamu inginkan hanya di Gramedia."
        view.textAlignment = .center
        return view
    }()
    
    private lazy var transactionButton:UIButton = {
        let view = UIButton()
        view.isSkeletonable = true
        view.titleLabel?.text = "Mulai belanja"
        view.backgroundColor = .blue
        view.titleLabel?.tintColor = .white
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView(){
        self.contentView.addSubview(image)
        image.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(48)
            make.centerX.equalTo(self.contentView)
        }
        self.contentView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints{ make in
            make.top.equalTo(image.snp.bottom).offset(16)
            make.centerX.equalTo(self.contentView)
        }
        self.contentView.addSubview(transactionButton)
        transactionButton.snp.makeConstraints{ make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            make.centerX.equalTo(self.contentView)
            make.bottom.equalToSuperview().offset(-16)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
