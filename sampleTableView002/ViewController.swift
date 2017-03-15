//
//  ViewController.swift
//  sampleTableView002
//
//  Created by Eriko Ichinohe on 2017/03/15.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

// ①プロトコルの設定 UITableViewDelegate,UITableViewDataSource
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    
    // 行番号を格納するメンバ変数
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ④TableViewに指示をだすのがViewControllerだと設定する
        // Storyboardで設定
    }
    
    // ②行数を決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teaList.count
    }
    
    // ③リストに表示する文字を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 文字を表示するセルの取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // 表示文字の設定
        
        cell.textLabel?.text = teaList[indexPath.row]
        
        // 文字を設定したセルを返す
        return cell
    }
    
    //セルが選択されたとき発動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(indexPath.row)行目が選択されました")
        
        //メンバ変数に行番号を保存
        selectedIndex = indexPath.row
        
        //セグエを指定して画面遷移
        performSegue(withIdentifier: "showSecondView", sender: nil)
    }
    
    // Segueで画面遷移する時発動
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("画面遷移直前:\(selectedIndex)行目選択")
        
        //次の遷移先の画面をインスタンス化して取得
        let secondVC = segue.destination as! secondViewController
        
        //次の遷移先の画面のプロパティに、選択された行番号を保存
        secondVC.scSeletectedIndex = selectedIndex
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

