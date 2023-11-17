//
//  SwiftUIView.swift
//  PrayTimes
//
//  Created by Norah Alfari on 01/05/1445 AH.
//

import SwiftUI

struct PrayTimeView: View {
    @StateObject var vm = Jason()
    
    
    var body: some View {
        ZStack{
            Image("Image")
                .resizable()
                .opacity(0.50)
                .ignoresSafeArea()
            
            VStack{
                
                
                Text("Date: \(vm.currentDate)")
                    .font(.largeTitle)
                    .foregroundStyle(Color.c1)
                
                
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Image(systemName: "bell.fill")
                        .padding(.horizontal)
                        .foregroundStyle(Color.c1)
                    
                    Text("Fajr: \(vm.getPrayerTimeForToday()?.Fajr.replacingOccurrences(of: "(+03)", with: "") ?? "") ")
                        .foregroundStyle(Color.c2)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                } .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.25))
                    .frame(width: 380,height: 80))
                
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    Image(systemName: "bell.fill")
                        .padding(.horizontal)
                        .foregroundStyle(Color.c1)
                    
                    Text("Duhor: \(vm.getPrayerTimeForToday()?.Dhuhr.replacingOccurrences(of: "(+03)", with: "") ?? "") ")
                        .foregroundStyle(Color.c2)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                } .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.25))
                    .frame(width: 380,height: 80))
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    Image(systemName: "bell.fill")
                        .padding(.horizontal)
                        .foregroundStyle(Color.c1)
                    
                    Text("ASR: \(vm.getPrayerTimeForToday()?.Asr.replacingOccurrences(of: "(+03)", with: "") ?? "") ")
                        .foregroundStyle(Color.c2)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                } .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.25))
                    .frame(width: 380,height: 80))
                
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    Image(systemName: "bell.fill")
                        .padding(.horizontal)
                        .foregroundStyle(Color.c1)
                    
                    Text("Magrib: \(vm.getPrayerTimeForToday()?.Maghrib.replacingOccurrences(of: "(+03)", with: "") ?? "") ")
                        .foregroundStyle(Color.c2)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                } .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.25))
                    .frame(width: 380,height: 80))
                
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    Image(systemName: "bell.fill")
                        .padding(.horizontal)
                        .foregroundStyle(Color.c1)
                    
                    Text("Isha: \(vm.getPrayerTimeForToday()?.Isha.replacingOccurrences(of: "(+03)", with: "") ?? "") ")
                        .foregroundStyle(Color.c2)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                    
                } .background(RoundedRectangle(cornerRadius: 25.0)
                    .fill(.gray.opacity(0.25))
                    .frame(width: 380,height: 80))
                
            }.padding()
            
                .onAppear(){
                    vm.fetchPrayerTimes()
                }
            
        }
    }
}
#Preview {
    PrayTimeView()
}
