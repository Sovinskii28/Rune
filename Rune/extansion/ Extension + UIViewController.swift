//
//   Extension + UIViewController.swift
//  Rune
//
//  Created by sovinskii on 11.10.2024.
//

import UIKit

extension UIViewController {
    
    func createCustomNabigationBar(){
        navigationController?.navigationBar.barTintColor = UIColor(rgb: 0x283A1D)
    }
    func createCustomTitleView(imageLogo:String) -> UIView{
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 43)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImageView()
        image.image = UIImage(named: imageLogo)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton")
            navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton")
        navigationController?.navigationBar.tintColor = .white
        
        NSLayoutConstraint.activate([
          
            
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 50),
            
        ])
        return view
    }
}
