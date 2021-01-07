

import SwiftUI



struct View_3: View {
   let finalDe : res
    @State var paing = Color.blue
    var body: some View {
       
      
        VStack{

            HStack{

                Text("الإسم ")
                Spacer()
                Text("\(finalDe.name)")
            }.padding()

            HStack{

                Text("الساعات")
                Spacer()
                Text("\(finalDe.hb)")
            }.padding()

            HStack{

                Text("رقم الهاتف ")
                Spacer()
                Text("\(finalDe.nob)")
            }.padding()

            HStack{

                Text("المبلغ ")
                Spacer()
                Text("\(finalDe.Tpr)")
            }.padding()

Spacer()
            
            Button(action: {
                
                paing = Color.green
                
            }, label: {
                if paing == Color.blue{
                Text("إدفع الآن")
                    .font(.title2)
                    .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Capsule())
                } else {
                    Text("تم الدفع ")
                        .font(.title2)
                        .frame(width: 130, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .clipShape(Capsule())
                }
            })
        }
        
        
        .navigationTitle("الفاتورة")
        
    }
}

//struct View_3_Previews: PreviewProvider {
//    static var previews: some View {
//        View_3()
//    }
//}
