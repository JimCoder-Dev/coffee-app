import SwiftUI

struct MyOrderPage: View {
    
    //var cartManager: CartManager
    
    @EnvironmentObject var menuManager: MenuManager
    @EnvironmentObject var cartManager: CartManager
    
    @AppStorage("name") var name = ""
    @AppStorage("phone") var phone = ""
    
    @State var orderConfirmed = false
    
    
    var body: some View {
        NavigationView{
            
            if cartManager.products.count == 0{
                Text("Your order is empty")
                    .navigationTitle("Your Order")
            }else{
                List{
                    Section("ITEMS"){
                        ForEach(cartManager.products, id: \.0.id){ item in
                            OrderItem()
                        }
                    }.listRowBackground(Color("Background"))
                
               
                
                Section("YOUR DETAILS"){
                    VStack{
                        TextField("Your Name", text: $name)
                            .textFieldStyle(.roundedBorder)
                        Spacer().frame(height: 20)
                        TextField("Your Phone #", text: $phone)
                            .keyboardType(.phonePad)
                            .textFieldStyle(.roundedBorder)
                    }
                    .padding(.top)
                    .padding(.bottom)
                }
                .listRowBackground(Color("Background"))
                Section{
                    Spacer()
                    Text("Total")
                    Spacer()
                    Text("$ \(cartManager.total(), specifier: "%.2f")")
                        .bold()
                    Spacer()
                }
                .listRowBackground(Color.clear)
                Section{
                    HStack{
                        Button("Place Order"){
                            //TO DO
                        }
                        .padding()
                        .frame(width: 250.0)
                        .background(Color("Alternative2"))
                        .foregroundColor(Color.black)
                        .cornerRadius(25)
                        
                        Spacer()
                    }
                }.listRowBackground(Color.clear)
            }
                .listSectionSeparatorTint(Color("AccentColor"))
                .listStyle(.insetGrouped)
                .navigationTitle("Your Order")
                .alert("Order", isPresented: $orderConfirmed, actions: {
                                    Button("OK", role: .cancel) {
                                        //TODO: send order
                                        orderConfirmed = false
                                        //cartManager.clear()
                                    }
                                }, message: {
                                    Text("Your order is being prepared.")
                                        .font(.title)
                                })
            
            }
            
            
            
        }
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        MyOrderPage()
            .environmentObject(CartManager())
    }
}
