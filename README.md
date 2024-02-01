# SwiftUI_CardViewExample
<img width="300" alt="スクリーンショット 2024-02-01 16 44 01" src="https://github.com/katafuchix/SwiftUI_CardViewExample/assets/6063541/6761e7d3-897d-4f78-ab5f-df604ec33251">

    @ViewBuilder
    func CardView(title: String, price: Int) -> some View{
        HStack{
            VStack(alignment: .leading, spacing: 10) {
                Text(title)
                Text("$\(price.withComma)").font(.largeTitle)
                Text("Tax included")
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 55, height: 55)
                    .background(Color.purple)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.15), radius: 5, x: 10, y: 10)
            }
        }
        .padding(20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
        .padding()
    }
