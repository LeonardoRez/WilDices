//
//  MesaViewController.swift
//  WilDices
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import UIKit

class MesaViewController: UIViewController {

    @IBOutlet weak var historicoTextView: UITextView!
    @IBOutlet weak var quantDadosPickerView: UIPickerView!
    @IBOutlet weak var dadosPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rolarDado(_ sender: Any) {
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
