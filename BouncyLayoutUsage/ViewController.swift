//
//  ViewController.swift
//  BouncyLayoutUsage
//
//  Created by Burak Eryavuz on 28.01.2024.
//

import UIKit
import BouncyLayout

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // Array to use for CollectionView
    let habits = ["Sport", "Don't Smoke", "Coding", "No Sugar", "Drink Water", "No Caffeine", "Dopamine Detox", "Eat Healty Foods"]
    let icons = ["🏋🏼", "🚭", "🧑‍💻", "🍫", "💧", "☕️", "😀", "🥑"]
    
    // CollectionView IBOutlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerCustomCell()
        bouncyLayoutSetup()
    }
    
    // Custom CollectionViewCell Registering (Nib)
    func registerCustomCell() {
        let nib = UINib(nibName: "BounceCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }
    
    // BouncyLayout Usage
    func bouncyLayoutSetup() {
        let layout = BouncyLayout()
        
        let itemSize = (collectionView.frame.width - 10) / 2
        
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        
        collectionView.collectionViewLayout = layout
    }
    
    
    // MARK: - CollectionView Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 75
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BounceCollectionViewCell
        
        let randomColorContainer: UIColor = K.randomColor()
        let randomColorBottom: UIColor = K.randomColor()
        let randomIndexNumber: Int = Int.random(in: 0...7)
        
        cell.containerView.backgroundColor = randomColorContainer
        cell.bottomView.backgroundColor = randomColorBottom
        cell.habitIconLabel.text = icons[randomIndexNumber]
        cell.habitTitleLabel.text = habits[randomIndexNumber]
        
        return cell
    }

}

