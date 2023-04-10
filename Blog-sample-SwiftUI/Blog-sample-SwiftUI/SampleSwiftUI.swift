//
//  SampleSwiftUI.swift
//  Blog-sample-SwiftUI
//
//  Created by Nobuharu Kusama on 2023/04/05.
//

import SwiftUI

struct SampleSwiftUI: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    
                    Image("TestTop")
                    
                    Spacer()
                    
                    Image("TestTop")
                        .scaledToFit()
                    
                    Spacer()
                    
                    Image("TestTop")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                    
                    Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .modifier(BorderTextModifier())
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                        
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                    }
                    
                    VStack(alignment: .trailing, spacing: 10)  {
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                        
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                        
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                        
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .modifier(BorderTextModifier())
                        
                        Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .fixedSize(horizontal: false, vertical: true)
                            .modifier(BorderTextModifier())
                    }.padding(.horizontal, 16)
                    
                    Text("てすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすとてすと")
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .modifier(BorderTextModifier())
                }
            }
        }
    }
    
    private struct BorderTextModifier: ViewModifier {

        func body(content: Content) -> some View {
            content
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 12))
                .padding(.all, 16)
                .lineSpacing(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.black, lineWidth: 1)
                )
        }
    }
}

struct SampleSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SampleSwiftUI()
    }
}
