//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 이충현 on 2021/02/03.
//

import UIKit

//비디오 관련 헤더
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInernalMovie(_ sender: UIButton) {
        // 내부파일 mp4
        // 1.비디오 파일명을 사용하여 비디오가 저장된 앱 내부의 파일 경로를 받아온다
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        // 2.앱 내부의 파일명을 NSURL 형식으로 변경
        let url = NSURL(fileURLWithPath: filePath!)
//        // 3.AVPlayerViewController의 인스턴스 생성
//        let playerController = AVPlayerViewController()
//        // 4.앞에서 얻은 비디오 URL로 초기화된 AVPlayer의 인스턴스를 생성
//        let player = AVPlayer(url: url as URL)
//        // 5.AVPlayerViewController의 player 속성에 위에서(4번) 생성한 AVPlayer인스턴스 할당
//        playerController.player = player
//
//        //6. 비디오를 재생
//        self.present(playerController, animated: true) {
//            player.play()
//        }
        //url을 얻은 후 playVideo 함수 호출 -> 이와 같이 하면 소스가 간략해지고 수정하기 편리함
        playVideo(url: url)
    }
    
    @IBAction func btnPlayIneralMovie2(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "Mountaineering", ofType: "mov")
        let url = NSURL(fileURLWithPath: filePath!)
        playVideo(url: url)
    }
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        // 외부 파일 mp4
        
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        
//        let playerController = AVPlayerViewController()
//
//        let player = AVPlayer(url: url as URL)
//
//        playerController.player = player
//
//        self.present(playerController, animated: true) {
//            player.play()
//        }
        
        //url을 얻은 후 playVideo 함수 호출 -> 이와 같이 하면 소스가 간략해지고 수정하기 편리함
        playVideo(url: url)
    }
    
    @IBAction func btnPlayExternalMovie2(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/ijybpprsmx0bgre/Seascape.mov")!
        playVideo(url: url)
    }
    
    
    // url을 인수로 받는 playVideo함수 생성 - 비디오 재생 함수
    private func playVideo(url: NSURL) {
        // 위에서 만든 두 액션함수를 보면 url을 만드는 내용만 다르고 이 외는 동일
        // 이와 같이 동일한 함수를 만들어 놓고 사용하면 편리함
        // 따라서 비디오 재생하는 코드는 앞의 내용과 같기 때문에 앞에서 쓴 코드를 가져다 쓸것
        
        // 3.AVPlayerViewController의 인스턴스 생성
        let playerController = AVPlayerViewController()
        // 4.앞에서 얻은 비디오 URL로 초기화된 AVPlayer의 인스턴스를 생성
        let player = AVPlayer(url: url as URL)
        // 5.AVPlayerViewController의 player 속성에 위에서(4번) 생성한 AVPlayer인스턴스 할당
        playerController.player = player
        
        //6. 비디오를 재생
        self.present(playerController, animated: true) {
            player.play()
        }
        
    }
}

