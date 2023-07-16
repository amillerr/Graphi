//
//  ProfileView.swift
//  Graphi
//
//  Created by Artem Axenov on 2023-07-16.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Header
            VStack(spacing: 10) {
                // Avatar and stats
                HStack {
                    Image("Ava-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Posts")
                                .font(.footnote)
                        }
                        .frame(width: 77)
                        
                        VStack {
                            Text("4")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 77)
                        
                        VStack {
                            Text("5")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 77)
                    }
                }
                .padding(.horizontal)
                
                // Name and bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Artem Miller")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("iOS Developer")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // Action button
                
                Button {
                    
                } label: {
                    Text("Edit profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Divider()
            }
            
            // Post grid view
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
