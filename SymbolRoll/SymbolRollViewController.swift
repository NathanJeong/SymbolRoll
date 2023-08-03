//
//  SymbolRollViewController.swift
//  SymbolRoll
//
//  Created by 정동현 on 2023/08/03.
//

import UIKit

class SymbolRollViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var imageButton: UIButton!

    let symbols: [String] = [
        "sun.min", "moon", "cloud", "wind", "snowflake"
    ]

    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        imageLabel.text = symbol
    }

    /*
     MARK: Memory에 load
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // image 하나 임의로 추출하기
        reload()
        // Do any additional setup after loading the view.
        print("View Did Load")
    }

    /*
     MARK: 화면에 보일 준비가 됐다!
     */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }

    /*
     MARK: 화면에 나타났다!
     */
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
    }
    /*
     MARK: 버튼을 누를 때
     */
    @IBAction func onPress(_ sender: Any) {
        reload()
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
