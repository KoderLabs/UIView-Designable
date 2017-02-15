//
//  UIView+UIView.m
//
//  Created by MubeenQazi on 11/3/16.
//  Copyright © 2016 MubeenQazi. All rights reserved.
//

#import "UIView+UIView.h"
#import <objc/runtime.h>

static void const *key;

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

- (void)layoutSubviews{
    if ([self isCircular])
        [self setMakeCircular:[self isCircular]];
}

//Getter and setter for making view circular
-(void)setMakeCircular:(BOOL)circular{
    [self setIsCircular:circular];
    if(circular)
        [self setCornerRadius:MIN(self.bounds.size.width, self.bounds.size.height) / 2.0];
}
-(BOOL)makeCircular{
    return nil;
}

- (BOOL)isCircular {
    return [objc_getAssociatedObject(self, key) boolValue];
}

- (void)setIsCircular:(BOOL)value {
    objc_setAssociatedObject(self, key, @(value), OBJC_ASSOCIATION_RETAIN);
}


@end
