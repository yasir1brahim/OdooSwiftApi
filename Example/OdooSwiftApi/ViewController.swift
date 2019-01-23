//
//  ViewController.swift
//  OdooSwiftApi
//
//  Created by yasir1brahim on 01/23/2019.
//  Copyright (c) 2019 yasir1brahim. All rights reserved.
//

import UIKit
import OdooSwiftApi

class ViewController: UIViewController {


    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var urlTextField: UITextField!

    @IBAction func SendButton(_ sender: UIButton) {
        let url: String = urlTextField.text ?? ""
        
        let client = OdooClient()
        client.callController(url: url ,params: [], callback: {(resp) -> Void in
            self.resultTextView.text = String(describing: resp)
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

