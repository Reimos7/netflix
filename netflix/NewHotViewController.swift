//
//  NewHotViewController.swift
//  netflix
//
//  Created by 홍석평 on 5/25/24.
//

import UIKit

class NewHotViewController: UIViewController {

    // 버튼
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    // 레이블
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    // 텍스트 필드
    @IBOutlet var mainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .black
        
        mainTextField.backgroundColor = .gray
        mainTextField.placeholder = "게임,시리즈,영화를 검색하세요..."
        
        firstButton.setImage(UIImage(named: "blue"), for: .normal)
        firstButton.setTitle("공개 예정", for: .normal)
        firstButton.setTitleColor(.black, for: .normal)
        firstButton.backgroundColor = .white
        firstButton.layer.cornerRadius = 15
        
        
        secondButton.setImage(UIImage(named: "green"), for: .normal)
        secondButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        secondButton.setTitleColor(.black, for: .normal)
        secondButton.backgroundColor = .white
        secondButton.layer.cornerRadius = 15
        
        
        thirdButton.setImage(UIImage(named: "pink"), for: .normal)
        thirdButton.setTitle("TOP 10 시리즈", for: .normal)
        //thirdButton.contentHorizontalAlignment = .center
        thirdButton.setTitleColor(.black, for: .normal)
        thirdButton.backgroundColor = .white
        thirdButton.layer.cornerRadius = 15

        
    }
    
    // 공개 예정 버튼 클릭시
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        
        firstButton.backgroundColor = .white
        
        firstLabel.text = "이런! 찾으시는 작품이 없습니다."
        firstLabel.textAlignment = .center
        firstLabel.textColor = .white
        
        secondLabel.text = "다른 검색어를 입력해보세요 :)"
        secondLabel.textAlignment = .center
        secondLabel.textColor = .gray
        
        // 다른 버튼 배경색 지우기 -> 회색 배경
        secondButton.backgroundColor = .gray
        thirdButton.backgroundColor = .gray
       
    }
    
    // 모두의 인기 콘텐츠 클릭시
    
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        // 다시 원래대로 흰색 변경
        secondButton.backgroundColor = .white
        // 다른 버튼 배경색 지우기 -> 회색 배경
        firstButton.backgroundColor = .gray
        thirdButton.backgroundColor = .gray
        
        firstLabel.text = "인기 컨텐츠는 제작중!!"
        firstLabel.font = .boldSystemFont(ofSize: 20)
        firstLabel.textAlignment = .center
        firstLabel.textColor = .white
        
        secondLabel.text = "인기 컨텐츠는 새 단장 중입니다 :)"
        secondLabel.textAlignment = .center
        secondLabel.textColor = .gray
    }
    
    
    @IBAction func thirdButtonClicked(_ sender: UIButton) {
        // 다시 원래대로 흰색 변경
        firstButton.backgroundColor = .white
        thirdButton.backgroundColor = .white
       
        firstLabel.text = "TOP 10 시리즈 입니다!"
        firstLabel.font = .boldSystemFont(ofSize: 20)
        firstLabel.textAlignment = .center
        firstLabel.textColor = .white
        
        secondLabel.text = "TOP 10는 새 단장 중입니다 :)"
        secondLabel.textAlignment = .center
        secondLabel.textColor = .gray
        
        
        
        
        
    }
    
    
    
}
