//
//  ViewController.swift
//  Auto Layout Engine
//
//  Created by Levan Loladze on 25.10.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lButton: UIButton!
    @IBOutlet weak var mButton: UIButton!
    @IBOutlet weak var sButton: UIButton!
    
    @IBOutlet weak var nameProd: UILabel!
    @IBOutlet weak var ratingProd: UILabel!
    @IBOutlet weak var priceProd: UILabel!
    
    var coffee: Coffee?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lButton.layer.borderWidth = 1.0
        lButton.layer.borderColor = UIColor.black.cgColor
        
        mButton.layer.borderWidth = 1.0
        mButton.layer.borderColor = UIColor.black.cgColor
        
        sButton.layer.borderWidth = 1.0
        sButton.layer.borderColor = UIColor.black.cgColor

        coffee = Coffee(productName: "Shavi KOFE", price: 90, rating: 4.2)
        
        if let coffee = coffee {
            nameProd.text = coffee.productName
            priceProd.text = "\(coffee.price)$"
            ratingProd.text = "\(coffee.rating)"

        }
    }
    
    struct Coffee {
        var productName: String
        var price: Double
        var rating: Double
    }


}

