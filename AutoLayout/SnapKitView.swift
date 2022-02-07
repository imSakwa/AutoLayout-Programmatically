//
//  SnapKitView.swift
//  AutoLayout
//
//  Created by ChangMin on 2022/01/30.
//

import UIKit
import SnapKit
import Then
import SwiftUI

class SnapKitView: UIViewController {
    
    let bigView = UIView().then {
        $0.backgroundColor = .lightGray
    }
    
    let titleLabel = UILabel().then {
        $0.text = "가나다라마바사아자차카타파하"
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.textColor = .white
        $0.backgroundColor = .black
    }
    
    let rightStack = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 16
        $0.backgroundColor = .red
    }
    
    let imageOne = UIImageView().then {
        $0.image = UIImage(systemName: "square.and.arrow.up")
    }
    
    let imageTwo = UIImageView().then {
        $0.image = UIImage(systemName: "folder")
    }
    
    let imageThree = UIImageView().then {
        $0.image = UIImage(systemName: "doc.text.fill")
    }
    
    let thisView = UIView().then {
        $0.backgroundColor = .brown
    }
    
    let thatView = UIView().then {
        $0.backgroundColor = .darkGray
    }
    
    let datePickerView = UIDatePicker().then {
        // default 값은 .compact
        $0.preferredDatePickerStyle = .automatic
        $0.datePickerMode = .date
        $0.locale = Locale(identifier: "ko-KR")
        $0.timeZone = .autoupdatingCurrent
    }
    
    let switchBtn = UISwitch().then {
        $0.isOn = false
        $0.addTarget(self, action: #selector(clickSwitch), for: .valueChanged)
    }
    

    
    private func setLayout() {
        self.view.addSubview(bigView)
        bigView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(10)
            $0.height.equalTo(50)
        }
        
        bigView.addSubview(titleLabel)
        bigView.addSubview(rightStack)
        
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(rightStack.snp.leading).offset(-10)
        }
        
        rightStack.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(10)
            $0.centerY.equalToSuperview()
        }
        
        rightStack.addArrangedSubview(imageOne)
        rightStack.addArrangedSubview(imageTwo)
        rightStack.addArrangedSubview(imageThree)
        
        imageOne.snp.makeConstraints {
            $0.size.equalTo(24)
        }
        
        imageTwo.snp.makeConstraints {
            $0.size.equalTo(24)
        }
        
        imageThree.snp.makeConstraints {
            $0.size.equalTo(24)
        }
        
        self.view.addSubview(thisView)
        self.view.addSubview(thatView)
        
        thisView.snp.makeConstraints {
//            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(80)
            $0.leading.equalToSuperview().inset(10)
            $0.width.equalTo(100)
            $0.height.equalTo(30)
        }
        
        thatView.snp.makeConstraints {
            $0.leading.greaterThanOrEqualTo(thisView.snp.trailing).offset(10)
            $0.top.equalTo(thisView.snp.top)
            $0.width.equalTo(100)
            $0.height.equalTo(thisView.snp.height)
        }
        
        self.view.addSubview(datePickerView)
        datePickerView.snp.makeConstraints {
            $0.top.equalTo(thisView.snp.bottom).offset(20)
            $0.centerX.equalToSuperview().offset(-20)
            $0.height.equalTo(30)
        }
        
        switchBtn.addTarget(self, action: #selector(clickSwitch), for: .valueChanged)
        self.view.addSubview(switchBtn)
        switchBtn.snp.makeConstraints {
            $0.leading.equalTo(datePickerView.snp.trailing).offset(10)
            $0.height.equalTo(10)
            $0.top.equalTo(datePickerView.snp.top)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setLayout()
        self.navigationController?.title = "SnapKit AutoLayout"
        
    }
    
    @objc func clickSwitch(_ sender: UISwitch) {
        print("clickSwitch")
        
        if sender.isOn && datePickerView.datePickerMode == .date {
            datePickerView.datePickerMode = .time
        } else if !sender.isOn && datePickerView.datePickerMode == .time{
            datePickerView.datePickerMode = .date
        }
    }
}

// preview 사용해서 바로바로 확인
#if DEBUG
import SwiftUI
struct SnapKitViewRepresnetable: UIViewControllerRepresentable{
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    @available(iOS 13.0, *)
    func makeUIViewController(context: Context) -> some UIViewController {
        SnapKitView()
    }
}

struct SnapKitView_Previews: PreviewProvider {
    static var previews: some View{
        Group {
            SnapKitViewRepresnetable()
                .previewDevice("iPhone 13")
                .previewDisplayName("아이폰13")
        }
    }
}
#endif
