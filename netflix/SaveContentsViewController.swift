//
//  SaveContentsViewController.swift
//  netflix
//
//  Created by 홍석평 on 5/25/24.
//

import UIKit

class SaveContentsViewController: UIViewController {

    // 레이블
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    // 이미지
    @IBOutlet var saveContentsList: UIImageView!
    // 버튼
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black
        
        firstLabel.text = "'나만의 자동 저장' 기능"
        firstLabel.textAlignment = .center
        firstLabel.font = .boldSystemFont(ofSize: 25)
        firstLabel.textColor = .white
        
        secondLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        secondLabel.textAlignment = .center
        // 3줄로 보여줌
        secondLabel.numberOfLines = 3
        secondLabel.textColor = .white
       
        saveContentsList.image = UIImage(named: "dummy")
        
        firstButton.setTitle("설정하기", for: .normal)
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = .blue
        
        
        secondButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        secondButton.setTitleColor(.black, for: .normal)
        secondButton.backgroundColor = .white
        
        
        
        
        
    }
    


}
