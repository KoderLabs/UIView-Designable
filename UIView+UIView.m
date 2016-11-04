//
//  UIView+UIView.m
//  textToSpeech
//
//  Created by MubeenQazi on 11/3/16.
//  Copyright © 2016 MubeenQazi. All rights reserved.
//

#import "UIView+UIView.h"

@implementation UIView (UIView)


//Getter and setter for border color
-(void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = (borderColor).CGColor;
}
-(UIColor*)borderColor{
    return [UIColor colorWithCGColor: self.layer.borderColor];
}

//Getter and setter for border width
-(void)setBorderWidth:(NSInteger)borderWidth{
    self.layer.borderWidth = borderWidth;
}
-(NSInteger)borderWidth{
    return  (NSInteger)roundf((self.layer.borderWidth));
}

//Getter and setter for corner radius
-(void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}
-(CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}




@end
