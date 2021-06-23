//
//  GestureViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 23.06.21.
//

import UIKit

class GestureViewController: UIViewController {
    
    let pinkView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(imageAppear)))
    }
    
    @objc func imageAppear(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            setupPinkView()
            print("Tapped")
        }
        
        if gesture.state == .ended {
            pinkView.removeFromSuperview()
        }
        
    }
    
    func setupPinkView() {
        view.addSubview(pinkView)
        pinkView.translatesAutoresizingMaskIntoConstraints = false
        pinkView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        pinkView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        pinkView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        pinkView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    }


}
