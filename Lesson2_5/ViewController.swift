//
//  ViewController.swift
//  Lesson2_5
//
//  Created by Evgeny Mastepan on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    let leftIndent: CGFloat = 15
    
    lazy var mainTable: UITableView = {
        $0.dataSource = self
        $0.layer.cornerRadius = 30
        
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return $0
    }(UITableView(frame: CGRect(x: leftIndent, y: leftIndent, width: view.frame.maxX - leftIndent - leftIndent, height: view.frame.maxY / 3 * 2), style: .grouped))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        view.addSubview(mainTable)
    
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return TableItem.mockData().count
        } else {
            return TableItem.mockActorsData().count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        var localArray: [TableItem] = []
        if indexPath.section == 0 {
            localArray = TableItem.mockData()
        } else {
            localArray = TableItem.mockActorsData()
        }
        
        config.text = localArray[indexPath.row].text
        config.image = UIImage(named: localArray[indexPath.row].image)
        config.secondaryText = localArray[indexPath.row].descText
        config.imageProperties.cornerRadius = 3
        
        cell.contentConfiguration = config
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Персоналии"
        case 1: return "Актёры"
        default: return "Всё фигня!"
        }
    }
}

