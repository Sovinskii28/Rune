//
//  DescriptionViewController.swift
//  Rune
//
//  Created by sovinskii on 11.10.2024.
//

import UIKit

class DescriptionViewController: UIViewController {
  
    
    var runeModel : RuneModel?
    
    let BackgroundColorNavItem : UIView = {
        let greenBox = UIView()
        greenBox.backgroundColor = UIColor(rgb: 0x283A1D)
        greenBox.translatesAutoresizingMaskIntoConstraints = false
        
        return greenBox
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMainBackgroundImage()
        setupView()
        getImageRune()
        constraintBackgroundColorNavItem()
       
    }
    func getImageRune(){
        
        let mainRuneImage = UIImageView()
        mainRuneImage.image = UIImage(named: runeModel?.imageNamed ?? "eror ")

        mainRuneImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainRuneImage)

        NSLayoutConstraint.activate([
            mainRuneImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainRuneImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainRuneImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            mainRuneImage.heightAnchor.constraint(equalTo: mainRuneImage.widthAnchor)
        ])
    }
    
    private func addMainBackgroundImage(){
         let backgroundView = UIImageView(frame: view.bounds)
         backgroundView.image = UIImage(named: "background1.jpg")
         backgroundView.contentMode = .scaleAspectFill
         backgroundView.isUserInteractionEnabled = true
         view.addSubview(backgroundView)
     } 
    //MARK: - CustomLogoNavBar
    func setupView(){
        let customLogoView = createCustomTitleView(imageLogo: "head2")
        navigationItem.titleView = customLogoView
  
    }
    func constraintBackgroundColorNavItem() {
        
        view.addSubview(BackgroundColorNavItem)
        
        NSLayoutConstraint.activate([
            BackgroundColorNavItem.topAnchor.constraint(equalTo: self.view.topAnchor),
            BackgroundColorNavItem.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            BackgroundColorNavItem.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            BackgroundColorNavItem.heightAnchor.constraint(equalToConstant: 110),
        ])
    }


}
