//
//  ViewController.swift
//  SFSymbolExample
//
//  Created by jinjie on 2019/11/21.
//  Copyright © 2019 lvye. All rights reserved.
//

import UIKit
import SFSymbol

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    let xx = SFSymbol.allCases
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return xx.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(systemName: xx[indexPath.row].rawValue)
        cell.backgroundColor = UIColor.black
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

