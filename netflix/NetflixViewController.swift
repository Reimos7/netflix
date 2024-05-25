//
//  NetflixViewController.swift
//  netflix
//
//  Created by 홍석평 on 5/25/24.
//

import UIKit

class NetflixViewController: UIViewController {

    
    // 이름 레이블
    @IBOutlet var nameLabel: UILabel!
    
    // 텍스트 필드
    @IBOutlet var firstTextField: UITextField!
    @IBOutlet var secondTextField: UITextField!
    @IBOutlet var thirdTextField: UITextField!
    @IBOutlet var fourthTextField: UITextField!
    @IBOutlet var fifthTextField: UITextField!
    
    // 회원가입 버튼
    @IBOutlet var membershipButton: UIButton!
    // 추가 정보 입력 버튼
    @IBOutlet var infoButton: UIButton!
    
    // 토글 스위치
    @IBOutlet var toggleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        
        nameLabel.text = "JACKFLIX"
        nameLabel.font = .systemFont(ofSize: 40)
        nameLabel.textColor = .red
        nameLabel.textAlignment = .center
        
        
        firstTextField.placeholder = "이메일 주소 또는 전화번호"
        firstTextField.textAlignment = .center
        firstTextField.textColor = .white
        firstTextField.backgroundColor = .gray
        
        secondTextField.placeholder = "비밀번호"
        secondTextField.textAlignment = .center
        secondTextField.textColor  = .white
        secondTextField.backgroundColor = .gray
        
        thirdTextField.placeholder = "닉네임"
        thirdTextField.textAlignment = .center
        thirdTextField.textColor = .white
        thirdTextField.backgroundColor = .gray
        
        fourthTextField.placeholder = "위치"
        fourthTextField.textAlignment = .center
        fourthTextField.textColor = .white
        fourthTextField.backgroundColor = .gray
        
        fifthTextField.placeholder = "추천 코드 입력"
        fifthTextField.textAlignment = .center
        fifthTextField.textColor = .white
        fifthTextField.backgroundColor = .gray
        
        membershipButton.setTitle("회원가입", for: .normal)
        membershipButton.setTitleColor(.black, for: .normal)
        membershipButton.backgroundColor = .white
        
        infoButton.setTitle("추가 정보 입력", for: .normal)
        
        toggleSwitch.onTintColor = .red
        toggleSwitch.thumbTintColor = . yellow
    }
    

   
    

   
}
