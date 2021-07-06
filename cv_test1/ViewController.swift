//
//  ViewController.swift
//  cv_test1
//
//  Created by linusix on 2021/07/06.
//

import UIKit

struct Data {
    let title: String
    let image: UIImage?
}

class ViewController: UIViewController {
    var data: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "86e3826a26c71c")
        
        data.append(Data(title: "1", image: image))
        data.append(Data(title: "2", image: nil))
        data.append(Data(title: "3", image: image))
        data.append(Data(title: "4", image: nil))
        data.append(Data(title: "5", image: image))
        data.append(Data(title: "6", image: nil))
        data.append(Data(title: "7", image: image))
        data.append(Data(title: "8", image: nil))
        data.append(Data(title: "11", image: image))
        data.append(Data(title: "22", image: nil))
        data.append(Data(title: "33", image: image))
        data.append(Data(title: "44", image: nil))
        data.append(Data(title: "55", image: image))
        data.append(Data(title: "66", image: nil))
        data.append(Data(title: "77", image: image))
        data.append(Data(title: "88", image: nil))
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionViewCellID", for: indexPath) as? TestCollectionViewCell {
            let v = data[indexPath.item]
            cell.configure(v)
            return cell
        }
        
        fatalError()
    }
}
