//
//  SixthViewController.swift
//  PracticeProject
//
//  Created by Юлия Караневская on 16.05.21.
//

import UIKit

struct Categories {
    var title: String
    var items: [String]
}

class SixthViewController: UIViewController {
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    var data: [Categories] = [
        Categories(title: "Fruits", items: ["Apple", "Banana", "Grape", "Orange", "Lemon"]),
        Categories(title: "Colors", items: ["Red", "Blue", "White", "Green", "Yellow"]),
        Categories(title: "Cars", items: ["Fiat", "BMW", "Mercedes", "Toyota", "Lexus"]),
        Categories(title: "Coffee", items: ["Latte", "Americano", "Espresso", "Capuccino", "Macciato"]),
        Categories(title: "Drinks", items: ["Tea", "Water", "Cola", "Merinda", "Sprite"])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func viewDidLayoutSubviews() {
        tableView.frame = view.bounds
    }

}

extension SixthViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let category = data[indexPath.row]
        let controller = ListViewController(items: category.items)
        controller.title = category.title
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension SixthViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        return cell
    }
    
    
}
