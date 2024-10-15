//
//  SideMenuView.swift
//  parSta_App_SwiftData_DetailView
//
//  Created by 장상경 on 10/3/24.
//

import SwiftUI

struct SideMenuView: View {
    
    private var swiftData: [SwiftData] = swiftDataSet
    @Binding private var presentSideMenu: Bool
    @Binding private var id: Int
    
    init(presentSideMenu: Binding<Bool> = .constant(false), id: Binding<Int> = .constant(0)) {
        _presentSideMenu = presentSideMenu
        _id = id
    }
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(Color.white)
                .shadow(color: .gray, radius: 5)
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack(spacing: 0) {
                    Image(systemName: "xmark")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.parstaGray)
                        .padding(.trailing, 30)
                        .onTapGesture {
                            self.presentSideMenu = false
                        }
                    
                    Text("Swift Data")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                }
                .padding(.bottom, 20)
                .padding(.leading, safeAreaBottomSizeCheck())
                
                Rectangle()
                    .frame(height: 5)
                    .foregroundStyle(Color.parstaGray.opacity(0.1))
                    .padding(.bottom, 20)
                
                ScrollView {
                    ForEach((swiftData), id: \.self) { data in
                        ZStack() {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 210, height: 50)
                                .foregroundStyle(Color.parsta)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 205, height: 45)
                                .foregroundStyle(Color.white)
                                .onTapGesture {
                                    self.presentSideMenu = false
                                    self.id = data.id
                                }
                                .overlay {
                                    Text("\(data.id + 1). \(data.title)")
                                        .font(.system(size: 15))
                                        .fontWeight(.medium)
                                        .foregroundStyle(Color.parsta)
                                        .lineLimit(1)
                                        .padding(.horizontal, 10)
                                }
                        }
                        .padding(.bottom, 15)
                    }
                    .padding(.top, 10)
                }
                .scrollIndicators(.hidden)
                .padding(.leading, safeAreaBottomSizeCheck())
            }
        }
    }
}

private func safeAreaBottomSizeCheck() -> CGFloat {
    let scenes = UIApplication.shared.connectedScenes
    let windowScene = scenes.first as? UIWindowScene
    let window = windowScene?.windows.first
    
    let safeAreaBottomSize = window?.safeAreaInsets.bottom
    let paddingValue = CGFloat(safeAreaBottomSize == 0 ? 20 : 30)
    
    return paddingValue
}

#Preview {
    SideMenuView()
}
