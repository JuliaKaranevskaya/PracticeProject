//
//  FourthViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 11.05.21.
//

import UIKit

//class FourthViewController: UIViewController {
//
//    private let button: UIButton = {
//        let button = UIButton()
//        button.setTitle("My avatar", for: .normal)
//        button.backgroundColor = .systemPink
//        button.setTitleColor(.white, for: .normal)
//        button.layer.cornerRadius = 20
//        button.addTarget(self, action: #selector(addPhoto), for: .touchUpInside)
//        return button
//    }()
//
//    private let imageView: UIImageView = {
//        let view = UIImageView()
//        view.backgroundColor = .blue
//        view.layer.cornerRadius = 100
//        view.layer.masksToBounds = true
//        return view
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(button)
//        view.addSubview(imageView)
//        setButton()
//        setImageView()
//
//    }
//
//    @objc private func addPhoto() {
//        let controller = UIImagePickerController()
//        controller.allowsEditing = true
//        controller.sourceType = .photoLibrary
//        controller.delegate = self
//        present(controller, animated: true)
//
//    }
//
//    private func setButton() {
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
//    }
//
//    private func setImageView() {
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20).isActive = true
//        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//
//    }
//
//
//}
//
//extension FourthViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
//            imageView.image = image
//        }
//
//        picker.dismiss(animated: true, completion: nil)
//    }
//
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
//}

class FourthViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemPink
        return imageView
    }()
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        view.backgroundColor = .systemTeal
        view.addSubview(button)
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setButton()
        setImageView()
    }
    
    @objc private func tap() {
        let controller = UIImagePickerController()
        controller.allowsEditing = true
        controller.sourceType = .photoLibrary
        controller.delegate = self
        present(controller, animated: true)
    }
    
    private func setButton() {
        button.frame = CGRect(x: 40, y: view.safeAreaInsets.top + 80, width: view.frame.size.width - 80, height: 50)
    }
    
    private func setImageView() {
        imageView.frame = CGRect(x: 40, y: view.safeAreaInsets.top + button.frame.size.height + 80 + 20, width: view.frame.size.width - 80, height: 100)
        
    }
    
}

extension FourthViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
                   imageView.image = image
               }
       
               picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
