//  ViewController.swift
//
//  AutoLayout
//
//  Created by 창민 on 2020/09/14.
//

import UIKit

class ViewController: UIViewController {
    
    let title_label = UILabel()
    let title_leftbtn = UIButton()
    let title_rightbtn = UIButton()
    let hugging_label = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        config()
        autoLayout()
    }
    
    func config(){
        title_label.text = "오토 레이아웃 연습"
        title_label.textAlignment = .center
        title_label.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        title_leftbtn.setTitle("왼쪽 버튼", for: .normal)
        title_leftbtn.contentVerticalAlignment = UIControl.ContentVerticalAlignment.top
        title_leftbtn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        title_leftbtn.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        title_rightbtn.setTitle("오른쪽 버튼", for: .normal)
        title_rightbtn.contentVerticalAlignment = UIControl.ContentVerticalAlignment.bottom
        title_rightbtn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        title_rightbtn.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        self.view.addSubview(title_label)
        self.view.addSubview(title_leftbtn)
        self.view.addSubview(title_rightbtn)
    }

    // MARK :- AutoLayout Method
    func autoLayout(){
        title_label.translatesAutoresizingMaskIntoConstraints = false
        title_label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        title_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        title_label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        title_label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        title_leftbtn.translatesAutoresizingMaskIntoConstraints = false
        title_leftbtn.topAnchor.constraint(equalTo: title_label.bottomAnchor,constant: 50).isActive = true
        title_leftbtn.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -20).isActive = true
        title_leftbtn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        title_leftbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        title_rightbtn.translatesAutoresizingMaskIntoConstraints = false
        title_rightbtn.topAnchor.constraint(equalTo: title_label.bottomAnchor,constant: 50).isActive = true
        title_rightbtn.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        title_rightbtn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        title_rightbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}

