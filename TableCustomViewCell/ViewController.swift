//
//  ViewController.swift
//  TableCustomViewCell
//
//  Created by Neeraja Sarasan on 08/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var strings: [String] = ["apple", "orange","mango"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,  for: indexPath ) as! CustomTableViewCell
        cell.customImage.image = UIImage(systemName: "square.and.arrow.up")
        cell.customLabel.text = strings[indexPath.row]
        switch indexPath.row {
        case 0: cell.customImage.tintColor = .orange
        case 1: cell.customImage.tintColor = .red
        case 2: cell.customImage.tintColor = .green
        default: "break"
        }
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewControllerNew = storyBoard.instantiateViewController(identifier: "tablecell")
        viewControllerNew.navigationItem.title = strings[indexPath.row]
        navigationController?.pushViewController(viewControllerNew, animated: true )
    }
}
