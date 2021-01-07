//
//  ContentView.swift
//  miniProject
//
//  Created by Hanan Dashti on 31/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter : [String] = ["1" , "2", "3", "4", "5", "6", "7"]
    
    var body: some View {
        NavigationView{
        
        List {
            
            
            Text("مرحبا بك، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                .font(.body)
            
            ForEach(pic1){ bn in
                
                
                NavigationLink(
                    
                            destination: BicycleDetails(detail: bn),
                            label: {
                                HStack{
                                    Text(bn.namePic)
                                        .font(.largeTitle)
                                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                        .background(Color.blue)
                                        .clipShape(Circle())
                                        .padding()
                                    bicycles(nob: bn.namePic)
                                
                                }
                            }
                               )
                
            }


            
            
            
        }.navigationTitle("تأجير الدراجات ")
        }
            
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bicycles: View {
    
    var nob : String
    var body: some View {
        VStack{
            
          Image(nob)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 100)
                .background(Color.white)

            
        
        }
    }
}






