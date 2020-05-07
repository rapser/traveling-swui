//
//  ContentView.swift
//  traveling-swui
//
//  Created by miguel tomairo on 5/6/20.
//  Copyright © 2020 Rapser. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            Home().tabItem {
                Image("home").font(.title)
            }
            Text("activity").tabItem {
                Image("activity").font(.title)
            }
            Text("search").tabItem {
                Image("search").font(.title)
            }
            Text("person").tabItem {
                Image("Setting").font(.title)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Button(action: {
                    
                }) {
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top, 15)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    Text("Experiences").fontWeight(.heavy).foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Adventures").foregroundColor(.gray)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Activities").foregroundColor(.gray)
                }
            }.padding([.top], 30)
                .padding(.bottom, 15)
            
            MiddleView()
            
            BottomView().padding(.top, 10)
            
        }.padding()
 
    }
}

struct BottomView: View {
    
    var body: some View {
        
        VStack {
            HStack {
                
                Text("Que quieres tu?").fontWeight(.heavy)
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("View all").foregroundColor(.gray)
                }
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 35){
                    
                    VStack(spacing: 8){
                        
                        Image("mcard1").renderingMode(.original)
                        Text("Hiking").foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 8){
                        
                        Image("mcard2").renderingMode(.original)
                        Text("Ski").foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 8){
                        
                        Image("mcard3").renderingMode(.original)
                        Text("Ski diving").foregroundColor(.gray)
                    }
                    
                    VStack(spacing: 8){
                        
                        Image("mcard4").renderingMode(.original)
                        Text("Skate board").foregroundColor(.gray)
                    }
                }
            }.padding(.leading, 20)
                .padding([.top, .bottom], 15)
        }
    }
}

struct Detail: View {
    
    var body: some View {
        
        VStack{
            
            Image("topbg").resizable().aspectRatio(1.35, contentMode: .fill).frame(width: UIScreen.main.bounds.width,height: 500).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                
                VStack(alignment: .leading){
                    detailTop()
                    detailMiddle()
                    detailBottom()
                }
                
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -75)
        }
        
    }
}

struct detailMiddle: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack(spacing: 5){
                Image("map").renderingMode(.original)
                Text("kecamatan klojen").foregroundColor(Color("bg"))
            }
            
            HStack(spacing: 8){
                
                ForEach(0..<5){_ in
                    
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            
            Text("Personas").fontWeight(.heavy)
            Text("Número de personas en tu grupo").foregroundColor(.gray)
            
            HStack(spacing: 6){
                
                ForEach(0..<5){i in
                    
                    Button(action: {
                        
                    }) {
                        Text("\(i + 1)").foregroundColor(.white).padding(20)
                    }.background(Color("bg"))
                    .cornerRadius(8)
                    
                }
            }
            
        }.padding(.horizontal, 15)
    }
}

struct detailTop: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack{
                
                VStack(alignment: .leading){
                    
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                }
                
                Spacer()
                
                Text("$199").foregroundColor(Color("bg")).font(.largeTitle)
            }
            
        }.padding()
    }
}

struct detailBottom: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            Text("Descripcion").fontWeight(.heavy)
            Text("Legendario reino incaico o pre-incaico, supuestamente localizado al sur de la Amazonia, en la región fronteriza que actualmente ocupan Perú, Brasil y Bolivia. La leyenda se originó en la interpretación de algunos escritos del siglo XVI").foregroundColor(.gray)
            
            HStack(spacing: 8){
                Button(action: {
                    
                }) {
                    Image("Save").renderingMode(.original)
                }
                
                Button(action: {
                    
                }) {
                    
                    HStack{
                        Text("Book your Experience")
                        Image("arrow").renderingMode(.original)
                    }.foregroundColor(.white)
                    .padding()
                    
                }.background(Color("bg"))
                .cornerRadius(8)
                
            }.padding(.top, 15)
            
        }.padding()
        
    }
}

struct Rounded: Shape {
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        
        return Path(path.cgPath)
    }
    
}

struct MiddleView: View {
    
    @State var show = false
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
                       
           HStack {
               
               VStack(alignment: .leading, spacing: 12) {
                   
                   Button(action: {
                       
                   }) {
                       
                       Image("Card1").renderingMode(.original)
                   }
                   
                   Text("Finish Time").fontWeight(.heavy)
                   
                   HStack(spacing: 5) {
                       
                       Image("map").renderingMode(.original)
                       Text("Vancouver, CA").foregroundColor(.gray)
                   }
               }
               
               VStack(alignment: .leading, spacing: 12) {
                   
                   Button(action: {
                        self.show.toggle()
                   }) {
                       
                        Image("Card2").renderingMode(.original)
                   }
                   
                   Text("Forest camping").fontWeight(.heavy)
                   
                   HStack(spacing: 5) {
                       
                       Image("map").renderingMode(.original)
                       Text("kecamatan Klojen").foregroundColor(.gray)
                   }
               }
                           
           }
        }.sheet(isPresented: $show) {
            Detail()
        }
    }
}
