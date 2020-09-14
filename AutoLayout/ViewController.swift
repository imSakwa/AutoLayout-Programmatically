//
//  ViewController.swift
//  AutoLayout
//
//  Created by 창민 on 2020/09/14.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let abutton = UIButton()
    let bbutton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "오토 레이아웃 연습"
        label.backgroundColor = .yellow
        
        abutton.setTitle("버튼이다.", for: .normal)
        abutton.backgroundColor = .gray
        
        bbutton.setTitle("아아", for: .normal)
        bbutton.backgroundColor = .blue
        
        self.view.addSubview(label)
        self.view.addSubview(abutton)
        self.view.addSubview(bbutton)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        label.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        abutton.translatesAutoresizingMaskIntoConstraints = false
        abutton.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 50).isActive = true
        abutton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        abutton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        abutton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        bbutton.translatesAutoresizingMaskIntoConstraints = false
        bbutton.leftAnchor.constraint(equalTo: abutton.rightAnchor,constant: 100).isActive = true
       // bbutton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200).isActive = true
        bbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
       // bbutton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100).isActive = true
        bbutton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        bbutton.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }


}

