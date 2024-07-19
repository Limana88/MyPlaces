//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Милана Махсотова on 19.07.2024.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
        "Малабар", "Черновар", "Утка в Котелке",
        "Beerhouse", "Экстра Лаунж By Extra Project",
        "Лофт Ресторан На Крыше", "Mathilde",
        "Ресторан 4 Kухни", "Приют Холостяка", "Паста Bar"
        ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Kazan", type: "Restaurant", image: place))
        }
        
        return places
    }
    
}
