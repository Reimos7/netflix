//
//  HomeViewController.swift
//  netflix
//
//  Created by 홍석평 on 5/25/24.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet var mainMovieImageView: UIImageView!
    @IBOutlet var firstMovieInfo: UIImageView!
    @IBOutlet var secondMovieInfo: UIImageView!
    @IBOutlet var thirdMovieInfo: UIImageView!
    
    
    @IBOutlet var playButton: UIButton!
    
    @IBOutlet var myList: UIButton!
    
    var mainMovieImageArray: [UIImage] = [#imageLiteral(resourceName: "육사오"), #imageLiteral(resourceName: "밀수"), #imageLiteral(resourceName: "범죄도시3"), #imageLiteral(resourceName: "오펜하이머") , #imageLiteral(resourceName: "더퍼스트슬램덩크") ]
    var subMovieImageArray: [UIImage] = [#imageLiteral(resourceName: "범죄도시3") , #imageLiteral(resourceName: "오펜하이머") , #imageLiteral(resourceName: "육사오"), #imageLiteral(resourceName: "아바타물의길") , #imageLiteral(resourceName: "콘크리트유토피아") ,  #imageLiteral(resourceName: "밀수") , #imageLiteral(resourceName: "서울의봄")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        
        self.view.backgroundColor = .black
        
        self.navigationItem.title = "고래밥님"
        self.navigationItem.titleView?.tintColor = .white
        
        playButton.setImage(UIImage(named: "play_normal"), for: .normal)
//        playButton.setImage(.playNormal, for: .normal)
        
        myList.setImage(UIImage(named: "mynetflix"), for: .normal)
        
        mainMovieImageView.image = UIImage(named: "노량")
        mainMovieImageView.contentMode = .scaleAspectFill
        mainMovieImageView.layer.cornerRadius = 20
        
        firstMovieInfo.image = UIImage(named: "서울의봄")
        firstMovieInfo.contentMode = .scaleAspectFill
        firstMovieInfo.layer.cornerRadius = 20
        
        secondMovieInfo.image = UIImage(named: "범죄도시3")
        secondMovieInfo.contentMode = .scaleAspectFill
        secondMovieInfo.layer.cornerRadius = 20
        
        thirdMovieInfo.image = UIImage(named: "밀수")
        thirdMovieInfo.contentMode = .scaleAspectFill
        thirdMovieInfo.layer.cornerRadius = 20
    }
    
    // play button 클릭시 메인 화면 및 지금 뜨는 컨텐츠 이미지 랜덤하게 변경
    @IBAction func playButtonClicked(_ sender: UIButton) {
       
        // 메인 영화 이미지를 랜덤으로 바꿈
        mainMovieImageView.image = mainMovieImageArray.randomElement()
        
        // 지금뜨는 컨텐츠 이미지를 랜덤으로 바꿈
        firstMovieInfo.image = subMovieImageArray.randomElement()
        secondMovieInfo.image = subMovieImageArray.randomElement()
        thirdMovieInfo.image = subMovieImageArray.randomElement()
        
        
    }
    
}
