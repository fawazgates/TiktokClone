import SwiftUI

struct NotificationsCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable().frame(width: 32, height: 32).foregroundStyle(Color(.systemGray5))
            HStack {
                Text("dela_soflianti")
                    .font(.footnote).fontWeight(.semibold) +
                Text(" menyukai postingan anda ")
                    .font(.footnote) +
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Rectangle()
                .frame(width: 38, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationsCell()
}
