//
//  ViewController.swift
//  iOS_colorishScreens
//
//  Created by Abdelrady on 10/24/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class colorPaletteVC: UIViewController {
    
    // specify colors needed
    let colors = 50
    var colorsArr = [UIColor]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorsArr = createColorsArr(with: colors)
    }

    func createColorsArr(with colorNo: Int) -> [UIColor]
    {
        var colorArr = [UIColor]()
        
        for _ in 1...colorNo {
             colorArr.append(UIColor.random())
        }
        
        return colorArr
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fullColorVC = segue.destination as? fullColorVC {
            fullColorVC.backGround = sender as! UIColor
        }
        
}
}


extension colorPaletteVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: IdentifierSegeue.fullColor.rawValue, sender: colorsArr[indexPath.row])
    }
}

extension colorPaletteVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IdentifierCell.colorCell.rawValue) else {return UITableViewCell()}
        cell.backgroundColor = colorsArr[indexPath.row]
        return cell
        
    }
    
    
}

