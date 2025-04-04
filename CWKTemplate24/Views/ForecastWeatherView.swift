//
//  ForecastWeatherView.swift
//  CWKTemplate24
//
//  Created by girish lukka on 23/10/2024.
//

import SwiftUI

struct ForecastWeatherView: View {

    // MARK:  set up the @EnvironmentObject for WeatherMapPlaceViewModel
        @EnvironmentObject var weatherMapPlaceViewModel: WeatherMapPlaceViewModel


    var body: some View {
        VStack{
            HourlyWeatherView() // Similar to EPLClub Card
            
            DailyWeatherView() // Similar to EPLClub Row View
        }
        // add modifiers and image to mirror the design required
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("sky").resizable().ignoresSafeArea())
    }
}

#Preview {
    ForecastWeatherView()
        .environmentObject(WeatherMapPlaceViewModel())
}
