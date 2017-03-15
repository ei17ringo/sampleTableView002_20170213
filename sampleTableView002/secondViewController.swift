//
//  secondViewController.swift
//  sampleTableView002
//
//  Created by Eriko Ichinohe on 2017/03/15.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    // 前画面から行番号を受け取るためのプロパティ
    var scSeletectedIndex = -1
    
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    @IBOutlet weak var titleLabel: UILabel!
    //画面が表示された初期1回のみ起動
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //画面が表示される度に起動
    override func viewWillAppear(_ animated: Bool) {
        print("前の画面から\(scSeletectedIndex)行目が選択されました")
        
//        if scSeletectedIndex == 0{
//            titleLabel.text = "ダージリン"
//        }
//        if scSeletectedIndex == 1{
//            titleLabel.text = "アールグレイ"
//        }
//        if scSeletectedIndex == 2{
//            titleLabel.text = "アッサム"
//        }
//        if scSeletectedIndex == 3{
//            titleLabel.text = "オレンジペコ"
//        }
        
        //TODO:上記の処理を配列を使って記述してください
        titleLabel.text = teaList[scSeletectedIndex]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
