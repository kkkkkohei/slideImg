//
//  ViewController.swift
//  SlideshowApp
//
//  Created by kohei morioka on 2020/04/22.
//  Copyright © 2020 kohei morioka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagesq: UIImageView!
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    @IBOutlet weak var movee: UIButton!
    
    var imglist = [UIImage(named: "cave"), UIImage(named: "high"), UIImage(named: "holl"), UIImage(named: "mono"), UIImage(named: "red")]
    
    var  index = 0
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let imageViewController: ImageViewController = segue.destination as! ImageViewController
        
        imageViewController.index = self.index
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagesq.image = imglist[index]
    }
    
//    進むボタン
    @IBAction func front(_ sender: Any) {
        if timer == nil{
            if index != 4{
                index += 1
            }else{
                index = 0
            }
            imagesq.image = imglist[index]
        }
    }
    
//    戻るボタン
    @IBAction func back(_ sender: Any) {
        if timer == nil{
            if index != 0{
                index -= 1
            }else{
                index = 4
            }
            imagesq.image = imglist[index]
        }
    }
    
//    スライドボタン
    @IBAction func moveImg(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(slideImg(_:)), userInfo: nil, repeats: true)
        }else{
            self.timer.invalidate()
            self.timer = nil
        }
        
        // タイトル変更
        if movee.currentTitle == "再生"{
            movee.setTitle("停止", for: .normal)
        }else{
            movee.setTitle("再生", for: .normal)
        }
        
    }
    
//    スライド機能
    @objc func slideImg(_ timer: Timer) {
        if index != 4{
            index += 1
        }else{
            index = 0
        }
        imagesq.image = imglist[index]
    }

}

