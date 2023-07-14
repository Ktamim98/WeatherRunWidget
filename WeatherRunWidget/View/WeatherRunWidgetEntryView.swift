//
//  WeatherRunWidgetEntryView.swift
//  WeatherRunWidgetExtension
//
//  Created by Tamim Khan on 14/7/23.
//

import WidgetKit
import SwiftUI



struct WeatherRunWidgetEntryView : View {
   
    
    let entry: WeatherRunEntry

    var body: some View {
        ZStack {
            HStack(spacing: 3){
                
                
                leftWeatherView
                
                VStack(spacing: -5){
                    
                    rightTopView
                    
                    rightBottomView
                    
                }
                
            }
            
        }
        .frame(width: 358, height: 164)
        .background(Color(red: 0.59, green: 1, blue: 0.63))
        .ignoresSafeArea(.all)
       
    }
    
   
}



extension WeatherRunWidgetEntryView{
    private var leftWeatherView: some View{
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 165, height: 150)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: Color(red: 0.39, green: 0.77, blue: 1), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.13, green: 0.39, blue: 0.55), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: 0),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
              .cornerRadius(15)
            
            // weather view
            
            
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(getWeatherIcon(conditionString: entry.weather.description))
                        .frame(width: 22.19388, height: 15.53571)
                    
                    Text(entry.weather.description)
                      .font(Font.custom("Jacques Francois Shadow", size: 16.27551))
                      .foregroundColor(.black)
                }
                .padding(.top)
                
                
                Text("\(entry.weather.temperature)°\(entry.weather.unit)")
                  .font(Font.custom("Arial Rounded MT Bold", size: 40.58817))
                  .offset(x: 1)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                
                Text(getDAY())
                  .font(Font.custom("jsMath-cmbx10", size: 19.4029))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                
                Text(getDate())
                    .font(Font.custom("Inter-Regular", size: 13))
            }
           
            .padding(.leading, 0)
            .padding(.bottom)
            
        }
    }
    
    private var rightTopView: some View{
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 165, height: 79)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: Color(red: 0, green: 0.13, blue: 0.01), location: 0.00),
                    Gradient.Stop(color: Color(red: 0, green: 0.26, blue: 0.06), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: 0),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
              .cornerRadius(15)
            
            
            // oxygen level
            
            HStack(spacing: -4){
                
                VStack(alignment: .leading){
                    
                    Text("Oxygen level")
                      .font(Font.custom("JejuHallasan", size: 18))
                      .foregroundColor(.white)
                    
                    Text("75%")
                      .font(Font.custom("Arial Rounded MT Bold", size: 40))
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                    
                }
                .padding()
                
                
                Image("Group 794")
                .frame(width: 19, height: 64)
                
            }
            .padding(.leading, -20)
            
        }
    }
    
    private var rightBottomView: some View{
        ZStack{
            Image("Rectangle 4354")
            .frame(width: 165, height: 64)
            
            // step count
            
            
            HStack{
                
                HStack{
                    ZStack{
                        Image("Rectangle 4355")
                        .frame(width: 14, height: 51)
                        
                        ZStack{
                            Image("Rectangle 4339")
                            .frame(width: 14, height: 28)
                            .offset(x: -0.3, y: -11)
                            
                            VStack{
                                Image("Group 797")
                                .frame(width: 7.53697, height: 8.77855)
                                
                                
                                Text("43 %")
                                  .font(
                                    Font.custom("Saira SemiCondensed", size: 5)
                                        .weight(.medium)
                                  )
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.59, green: 1, blue: 0.63))
                                  .frame(width: 11, height: 3, alignment: .center)
                                  .rotationEffect(Angle(degrees: -90))
                            }
                            .padding(.bottom, 28)
                        }
                        
                       
                    }
                    
                    ZStack{
                        Image("Group 799")
                        .frame(width: 14, height: 51)
                        
                        VStack(spacing: 16){
                            Text("64 %")
                              .font(
                                Font.custom("Saira SemiCondensed", size: 5)
                                  .weight(.medium)
                              )
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.59, green: 1, blue: 0.63))
                              .frame(width: 11, height: 4, alignment: .center)
                              .rotationEffect(Angle(degrees: -90))
                            
                            
                            Image("Rectangle 4340")
                            .frame(width: 6.86441, height: 10.98305)
                        }
                        .padding(.bottom, 5)
                    }
                }
                
                
                VStack(spacing: -3){
                    
                    HStack(spacing: 0){
                        Image("shoe")
                        .frame(width: 24.63932, height: 13.20542)
                        .rotationEffect(Angle(degrees: 9.61))
                        
                        Text("\(entry.steps)")
                          .font(
                            Font.custom("Saira SemiCondensed", size: 21.47606)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.59, green: 1, blue: 0.63))
                          .frame(width: 78.06812, alignment: .center)
                    }
                    
                    
                    HStack(spacing: 2){
                        Text("Run:")
                          .font(Font.custom("jsMath-cmbx10", size: 19.4029))
                          .foregroundColor(Color(red: 0.59, green: 1, blue: 0.63))
                        
                        
                        Text("\(entry.distance)km")
                          .font(
                            Font.custom("Saira SemiCondensed", size: 18)
                              .weight(.medium)
                          )
                          .foregroundColor(Color(red: 0.59, green: 1, blue: 0.63))
                    }
                    .padding(.trailing, 4)
                    
                    
                    
                }
                
                
                
            }
            
        }
        .padding(.bottom, 9)
    }
    
    
    
    
    func getWeatherIcon(conditionString: String) -> String{
        let current = conditionString.lowercased()
        
        switch current{
        case _ where current.contains("partly sunny"):
            return "🌥"
        case _ where current.contains("cloudy"):
            return "☁️"
        case _ where current.contains("drizzle"):
            return "🌧"
        case _ where current.contains("sunny"):
            return "☀️"
        case _ where current.contains("clear"):
            return "🌤"
        default:
            return "🚫"
        }
    }
    
    private func getDate() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d"
        return dateFormatter.string(from: entry.date)
    }
    
    private func getDAY() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: entry.date)
    }
    
}
