//
//  FlashingView.swift
//  NewFlashingView
//
//  Created by Scott Kerkove on 5/2/20.
//

import UIKit

@available(iOS 10.0, *)
public class FlashingView: UIView {

        let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
         var colorCounter = 0
         
         public override init(frame: CGRect) {
             super.init(frame: frame)
                 
             let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in  //1
                 UIView.animate(withDuration: 1.0) {  //2
                     self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                     self.colorCounter+=1  //4
                 }
             }
             scheduledColorChanged.fire()
         }
         
         public required init?(coder aDecoder: NSCoder) {
             super.init(coder: aDecoder)

             // You don't need to implement this
         }
    }
