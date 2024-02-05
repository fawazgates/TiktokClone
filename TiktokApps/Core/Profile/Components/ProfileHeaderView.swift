import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable().frame(width: 80, height: 80).foregroundStyle(Color(.systemGray5))
                // username
                Text("@fawazgates")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // stats view
            
            HStack(spacing: 16) {
                UserStateView(value: 100, title: "Mengikuti")
                UserStateView(value: 100, title: "Pengikut")
                UserStateView(value: 100, title: "Suka")
            }
            
            // action button
            
            Button {
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 61))
            }
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
