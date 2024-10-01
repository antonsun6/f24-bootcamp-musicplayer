//
//  SwiftUIView.swift
//  music_player_UI
//
//  Created by Anton Son on 9/24/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        ZStack{
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10){
                
                //top white bar
                Image(systemName: "button.horizontal.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 35, height: 5)
                    .padding(.top, -20)
                    .padding(.bottom, 0)
                
                //song image
                Image("appleMusicPicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 360, height: 360)
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                
                HStack(spacing: 90) {
                    VStack(alignment: .leading) {
                        
                        //Song Title
                        Text("Wondering Why")
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .font(.system(size: 22))
                            .padding(.top, 20)
                        
                        //band name
                        Text("The Red Clay Strays")
                            .foregroundColor(Color("iconColor"))
                            .fontWeight(.medium)
                            .font(.system(size: 21))
                    }
                    
                    //favorite + options
                    HStack(spacing: 20) {
                        Image(systemName: "star.circle.fill")
                            .resizable()
                            .foregroundColor(Color("iconColor"))
                            .frame(width: 25, height: 25)
                        Image(systemName: "ellipsis.circle")
                            .resizable()
                            .foregroundColor(Color("iconColor"))
                            .frame(width: 25, height: 25)
                    }
                }
                
                //playbar
                Image(systemName: "rectangle.fill")
                    .resizable()
                    .foregroundColor(Color("emptyBarColor"))
                    .frame(width: 335, height: 7)
                    .padding(.top, 20)
                
                // time-in + time-left
                HStack(spacing: 278){
                    Text("0:00")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("emptyBarColor"))
                        .font(.system(size: 10))
                    
                    Text("-3:53")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("emptyBarColor"))
                        .font(.system(size: 10))
                }
                
                // back + play + forward
                HStack(spacing: 80) {
                    Image(systemName: "backward.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 25)
                        .padding(.top, 30)
                        .padding(.bottom, 40)
                    Image(systemName: "pause.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .frame(width: 27, height: 35)
                        .padding(.top, 30)
                        .padding(.bottom, 40)
                    Image(systemName: "forward.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 35, height: 25)
                        .padding(.top, 30)
                        .padding(.bottom, 40)
                }
                
                //volume bar + icons
                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .frame(width: 9, height: 9)
                    Image(systemName: "rectangle.fill")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .frame(width: 280, height: 5)
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .frame(width: 15, height: 10)
                }
                
                //lyrics + bluetooth + queue
                HStack(spacing: 105) {
                    Image(systemName: "quote.bubble")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 20)
                        .padding(.top, 25)
                    Image(systemName: "airplay.audio")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 20)
                        .padding(.top, 25)
                    Image(systemName: "list.bullet")
                        .resizable()
                        .foregroundColor(Color("barColor"))
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 15)
                        .padding(.top, 25)
                }
                
                //Bottom home bar
                Image(systemName: "rectangle.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 150, height: 5)
                    .padding(.top, 40)
                    .padding(.bottom, -50)
                
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
