//
//  RuneCell.swift
//  Rune
//
//  Created by sovinskii on 07.10.2024.
//

import UIKit

class RuneCell: UICollectionViewCell {
    
    static let id = "RuneID"
    
    
    
    let layerColorCell : UIView = {
        let layer = UIView()
        layer.backgroundColor = .white
        layer.alpha = 0.8
        layer.clipsToBounds = true
        layer.layer.cornerRadius = 10
        layer.translatesAutoresizingMaskIntoConstraints = false
        return layer
    }()
    
    let textureLayerCell : UIImageView = {
        let backgroundView = UIImageView(image: UIImage(named: "Paper"))
        backgroundView.contentMode = .scaleAspectFill
        backgroundView.clipsToBounds = true
        backgroundView.layer.cornerRadius = 10
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundView
    }()

    
//Image
    let runeImageView : UIImageView = {
        let runeImage = UIImageView()
        runeImage.contentMode = .scaleAspectFit
        runeImage.translatesAutoresizingMaskIntoConstraints = false
        let backgroundFon = UIView()
        backgroundFon.backgroundColor = UIColor.white
        return runeImage
    }()
    
//Label
    let nameOfTheRune : UILabel = {
        let nameRune = UILabel()
        nameRune.textAlignment = .center
        nameRune.translatesAutoresizingMaskIntoConstraints = false
        nameRune.textColor = .white
       
        nameRune.font = UIFont(name: "CaesarDressingCyrillic", size: 21)
        
        nameRune.backgroundColor = .clear
        return nameRune
    }()
    
    //ячейка
    //ячейка?
    override init(frame: CGRect){
        super .init(frame: frame)
        addViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var modelRuneConfig : RuneModel? {
        didSet {
            nameOfTheRune.text = modelRuneConfig?.named
            if let image = modelRuneConfig?.imageNamed {
                runeImageView.image = UIImage(named: image)
            }
        }
    }
}

private extension RuneCell {
    func addViewComponents() {
        contentView.addSubview(layerColorCell)
        contentView.addSubview(textureLayerCell)
        contentView.addSubview(runeImageView)
        contentView.addSubview(nameOfTheRune)
        
        NSLayoutConstraint.activate([

            layerColorCell.topAnchor.constraint(equalTo: contentView.topAnchor),
            layerColorCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            layerColorCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            layerColorCell.heightAnchor.constraint(equalToConstant: 80),
            
            textureLayerCell.topAnchor.constraint(equalTo: contentView.topAnchor),
            textureLayerCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textureLayerCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            textureLayerCell.heightAnchor.constraint(equalToConstant: 80),
            //image
            runeImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            runeImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            runeImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            runeImageView.heightAnchor.constraint(equalToConstant: 60),
//          runeImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.75),
            //text
            nameOfTheRune.topAnchor.constraint(equalTo: runeImageView.bottomAnchor, constant: 10),
            nameOfTheRune.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameOfTheRune.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            nameOfTheRune.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
    }
}

