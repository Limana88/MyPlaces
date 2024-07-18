//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Милана Махсотова on 18.07.2024.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
    "Малабар", "Черновар", "Утка в Котелке",
    "Beerhouse", "Экстра Лаунж By Extra Project",
    "Лофт Ресторан На Крыше", "Mathilde",
    "Ресторан 4 Kухни", "Приют Холостяка", "Паста Bar"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row ])
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
