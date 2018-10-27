//
//  SecondViewController.swift
//  ListaTarefas
//
//  Created by pos on 26/10/2018.
//  Copyright © 2018 pos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtText: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnAddTask(_ sender: Any) {
        taskMgr.addTask(name: txtText.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtText.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
}

