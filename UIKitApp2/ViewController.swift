//
//  ViewController.swift
//  UIKitApp2
//
//  Created by Vlad Kuzmenko on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {

    let sliderRed = UISlider()
    let sliderGreen = UISlider()
    let sliderBlue = UISlider()
    let view1 = UIView()
    let labelRed = UILabel()
    let labelGreen = UILabel()
    let labelBlue = UILabel()
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        //MARK: View 1
        
        view1.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view1.center = CGPoint(x: view.center.x, y: 300)
        view.addSubview(view1)
        view1.backgroundColor = UIColor(red: CGFloat(sliderRed.value/255), green: CGFloat(sliderGreen.value/255), blue: CGFloat(sliderBlue.value/255), alpha: 1)
        view1.layer.cornerRadius = view1.frame.width/2
        
        
        
        
        //MARK: Red Slider and Label
        sliderRed.frame = CGRect(x: 150, y: 600, width: 200, height: 22)
        sliderRed.maximumValue = 255
        sliderRed.minimumValue = 0
        sliderRed.value = 0
        sliderRed.maximumTrackTintColor = .black
        sliderRed.thumbTintColor = .yellow
        view.addSubview(sliderRed)
        sliderRed.addTarget(self, action: #selector(changeRed), for: .valueChanged)
        
        labelRed.text = "Red color"
        labelRed.textAlignment = .center
        labelRed.frame = CGRect(x: 30, y: 600, width: 100, height: 22)
        labelRed.backgroundColor = .red
        labelRed.layer.masksToBounds = true
        labelRed.layer.cornerRadius = 10
        labelRed.textColor = .black
        view.addSubview(labelRed)
        
        //MARK: Green Slider and Label
        sliderGreen.frame = CGRect(x:150, y: 650, width: 200, height: 22)
        sliderGreen.maximumValue = 255
        sliderGreen.minimumValue = 0
        sliderGreen.value = 0
        sliderGreen.maximumTrackTintColor = .black
        sliderGreen.thumbTintColor = .yellow
        view.addSubview(sliderGreen)
        sliderGreen.addTarget(self, action: #selector(changeGreen), for: .valueChanged)
        
        labelGreen.text = "Green color"
        labelGreen.textAlignment = .center
        labelGreen.frame = CGRect(x: 30, y: 650, width: 100, height: 22)
        labelGreen.backgroundColor = .green
        labelGreen.layer.masksToBounds = true
        labelGreen.layer.cornerRadius = 10
        labelGreen.textColor = .black
        view.addSubview(labelGreen)
        
        //MARK: Blue Slider and Label
        sliderBlue.frame = CGRect(x: 150, y: 700, width: 200, height: 22)
        sliderBlue.maximumValue = 255
        sliderBlue.minimumValue = 0
        sliderBlue.value = 0
        sliderBlue.minimumTrackTintColor = .blue
        sliderBlue.maximumTrackTintColor = .black
        sliderBlue.thumbTintColor = .yellow
        view.addSubview(sliderBlue)
        sliderBlue.addTarget(self, action: #selector(changeBlue), for: .valueChanged)
        
        labelBlue.text = "Blue color"
        labelBlue.textAlignment = .center
        labelBlue.frame = CGRect(x: 30, y: 700, width: 100, height: 22)
        labelBlue.backgroundColor = .blue
        labelBlue.layer.masksToBounds = true
        labelBlue.layer.cornerRadius = 10
        labelBlue.textColor = .black
        view.addSubview(labelBlue)
        
        
    }
    @objc func changeRed(sender: UISlider) {
        if sender == sliderRed {
            view1.backgroundColor = UIColor(red: CGFloat(sliderRed.value/255), green: CGFloat(sliderGreen.value/255), blue: CGFloat(sliderBlue.value/255), alpha: 1)
            sliderRed.minimumTrackTintColor = UIColor(red: CGFloat(sliderRed.value/255), green: 0/255, blue: 0/255, alpha: 1)
            sliderRed.maximumTrackTintColor = UIColor(red: CGFloat(sliderRed.value/255), green: 0/255, blue: 0/255, alpha: 1)
           
        }
    }
    @objc func changeGreen(sender: UISlider) {
        if sender == sliderGreen {
            view1.backgroundColor = UIColor(red: CGFloat(sliderRed.value/255), green: CGFloat(sliderGreen.value/255), blue: CGFloat(sliderBlue.value/255), alpha: 1)
            sliderGreen.minimumTrackTintColor = UIColor(red: 0/255, green: CGFloat(sliderGreen.value/255), blue: 0/255, alpha: 1)
            sliderGreen.maximumTrackTintColor = UIColor(red: 0/255, green: CGFloat(sliderGreen.value/255), blue: 0/255, alpha: 1)
        }
    }
    @objc func changeBlue(sender: UISlider) {
        if sender == sliderBlue {
            view1.backgroundColor = UIColor(red: CGFloat(sliderRed.value/255), green: CGFloat(sliderGreen.value/255), blue: CGFloat(sliderBlue.value/255), alpha: 1)
            sliderBlue.minimumTrackTintColor = UIColor(red: 0/255, green: 0/255, blue: CGFloat(sliderBlue.value/255), alpha: 1)
            sliderBlue.maximumTrackTintColor = UIColor(red: 0/255, green: 0/255, blue: CGFloat(sliderBlue.value/255), alpha: 1)
        }
    }
}

