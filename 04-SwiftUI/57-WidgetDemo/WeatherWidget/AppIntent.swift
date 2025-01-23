//
//  AppIntent.swift
//  WeatherWidget
//
//  Created by Jungman Bae on 1/22/25.
//

import WidgetKit
import AppIntents

struct WeatherLocation: AppEntity {
    let locationData: LocationData
    
    var id: String { locationData.id }
    var name: String { locationData.city }
    
    
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Weather Location"
    static var defaultQuery = WeatherLocationQuery()
    
    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(locationData.city) \(id)")
    }

    static let allLocations: [WeatherLocation] = [
        WeatherLocation(locationData: LocationData.london),
        WeatherLocation(locationData: LocationData.miami),
    ]
}

struct WeatherLocationQuery: EntityQuery {
    func entities(for identifiers: [String]) async throws -> [WeatherLocation] {
        return WeatherLocation.allLocations.filter( { identifiers.contains($0.id) })
    }
    
    func suggestedEntities() async throws -> some ResultsCollection {
        return WeatherLocation.allLocations
    }
    
    func defaultResult() async -> WeatherLocation? {
        try? await suggestedEntities().first
    }
}

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource { "Configuration" }
    static var description: IntentDescription { "This is an example widget." }

    @Parameter(title: "Location", default: WeatherLocation.allLocations.first )
    var location: WeatherLocation
    
    
    init(location: WeatherLocation) {
        self.location = location
    }
    
    init() {}
}
