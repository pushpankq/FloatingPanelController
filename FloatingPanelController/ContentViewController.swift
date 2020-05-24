//
//  ContentViewController.swift
//  FloatingPanelController
//
//  Created by Puspank Kumar on 24/05/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Noida", "Gurugram", "New Delhi", "Saharanpur", "Dehradun", "Roorkee", "Haridwar", "Almora", "Nakur"]
    var detailArray = [
        "Noida is a planned city in India’s northern state of Uttar Pradesh. The riverside Okhla Bird Sanctuary is home to migratory and native birds, plus jackals and butterflies.",
        
        "Gurgaon is a city just southwest of New Delhi in northern India. It’s known as a financial and technology hub. The Kingdom of Dreams is a large complex for theatrical shows.",
        "New Delhi is an urban district located in the city of Delhi. New Delhi serves as the capital of India and the seat of all three branches of the Government of India.",
        "Saharanpur is a city and a municipal corporation in the Indian state of Uttar Pradesh. It is the administrative headquarters of Saharanpur district.",
        "Dehradun is the capital of the Indian state of Uttarakhand, near the Himalayan foothills. At its core is the 6-sided Ghanta Ghar clock tower.",
        "Roorkee is a city in North India and a Municipal Corporation in the Haridwar district of the state of Uttarakhand, India. It is spread over a flat terrain under Sivalik Hills of Himalayas.",
        "Haridwar is an ancient city and important Hindu pilgrimage site in North India's Uttarakhand state, where the River Ganges exits the Himalayan foothills.",
        "Almora is a municipal board and a cantonment town in the state of Uttarakhand, India. It is the administrative headquarters of Almora district.",
        "Nakur is a town and a municipal board in Saharanpur district in the Indian state of Uttar Pradesh."
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
    }
}


extension ContentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle , reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = detailArray[indexPath.row]
        cell.detailTextLabel?.numberOfLines = 0
        return cell
    }
}

