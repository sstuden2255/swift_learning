//
//  ContentView.swift
//  UnitConverter
//
//  Created by Simon Studen on 8/22/22.
//

import SwiftUI


struct ContentView: View {
    @State private var convertFromUnit = "m"
    @State private var convertToUnit = "ft"
    @State private var unitValue: Double = 0.0
    
    let unitTypes = ["m", "km", "ft", "yd", "mi"]
    
    var convertedValue: String {
        switch convertToUnit {
        case "m":
            return unitsToConvert.converted(to: UnitLength.meters).formatted()
        case "km":
            return unitsToConvert.converted(to: UnitLength.kilometers).formatted()
        case "ft":
            return unitsToConvert.converted(to: UnitLength.feet).formatted()
        case "yd":
            return unitsToConvert.converted(to: UnitLength.yards).formatted()
        case "mi":
            return unitsToConvert.converted(to: UnitLength.miles).formatted()
        default:
            return unitsToConvert.converted(to: UnitLength.meters).formatted()
        }
    }
    
    private var unitsToConvert: Measurement<Dimension> {
        switch convertFromUnit {
        case "m":
            return Measurement(value: unitValue, unit: UnitLength.meters)
        case "km":
            return Measurement(value: unitValue, unit: UnitLength.kilometers)
        case "ft":
            return Measurement(value: unitValue, unit: UnitLength.feet)
        case "yd":
            return Measurement(value: unitValue, unit: UnitLength.yards)
        case "mi":
            return Measurement(value: unitValue, unit: UnitLength.miles)
        default:
            return Measurement(value: unitValue, unit: UnitLength.meters)
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Units to Convert From", selection: $convertFromUnit ) {
                        ForEach(unitTypes, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Units to covert from")
                }
                Section {
                    Picker("Units to Convert To", selection: $convertToUnit ) {
                        ForEach(unitTypes, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Units to covert to")
                }
                Section {
                    TextField("Enter an amount to convert", value: $unitValue, format: .number)
                } header: {
                    Text("Enter amount of units to convert")
                }
                Section {
                    Text(convertedValue)
                } header: {
                    Text("Converted Units")
                }
            }
            .navigationTitle("UnitConverter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
