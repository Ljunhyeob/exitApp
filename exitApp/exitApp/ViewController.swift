//
//  ViewController.swift
//  exitApp
//
//  Created by 이준협 on 2023/01/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var finishBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            exit(0)
        }
    }
    
}

