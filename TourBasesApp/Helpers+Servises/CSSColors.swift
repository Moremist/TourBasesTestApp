//
//  CSSColors.swift
//  TourBasesApp
//
//  Created by Roman Kuzmich on 06.05.2023.
//

import SwiftUI

struct CSSColors {
    static private func getHexByColorName(_ string: String) -> String? {
        let colorsArray = cssColorsString.replacingOccurrences(of: "%20", with: "").split(whereSeparator: { $0.isNewline }).map({ $0.split(separator: ":") })
        let color = colorsArray.first { colorSet in
            String(colorSet.first ?? "") == string
        }?.last ?? ""
        return String(color)
    }
    
    static func getColorBy(name: String) -> Color {
        guard let hex = getHexByColorName(name) else { return Color.gray }
        return Color(hex: hex)
    }
    
    static private let cssColorsString = """
gray-01:#FFFFFF
gray-02:%20#FFFFFF
gray-03:%20#FFFFFF
gray-04:%20#FFFFFF
gray-05:%20#FAFAFA
gray-06:%20#F5F5F5
gray-07:%20#E5E5E5
gray-08:%20#D9D9D9
gray-09:%20#D1D1D1
gray-10:%20#BFBFBF
gray-11:%20#C7C7C7
gray-12:%20#A6A6A6
gray-13:%20#999999
gray-14:%20#808080
gray-15:%20#666666
gray-16:%20#4D4D4D
gray-17:%20#333333
gray-18:%20#212121
gray-19:%20#0D0D0D
gray-20:%20#0D0D0D
primary-01:%20#F2F8FF
primary-02:%20#E6F1FE
primary-03:%20#CCE3FE
primary-04:%20#B3D5FD
primary-05:%20#99C7FD
primary-06:%20#80B9FC
primary-07:%20#66ABFC
primary-08:%20#4096FB
primary-09:%20#2688FB
primary-10:%20#1A81FA
success-01:%20#F3FBF7
success-02:%20#E7F6F0
success-03:%20#CFEDE1
success-04:%20#B8E5D2
success-05:%20#A0DCC3
success-06:%20#88D3B3
success-07:%20#70CAA4
success-08:%20#41B986
success-09:%20#29B077
success-10:%20#11A768
warning-01:%20#FEF9F2
warning-02:%20#FDF3E6
warning-03:%20#FBE8CC
warning-04:%20#F9DCB3
warning-05:%20#F7D199
warning-06:%20#F5C580
warning-07:%20#F3BA66
warning-08:%20#EFA333
warning-09:%20#ED971A
warning-10:%20#EB8C00
danger-01:%20#FFF5F5
danger-02:%20#FFECEB
danger-03:%20#FFD8D6
danger-04:%20#FFC5C2
danger-05:%20#FFB1AD
danger-06:%20#FF9E99
danger-07:%20#FF8B85
danger-08:%20#FF645C
danger-09:%20#FF5047
danger-10:%20#FF3D33
info-01:%20#F2F9FC
info-02:%20#E6F3FA
info-03:%20#CCE8F5
info-04:%20#B3DCF0
info-05:%20#99D1EB
info-06:%20#80C5E5
info-07:%20#66B9E0
info-08:%20#33A2D6
info-09:%20#1A97D1
info-10:%20#008BCC
violet-01:%20#F6F4FA
violet-02:%20#ECE9F5
violet-03:%20#DAD4EB
violet-04:%20#C7BEE0
violet-05:%20#B5A9D6
violet-06:%20#A293CC
violet-07:%20#8F7DC2
violet-08:%20#6A52AD
violet-09:%20#583DA3
violet-10:%20#452799
purple-01:%20#F9F4FA
purple-02:%20#F3E9F5
purple-03:%20#E7D3EB
purple-04:%20#DCBEE0
purple-05:%20#D0A8D6
purple-06:%20#C492CC
purple-07:%20#B87CC2
purple-08:%20#A151AD
purple-09:%20#953BA3
purple-10:%20#892599
yellow-01:%20#FFFDF2
yellow-02:%20#FFFCE6
yellow-03:%20#FFF8CC
yellow-04:%20#FFF5B3
yellow-05:%20#FFF199
yellow-06:%20#FFEE80
yellow-07:%20#FFEB66
yellow-08:%20#FFE433
yellow-09:%20#FFE01A
yellow-10:%20#FFDD00
cyan-01:%20#F2F9FA
cyan-02:%20#E6F4F5
cyan-03:%20#CCE9EB
cyan-04:%20#B3DEE1
cyan-05:%20#99D3D7
cyan-06:%20#80C8CD
cyan-07:%20#66BDC3
cyan-08:%20#33A7AF
cyan-09:%20#1A9CA5
cyan-10:%20#00919B
g-01:%20linear-gradient(135deg,%20#ff3459%200%,%20#b9493c%20100%)
g-02:%20linear-gradient(135deg,%20#5b3cdc%200%,%20#0ca9b3%20100%)
g-03:%20linear-gradient(135deg,%20#0ce6e2%200%,%20#5b1220%20100%)
g-04:%20linear-gradient(135deg,%20#3e1451%200%,%20#a788f5%20100%)
g-05:%20linear-gradient(135deg,%20#98d9e4%200%,%20#ee32b9%20100%)
g-06:%20linear-gradient(135deg,%20#0aad75%200%,%20#617d85%20100%)
g-07:%20linear-gradient(135deg,%20#415e8d%200%,%20#d160d8%20100%)
g-08:%20linear-gradient(135deg,%20#5371d4%200%,%20#55e7d2%20100%)
g-09:%20linear-gradient(135deg,%20#5e56f0%200%,%20#1d2fa0%20100%)
g-10:%20linear-gradient(135deg,%20#e23817%200%,%20#fc7411%20100%)
g-11:%20linear-gradient(270deg,%20#485563%2050%,%20#29323c%2050%)
g-12:%20linear-gradient(270deg,%20#457fca%2050%,%20#5691c8%2050%)
g-13:%20linear-gradient(270deg,%20#fe8c00%2050%,%20#f83600%2050%)
g-14:%20linear-gradient(135deg,%20#af5941%200%,%20#7253a7%20100%)
g-15:%20linear-gradient(135deg,%20#3875e4%200%,%20#e124aa%20100%)
g-16:%20linear-gradient(135deg,%20#558dec%200%,%20#2db0d6%20100%)
g-17:%20linear-gradient(135deg,%20#0718b6%200%,%20#1e674a%20100%)
g-18:%20linear-gradient(270deg,%20#1d976c%2050%,%20#93f9b9%2050%)
g-19:%20linear-gradient(270deg,%20#f09819%2050%,%20#edde5d%2050%)
g-20:%20linear-gradient(270deg,%20#314755%2050%,%20#26a0da%2050%)
"""
}
