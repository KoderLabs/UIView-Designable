//
//  UIView+UIView.h
//  textToSpeech
//
//  Created by MubeenQazi on 11/3/16.
//  Copyright © 2016 MubeenQazi. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UIView (UIView)
@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable UIColor* borderColor;
@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable BOOL makeCircular;


@end
