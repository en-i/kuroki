//
//  ViewController.swift
//  kuroki
//
//  Created by terada enishi on 2020/09/08.
//  Copyright © 2020 terada enishi. All rights reserved.
//

import UIKit

var answer:Int? = 0

var mathTextfield:String?

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 15, left: 20, bottom: 15, right: 20)
        collectionView.collectionViewLayout = layout
        bag.isHidden = true
        tashizan.isHidden = true
        close.isHidden = true
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Bag", for: indexPath) // 表示するセルを登録(cellのidentifier)
                cell.backgroundColor = .red  // セルの色
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let horizontalSpace : CGFloat = 30
            let cellSize : CGFloat = self.view.bounds.width / 2 - horizontalSpace
            return CGSize(width: cellSize, height: cellSize)
        }
    
    @IBOutlet weak var tashizan: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var bag: UIImageView!
    @IBOutlet weak var close: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func close(_ sender: Any) {
        mathTextfield = tashizan.text
        bag.isHidden = false
    }
    @IBAction func sumButton(_ sender: Any) {
        let x1 = Int(tashizan.text!)
        let x2 = Int(tashizan.text!)
    
        answer = x1! + x2!
         
        result.text = String(answer!)
    }
}

