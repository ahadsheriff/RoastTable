//
//  celeb.swift
//  RoastTable
//
//  Created by Ahad Sheriff on 7/12/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

struct Celeb {
    let name: String
    let twitter: String
    let image: UIImage
    
    init(name: String, twitter: String, image: UIImage) {
        self.name = name
        self.twitter = twitter
        self.image = image
    }
    
    static func celebsFromBundle() -> [Celeb] {
        
        var celebs = [Celeb]()
        
        guard let path = NSBundle.mainBundle().pathForResource("celebs", ofType: "json"),
            data = NSData(contentsOfFile: path) else {
                return celebs
        }
        
        do {
            let rootObject = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
            
            guard let celebObjects = rootObject["celebs"] as? [[String: AnyObject]] else {
                return celebs
            }
            
            for celebObject in celebObjects {
                if let name = celebObject["name"] as? String,
                    twitter = celebObject["twitter"]  as? String,
                    imageName = celebObject["image"] as? String,
                    image = UIImage(named: imageName) {
                
                    let celeb = Celeb(name: name, twitter: twitter, image: image)
                    celebs.append(celeb)
                    
                }
            }
            
        } catch {
            return celebs
        }
        
        return celebs
    }
    
}