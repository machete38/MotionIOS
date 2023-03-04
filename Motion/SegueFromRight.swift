//
//  SegueFromRight.swift
//  Motion
//
//  Created by Андрей Гареев on 09.03.2020.
//  Copyright © 2020 Motion inc. All rights reserved.
//

import UIKit

class SegueFromRight: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y:0)
        UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseOut, animations: {dst.view.transform = CGAffineTransform(translationX: 0, y: 0)}, completion: {finished in src.present(dst, animated: false, completion: nil)})
    
    }
}
