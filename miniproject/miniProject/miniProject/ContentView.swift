//
//  ContentView.swift
//  miniProject
//
//  Created by Hanan Dashti on 31/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        
        List {
            
            Text("تأجير الدراجات ")
                .font(.largeTitle)
                .bold()
            Text("مرحبا بك، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                .font(.body)
            
            

            VStack{
            NavigationLink(
                
                        destination: Text("seecoouund"),
                        label: {
                            
                            bicycles()
                            
                            
                           // Image("1")
                               // .resizable()
                              // .frame(width: 80, height: 50)
                           }
                        
                           )}
            
            
            NavigationLink(
                destination: Text("ho"),
                label: {
                    bicycles()
                })
                
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    bicycles()
                })
                
                
            
            .navigationTitle("تأجير الدراجات ")
            
            
            
            }
        }
            
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bicycles: View {
    //let picture = pic
//    @State var bCoror = Image()
    var body: some View {
        VStack{
            
          Image(pic1[0].namePic)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 100)
                .background(Color.white)

            
          
          //  VStack{
                
                
               
                
                
                
          //  }
        }
    }
}
