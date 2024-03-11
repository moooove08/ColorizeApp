//
//  Extentions.swift
//  UIKitApp2
//
//  Created by Vlad Kuzmenko on 28.11.2023.
//

import UIKit

extension UITextField {
    
    func setFields() {
        keyboardType = .numberPad
    }
    
}
extension SettingsViewController: UITextFieldDelegate {
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let newText = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
    
    if newText.isEmpty {
      return true
    }
    
    return valuesRange.contains(Int(newText) ?? minValue - 1)
  }
}
