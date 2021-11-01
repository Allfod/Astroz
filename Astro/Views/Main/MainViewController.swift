//
//  MainViewController.swift
//  Astro
//
//  Created by Vural ÇETİN on 25.10.2021.
//

import UIKit

class MainViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var mainCollectionView: UICollectionView!
    var astros: [Horoscope] = []
    var appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return astros.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionCell
        cell.displayContent(model: astro[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        DetailViewController.astro = astros[indexPath.row]
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as? UINavigationController
        self.present(newViewController,animated: true,completion: nil)
        
        
    }
    
    

  

}
