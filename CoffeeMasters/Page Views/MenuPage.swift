import SwiftUI

struct MenuPage: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                   
                        
                    ForEach(1..<3) { category in
                        Text("HOT COFFEE")
                            .listRowBackground(Color("Background"))
                            .foregroundColor(Color("Secondary"))
                            .padding()
                    
                        ForEach(1 ..< 5) { item in
                            NavigationLink{
                                DetailsPage()
                            }label: {
                                ProductItem(product: Product(id: 1, name: "Product 1", description: "Products", price: 1.25, image: ""))
                                    .padding(.top)
                                    .padding(.leading)
                                    .padding(.bottom, 12)
                            }
                            
                            }
                            
                        }
                    }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color("Background"))
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Products")
                .background(Color("SurfaceBackground"))
          
        
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
