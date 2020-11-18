//  ViewController.swift
//
//  AutoLayout
//
//  Created by 창민 on 2020/09/14.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let title_label = UILabel()
    let title_leftbtn = UIButton()
    let title_rightbtn = UIButton()
    let hugging_label = UILabel()
    let hugged_label = UILabel()

    // 클로저로 뷰를 설정
    var firstview: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        return view
    }()
    
    var secondview: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 16
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        config()
        addAllSubview()
        autoLayout()
    }
    
    func config(){
        self.title_label.text = "오토 레이아웃 연습"
        self.title_label.textAlignment = .center
        self.title_label.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        self.title_leftbtn.setTitle("왼쪽 버튼", for: .normal)
        self.title_leftbtn.contentVerticalAlignment = UIControl.ContentVerticalAlignment.top
        self.title_leftbtn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        self.title_leftbtn.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        self.title_rightbtn.setTitle("오른쪽 버튼", for: .normal)
        self.title_rightbtn.contentVerticalAlignment = UIControl.ContentVerticalAlignment.bottom
        self.title_rightbtn.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        self.title_rightbtn.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        self.hugging_label.text = "허깅하는 허깅하는 허깅하는 허깅하는"
        self.hugging_label.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        
        self.hugged_label.text = "허깅당하는 허깅당하는 허깅당하는 허깅당하는 "
        self.hugged_label.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)
    }

    func addAllSubview(){
        self.view.addSubview(title_label)
        self.view.addSubview(title_leftbtn)
        self.view.addSubview(title_rightbtn)
        self.view.addSubview(hugging_label)
        self.view.addSubview(hugged_label)
        self.view.addSubview(firstview)
        self.view.addSubview(secondview)
    }
    
    
    // MARK :- AutoLayout Method
    func autoLayout(){
        
        self.title_label.translatesAutoresizingMaskIntoConstraints = false
        self.title_label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.title_label.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        self.title_label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.title_label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.title_leftbtn.translatesAutoresizingMaskIntoConstraints = false
        self.title_leftbtn.topAnchor.constraint(equalTo: title_label.bottomAnchor,constant: 50).isActive = true
        self.title_leftbtn.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -20).isActive = true
        self.title_leftbtn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        self.title_leftbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.title_rightbtn.translatesAutoresizingMaskIntoConstraints = false
        self.title_rightbtn.topAnchor.constraint(equalTo: title_leftbtn.topAnchor).isActive = true
        self.title_rightbtn.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        self.title_rightbtn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        self.title_rightbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.hugging_label.translatesAutoresizingMaskIntoConstraints = false
        self.hugging_label.topAnchor.constraint(equalTo: title_leftbtn.bottomAnchor, constant: 35).isActive = true
        self.hugging_label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.hugging_label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.hugging_label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        self.hugging_label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        self.hugging_label.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        
        self.hugged_label.translatesAutoresizingMaskIntoConstraints = false
        self.hugged_label.topAnchor.constraint(equalTo: hugging_label.topAnchor).isActive = true
        self.hugged_label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        self.hugged_label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.hugged_label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        self.hugged_label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        self.hugged_label.setContentHuggingPriority(.defaultLow, for: .vertical)
        
        self.firstview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.firstview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.firstview.topAnchor.constraint(equalTo: hugging_label.bottomAnchor, constant: 50).isActive = true
        self.firstview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        self.secondview.widthAnchor.constraint(equalTo: firstview.widthAnchor, multiplier: 2).isActive = true
        self.secondview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.secondview.topAnchor.constraint(equalTo: firstview.bottomAnchor, constant: 10).isActive = true
        self.secondview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
}

// preview 사용해서 바로바로 확인
#if DEBUG
import SwiftUI
struct ViewControllerRepresnetable: UIViewControllerRepresentable{
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            ViewControllerRepresnetable()
                .previewDevice("iPhone 12")
                .previewDisplayName("아이폰12")
        }
    }
}
#endif

