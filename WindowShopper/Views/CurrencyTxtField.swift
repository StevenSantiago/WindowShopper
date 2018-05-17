//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Steven on 4/25/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import UIKit

@IBDesignable //class attribute that enables code in class to show up in interface builder
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8480568131, green: 0.8480568131, blue: 0.8480568131, alpha: 0.7964469178)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.darkGray
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() { //Function that makes InterfaceBuilder appear as it is suppose to at runtime.
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //used Color Literal to control opacity as well and just to experiment
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        //if placeholder is nill it wont go into if
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes:[.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }

}
