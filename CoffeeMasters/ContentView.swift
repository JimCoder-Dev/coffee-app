import SwiftUI

struct ContentView: View {
    
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView{
            MenuPage()
                .tabItem{
                    Label("Menu", systemImage: "cup.and.saucer")
                }
            OffersPage()
                .tabItem{
                    Label("Offers", systemImage: "tag")
                }
            MyOrderPage()
                .tabItem{
                    Label("Order", systemImage: "cart")
                }
                .badge(cartManager.products.count)
            InfoPage()
                .tabItem{
                    Label("Info", systemImage: "info")
                }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}
