import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    Offer(title: "Welcome Gift", description: "25% off on your first order.")
                }
                
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
