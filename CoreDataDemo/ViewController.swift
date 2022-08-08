//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by CW on 02/08/22.
//

import UIKit

class ViewController: UIViewController{//},UICollectionViewDelegate,UICollectionViewDataSource {
    var dataFromApi:DecodeStructure?
    let apiLink = "https://api.imgflip.com/get_memes"
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
//        myCollectionView.dataSource = self
//        myCollectionView.delegate =  self
//        view.addSubview(myCollectionView)
        extractFromApi()
    }

//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .green
//        return cell
//
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        myCollectionView.deselectItem(at: indexPath, animated: true)
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 6
//    }
    func extractFromApi(){
        ///
        let task = URLSession.shared.dataTask(with: URL(string: apiLink)!, completionHandler: { someData, someResponse, err in
             guard let data = someData, err == nil else{
                 print("error while decoding")
                 return
             }
             
             
             // get data
             
            do {
//                 let data = try Data(contentsOf: URL(string: self.apiLink)!)
                print("inside do")
               let data = try JSONDecoder().decode(DecodeStructure.self,from: someData! )
                self.dataFromApi = data
//                let info:DecodeStructure?
                guard let info = self.dataFromApi else{ return }
                print(self.dataFromApi!.success!)
                    print((info.data!.memes![1].width)!)
            }
            catch{
                print(" \(String(describing: err)) error while decoding Json")
            }
        })
        
        task.resume()
    }
    func getImage(){
        
    }
}

