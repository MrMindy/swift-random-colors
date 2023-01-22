//
//  ColorViewControler.swift
//  RandomColors
//
//  Created by Gustavo Nunes Pereira on 17/01/23.
//

import UIKit

class ColorViewControler: UIViewController {
    
    var colors: [UIColor] = [];
    
    enum Cells {
        static let colorCell: String = "ColorCell";
    }
    
    enum Segues {
        static let toDetail: String = "ToColorDetail";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        addNewColor();
    }
    
    
    func addNewColor() {
        for _ in 0..<50 {
            colors.append(.random());
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destine   = segue.destination as! ColorDetailViewController;
        destine.color = sender as? UIColor;
    }

}

extension ColorViewControler: UITableViewDataSource, UITableViewDelegate {
    
    /**
     This function represents how many rows the TableView will have.
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count;
    }
    
    /**
     This fuction represents how each row will be displayed.
     this code is fired up, automatically, 'cause that's delegation functionality
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell();
        };
        
        cell.backgroundColor = colors[indexPath.row];
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.toDetail, sender: colors[indexPath.row]);
    }
    
}
