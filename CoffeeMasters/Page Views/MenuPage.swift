import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                   
                        
                    ForEach(menuManager.menu) { category in
                    
                        Text(category.name)
                            .listRowBackground(Color("Background"))
                            .foregroundColor(Color("Secondary"))
                            .padding()
                        ForEach(category.products){ product in
                            NavigationLink{
                                DetailsPage()
                            }label: {
                            
                               ProductItem(product: product)
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
            .environmentObject(MenuManager())
    }
}
