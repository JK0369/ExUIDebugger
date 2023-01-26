//
//  MyCell.swift
//  ExUIDebugger
//
//  Created by 김종권 on 2023/01/26.
//

import UIKit

final class MyCell: UITableViewCell {
    private var titleLabel: UILabel?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        prepare(titleText: nil)
    }
    
    func prepare(titleText: String?) {
        guard let titleText else {
            titleLabel?.removeFromSuperview()
            return
        }
        
        let titleLabel = UILabel()
        titleLabel.text = titleText
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
        ])
        
        self.titleLabel = titleLabel
        
        layoutIfNeeded()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
    }
}

