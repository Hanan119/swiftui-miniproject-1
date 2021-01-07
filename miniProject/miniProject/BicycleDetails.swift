//
//  BicycleDetails.swift
//  miniProject
//
//  Created by Hanan Dashti on 03/01/2021.
//

import SwiftUI

struct BicycleDetails: View {
    
    @State var UserName = ""
    @State var phoneno = ""
    @State var total = 0.0
    @State var hour = 0
    @State var bycno = 0
    
    let detail : pic
    var body: some View {
        ZStack{
       
        VStack(alignment: .center){
            
            Image(detail.namePic)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
                .padding()
                
                TextField(" الإسم ", text: $UserName)
                   
             
                    .padding()
                TextField("الهاتف", text: $phoneno)
               
                    .padding()
                
                Stepper("   عدد الساعات  \(hour) ", value: $hour , in: 1...8)
                    
                   
                
                
                Stepper("   عدد الدراجات  \(bycno) ", value: $bycno , in: 1...4)
                    

                    
               
            let t = Double(bycno)  * Double(hour) * detail.price
                Text("\(t)")
                    .padding()

                
                if t > 0 {
                  
                    NavigationLink(
                        destination: View_3(finalDe: res(name: UserName, nob: phoneno, hb: hour, Tpr: t)),
                                  label: {
                                    
                                    Text(" اضغط للمتابعة ")
                                    
                                        .font(.title2)
                                        .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                        .background(Color.blue)
                                        .clipShape(Capsule())
                                        
                                  })
                }
        }.padding()
        
    }
}
    
struct BicycleDetails_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetails( detail: pic1[0])
    }
}
}








