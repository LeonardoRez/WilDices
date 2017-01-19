//
//  MesaViewController.swift
//  WilDices
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import UIKit

class MesaViewController: UIViewController {
    
    var dados = [2,3,4,6,8,10,12,100,1000]
    var mesa: Mesa?

    @IBOutlet weak var historicoTextView: UITextView!
    @IBOutlet weak var quantDadosPickerView: UIPickerView!
    @IBOutlet weak var dadosPickerView: UIPickerView!{
        didSet {
            // Definimos que os métodos de Data Source e Delegate do Picker View foram implementados pela nossa classe
            dadosPickerView.dataSource = self
            dadosPickerView.delegate = self
        }
    }
    
    // Retorna o valor do componente selecionado na Picker View
    var CategoriaSelecionada: Int {
        get {
            // Com o selectedRow(inComponent:) é possível saber qual
            // linha o usuário escolheu na Picker View
            return dados[dadosPickerView.selectedRow(inComponent: 0)]
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(mesa?.nome)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rolarDado(_ sender: Any) {
        let dado = arc4random_uniform(UInt32(CategoriaSelecionada)) + 1
        let resultado = "D\(CategoriaSelecionada) = \(dado)\n"
        historicoTextView.insertText(resultado)
        
        
        
        
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


// MARK: -
// Aqui estamos implementando os protocolos UIPickerViewDataSource e UIPickerViewDelegate
extension MesaViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    // MARK: Picker View Data Source
    // Quantas colunas a Picker View deve ter?
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Quantas linhas tem em cada coluna?
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dados.count
    }
    
    // MARK: - Picker View Delegate
    // Qual texto vai aparecer em cada linha na coluna?
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "D\(dados[row])"
    }
    
    // O que vai acontecer quando o usuário selecionar uma coluna?
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
}

