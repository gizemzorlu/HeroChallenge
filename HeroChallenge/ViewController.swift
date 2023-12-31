//
//  ViewController.swift
//  HeroChallenge
//
//  Created by Gizem Zorlu on 21.08.2023.
//

import Hero
import SnapKit
import UIKit

class ViewController: UIViewController {

    let imageView: UIImageView = UIImageView()
    let buttonUp: UIButton = UIButton()
    let buttonRight: UIButton = UIButton()
    let buttonDown: UIButton = UIButton()
    let buttonLeft: UIButton = UIButton()
    let arrowImageView: UIImageView = UIImageView()
    var animations: [HeroDefaultAnimationType] = [
      .push(direction: .left),
      .pull(direction: .left),
      .slide(direction: .leading),
      .zoomSlide(direction: .trailing),
      .cover(direction: .up),
      .uncover(direction: .up),
      .pageIn(direction: .left),
      .pageOut(direction: .left),
      .fade,
      .zoom,
      .zoomOut,
      .none
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        
        arrowImageView.hero.id = "first"
        
        view.backgroundColor = .white
        
       
        imageView.image = UIImage(named: "maze")
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(300)
        }
        
      
        arrowImageView.image = UIImage(systemName: "person.fill")
        view.addSubview(arrowImageView)
        arrowImageView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom)
            make.centerX.equalToSuperview().offset(40)
            make.height.width.equalTo(30)
        }
        
        
        buttonUp.setBackgroundImage(UIImage(systemName: "arrow.up"), for: .normal)
        buttonUp.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(buttonUp)
        buttonUp.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(100)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(100)
        }
        
        
        buttonLeft.setBackgroundImage(UIImage(systemName: "arrow.left"), for: .normal)
        view.addSubview(buttonLeft)
        buttonLeft.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(200)
            make.left.equalToSuperview().offset(50)
            make.height.width.equalTo(100)
        }
        
        
        buttonRight.setBackgroundImage(UIImage(systemName: "arrow.right"), for: .normal)
        view.addSubview(buttonRight)
        buttonRight.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(200)
            make.right.equalToSuperview().offset(-50)
            make.height.width.equalTo(100)
        }
        
        
        buttonDown.setBackgroundImage(UIImage(systemName: "arrow.down"), for: .normal)
        view.addSubview(buttonDown)
        buttonDown.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(300)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(100)
        }
        
        
        
    }
    
    @objc func buttonTapped() {
        let vc = SecondVC()
        vc.modalPresentationStyle = .fullScreen
        vc.hero.isEnabled = true
//        vc.hero.modalAnimationType = HeroDefaultAnimationType.slide(direction: .up)
        present(vc, animated: true, completion: nil)
         
                }

}

