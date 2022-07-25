import SwiftUI

struct Offer: View {
    
    var title: String
    var description: String
    
    var body: some View {
        ZStack{
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 300)
            VStack(alignment: .center, spacing: 50){
                VStack{
                    Text(title)
                        .padding()
                        .font(.title)
                        .background(Color("CardBackground"))
                        .padding(.bottom, 20)
                    Text(description)
                        .padding()
                        .background(Color("CardBackground"))
                }.frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150, alignment: .center)
                
            }
           
            
        }.background(Color.white)
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "My offer", description: "This is a description")
            .previewLayout(.fixed(width: 350, height: 200.0))
         
            .previewInterfaceOrientation(.portrait)
    }
}
