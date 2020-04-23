//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by kohei morioka on 2020/04/22.
//  Copyright © 2020 kohei morioka. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgBig: UIImageView!
    
    var index = 0
    
    var imglist = [UIImage(named: "cave"), UIImage(named: "high"), UIImage(named: "holl"), UIImage(named: "mono"), UIImage(named: "red")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgBig.image = imglist[index]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
