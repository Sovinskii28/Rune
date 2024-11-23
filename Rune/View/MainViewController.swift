//
//  LoginScreenViewController.swift
//  Rune
//
//  Created by sovinskii on 07.10.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    private let layout = UICollectionViewFlowLayout()
    
    var itemRuneArray : [RuneModel] = {
        
        var model = RuneModel()
        model.named = "Ансуз"
        model.imageNamed = "1ru"
        
        var model2 = RuneModel()
        model2.named = "Гебо"
        model2.imageNamed = "2ru"
        
        var model3 = RuneModel()
        model3.named = "Райдо"
        model3.imageNamed = "3ru"
        
        var model4 = RuneModel()
        model4.named = "Кеназ"
        model4.imageNamed = "4ru"
        
        var model5 = RuneModel()
        model5.named = "Феху"
        model5.imageNamed = "5ru"
        
        var model6 = RuneModel()
        model6.named = "Турисаз"
        model6.imageNamed = "6ru"
        
        var model7 = RuneModel()
        model7.named = "Уруз"
        model7.imageNamed = "7ru"
        
        var model8 = RuneModel()
        model8.named = "Вунью"
        model8.imageNamed = "8ru"
     
        return [model,model2,model3,model4,model5,model6,model7,model8]
    }()


    let BackgroundColorNavItem : UIView = {
        let greenBox = UIView()
        greenBox.backgroundColor = UIColor(rgb: 0x283A1D)
        greenBox.translatesAutoresizingMaskIntoConstraints = false
        return greenBox
    }()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addMainBackgroundImage()
        ConstraintBackgroundColorNavItem()
        appCustomNavBar()
        createCustomNabigationBar()
        collectionViewConfig()

    }
    
    //MARK: - CustomLogoNavBar
    func appCustomNavBar(){
        let customLogoView = createCustomTitleView(imageLogo: "head")
        navigationItem.titleView = customLogoView
        
    }
    
    //MARK: - ImageBackground
   public func addMainBackgroundImage(){
        let backgroundView = UIImageView(frame: view.bounds)
        backgroundView.image = UIImage(named: "background1.jpg")
        backgroundView.contentMode = .scaleAspectFill
        backgroundView.isUserInteractionEnabled = true
        view.addSubview(backgroundView)
    }
    
    func ConstraintBackgroundColorNavItem() {

        view.addSubview(BackgroundColorNavItem)

        NSLayoutConstraint.activate([
            BackgroundColorNavItem.topAnchor.constraint(equalTo: self.view.topAnchor),
            BackgroundColorNavItem.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            BackgroundColorNavItem.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            BackgroundColorNavItem.heightAnchor.constraint(equalToConstant: 110),
            

        ])
    }
    
    //MARK: - Настройка компоновки для UICollectionView
   private func collectionViewConfig(){
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 60//минимальное расстояние между строками элементов
        layout.minimumInteritemSpacing = 1 //минимальное расстояние между элементами в одной строке
        layout.itemSize = CGSize(width: 80, height: 120)
        layout.collectionView?.isScrollEnabled = false
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y:0, width: 0, height: 0), collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
       
        collectionView.delegate = self
        collectionView.dataSource = self
       
        collectionView.backgroundColor = .none
        collectionView.register(RuneCell.self, forCellWithReuseIdentifier: RuneCell.id)
       
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: BackgroundColorNavItem.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}

//MARK: - UICollectionViewDataSource methods
extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemRuneArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: RuneCell.id, for: indexPath) as? RuneCell {
            
            itemCell.modelRuneConfig = itemRuneArray[indexPath.row]
            
            return itemCell
        }
        return UICollectionViewCell()
    }
    
}
//MARK: - UICOllectionViewDelegate
extension MainViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        navigationController?.pushViewController(DescriptionViewController(), animated: true)
        
        print("Нажата ячейка с индексом: \(indexPath.row + 1)")
    }
}
