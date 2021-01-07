//
//  BicycleDetails.swift
//  miniProject
//
//  Created by Hanan Dashti on 03/01/2021.
//

import SwiftUI

struct BicycleDetails: View {
    
    @State var UserName = " "
    @State var phoneno = ""
    @State var total = 0.0
    @State var hour = 0
    @State var bycno = 0
    
    let detail : pic
    var body: some View {
        NavigationView{
       
        VStack(alignment: .center){
            
            Image(pic1[0].namePic)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            VStack{
                
                TextField("اسم المستلم", text: $UserName)
                    
               
                TextField("الهاتف", text: $phoneno)
               
                HStack{
                
                Stepper("عدد الساعات \(hour)", value: $hour , in: 1...8)
                    
                   
                }
                VStack{
                Stepper("عدد الدراجات\(bycno)  ", value: $bycno , in: 1...4)
                    
//                    if bycno > 0 {
//                      total = total+5
//                    
//                    }
                }
                    
               // Spacer()
                
                Text("\(total)") // here should be the final price
                
//                NavigationLink(
//                    destination: BicycleDetails(UserName: $UserName, phoneno: $phoneno, total: $total, hour: $hour, bycno: $bycno),
//                    label: {
//
//                        Text("press").modifier(BicycleDetails_Previews())}).navigationTaitle("the bell")
                
//
//              NavigationLink(
//                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
//                label: {
//                    /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
//                })
                Button(action:  {
//                    if bycno > 0 {
//                      total = total+5
//
//                    }
                   
                    
                }, label: {
                    Text("pay")
                        .bold()
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                   // Text("\(total)")
                        //.clipShape(Circle().background(Color(.black)))
                        
                       // .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        
                })
                
            }
            .padding()
                
        
        
        
        
        
    }
}
    }
struct BicycleDetails_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetails( detail: pic1[0])
    }
}
}








/* and for the third view i neet to do another one
 
 
Text("the bell")
 .bold
 
 VStack {
 Text("the name ")
 
 Text("number of hours")
 
 Text("number of phone")
 
 Text("the final pric")
 
 
 Button 
 
 }
 
 
 
 */
