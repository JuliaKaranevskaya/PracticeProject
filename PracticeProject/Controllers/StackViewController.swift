//
//  StackViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 27.05.21.
//

import UIKit

class StackViewController: UIViewController {

    
    fileprivate let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .white
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    fileprivate let imageView1: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image1"))
        return imageView
    }()
    
    fileprivate let imageView2: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image2"))
        return imageView
    }()
    
    fileprivate let imageView3: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image3"))
        return imageView
    }()
    
    fileprivate let imageView4: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image4"))
        return imageView
    }()
    
    fileprivate let imageView5: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "image5"))
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setStackViewConstraints()
        setStackViewImages()
        setImagesMode()
        setImagesBounds()

    }
    
    
    fileprivate func setStackViewConstraints() {
        view.addSubview(stackView)
        stackView.heightAnchor.constraint(equalToConstant: view.frame.height - 100).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    fileprivate func setStackViewImages() {
        stackView.addArrangedSubview(imageView1)
        stackView.addArrangedSubview(imageView2)
        stackView.addArrangedSubview(imageView3)
        stackView.addArrangedSubview(imageView4)
        stackView.addArrangedSubview(imageView5)
    }
    
    fileprivate func setImagesMode() {
        imageView1.contentMode = .scaleAspectFill
        imageView2.contentMode = .scaleAspectFill
        imageView3.contentMode = .scaleAspectFill
        imageView4.contentMode = .scaleAspectFill
        imageView5.contentMode = .scaleAspectFill
    }
    
    fileprivate func setImagesBounds() {
        imageView1.clipsToBounds = true
        imageView2.clipsToBounds = true
        imageView3.clipsToBounds = true
        imageView4.clipsToBounds = true
        imageView5.clipsToBounds = true
    }
    

}
