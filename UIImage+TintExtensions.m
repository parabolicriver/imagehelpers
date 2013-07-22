//
//  UIImage+TintExtensions.m
//  PARImageHelpers
//
//  Created by Anuj Seth on 8/12/12.
//  Copyright (c) 2012 Parabolic River. All rights reserved.
//

#import "UIImage+TintExtensions.h"

@implementation UIImage (TintExtensions)

- (UIImage*)tintedImageUsingColor:(UIColor*)tintColor {
    // get the image scale rather than
    // the screen's since some images may
    // not have @2x versions
    CGFloat scale = self.scale;
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, scale);
    
    CGRect drawRect = CGRectMake(0, 0, self.size.width, self.size.height);
    [self drawInRect:drawRect];
    [tintColor set];
    UIRectFillUsingBlendMode(drawRect, kCGBlendModeSourceAtop);
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return tintedImage;
}

@end
