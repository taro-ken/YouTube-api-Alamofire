//
//  UIimage-Extension.swift
//  YouTube-api-Alamofire
//
//  Created by 木元健太郎 on 2021/09/14.
//

import UIKit


extension UIImage {
    
    func resize(size _size: CGSize) -> UIImage? {
            let widthRatio = _size.width / size.width
            let heightRatio = _size.height / size.height
            let ratio = widthRatio < heightRatio ? widthRatio : heightRatio
            
            let resizeSize = CGSize(width: size.width * ratio, height: size.height * ratio)
            
            UIGraphicsBeginImageContextWithOptions(resizeSize, false, 0.0)
            draw(in: CGRect(origin: .zero, size: resizeSize))
            let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return resizedImage
        }
}
