//
//  ViewController.swift
//  Exemplo UIKIT Swift
//
//  Created by Usuário Convidado on 05/05/17.
//  Copyright © 2017 Viel Gates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblVeiculo: UILabel!
    
    @IBOutlet weak var lblProp: UILabel!
    
    
    
   
    
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    
    @IBOutlet weak var txtProp: UITextField!
    
    @IBOutlet weak var lblAno: UILabel!
    
    @IBOutlet weak var lblKM: UILabel!
    
    @IBOutlet weak var lblRota: UILabel!
    
    @IBOutlet weak var meuStepper: UIStepper!
    
  
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lblKM.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        switch(meuSegmento.selectedSegmentIndex){
        case 0:
            print("Voce clicou no botao 1")
            break
        case 1:
            print("Voce clicou no botao 2")
            break
        case 02:
            print("Voce clicou no botao 3")
            break
        default:
                break
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = "\(Int(meuStepper.value))"
        
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func save(_ sender: Any) {
        
        var tipo:String = ""
        var msg:String = ""
        
        if(meuSegmento.selectedSegmentIndex >= 0){
        tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            msg = "O veiculo \(tipo) do ano \(lblAno.text!) foi salvo com sucesso"
        }else{
        msg = "Escolha uma das opcoes carro, moto ou SUV"
        tipo = ""
        }
        
        let alerta = UIAlertController(
            title: "Boa noite a todos!!! Suce$$o do fundo do <3",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil
        ))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func informarRota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Atencao",
            message: "Escolha a forma de receber a rota",
            preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: .default,
            handler: { banana in
                self.lblRota.text = banana.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: .default,
            handler: { banana in
                self.lblRota.text = banana.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil
        ))
    present(alerta, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980"
        lblKM.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

