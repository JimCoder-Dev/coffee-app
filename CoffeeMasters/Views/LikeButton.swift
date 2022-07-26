import SwiftUI

struct LikeButton: View {
    
    @EnvironmentObject var likesManager: LikesManager
    var product: Product
    
    
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
                    .padding()
                    .foregroundColor(Color("Secondary"))
                    .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
                    .onTapGesture {
                        likesManager.toggle(product.id)
                    }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(product: Product(id: 1, name: "DUMMY ", description: "", price: 1.59, image: ""))
            .environmentObject(LikesManager())
    }
}
