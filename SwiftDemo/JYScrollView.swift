//
//  JYScrollView.swift
//  SwiftDemo
//
//  Created by tom on 14-6-4.
//  Copyright (c) 2014年 tom. All rights reserved.
//

import UIKit

class JYScrollView: UIScrollView,UIScrollViewDelegate {
    var _banner_imageview:UIImageView?
    var _BANNER_HEIGHT:CGFloat  = 200.0
    let _BANNER_FRAME = CGRect(x: 0, y: 0, width: 320, height: 200)
    let _KEY_PATH = "contentOffset"
    var _banner_image:UIImage?{
    set{
        _banner_imageview!.image = newValue
    }
    get{
        return self._banner_image!
    }
    }
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        _banner_imageview = UIImageView(frame:_BANNER_FRAME)
        self.addSubview(_banner_imageview)
        addObserver(self, forKeyPath: _KEY_PATH, options: NSKeyValueObservingOptions.New, context: nil)
    }
    override func observeValueForKeyPath(keyPath: String!, ofObject object: AnyObject!, change: NSDictionary!, context: CMutableVoidPointer) {
        if keyPath == _KEY_PATH{
            setNeedsDisplay()
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        var y = self.contentOffset.y
        if y < 0{
            var width =  _banner_imageview!.frame.size.width+(-y*2)
            var height = _BANNER_HEIGHT+(-y*2)
            _banner_imageview!.frame = CGRect(x: y, y: y, width:width, height: height)
        }else{
            _banner_imageview!.frame = _BANNER_FRAME
        }
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
    // Drawing code
    }
    */
    
}
