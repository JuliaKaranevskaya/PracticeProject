//
//  ViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 10.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.clipsToBounds = true
        return scroll
    }()
    
    let alertButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemTeal
        button.setTitle("Show me Alert", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()
    
    @objc private func showAlert() {
        let alert = UIAlertController(title: "Hello", message: "Whould you like coffee?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "With pleasure!", style: .default, handler: { action in
            print("Yes")
        }))
        alert.addAction(UIAlertAction(title: "No thanks!", style: .destructive, handler: { action in
            print("No thanks")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(alertButton)
        setAlertButton()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = view.bounds
    }
    
    func setAlertButton() {
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        alertButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        alertButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }


}

