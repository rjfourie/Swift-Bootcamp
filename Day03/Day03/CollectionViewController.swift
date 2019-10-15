//
//  CollectionViewController.swift
//  Day03
//
//  Created by Russell Fourie on 2019/10/11.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {

    var urls = [
     "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA23005_hires.jpg",
     "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA23121_hires.jpg",
     "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA23004_hires.jpg",
     "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA23010_hires.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes - dont need this - because I am handling this in storyboard
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return urls.count
    }
    
    func loadImage(url: String) -> UIImage? {
        if let url = URL(string : url) {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                return UIImage(data: imageData)
            }
        }
        return nil
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
//        if let customImageCell = cell as? CollectionViewCell {
//            customImageCell.image
//        }
        
        let imageview:UIImageView = UIImageView(frame: <#T##CGRect#>)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
