//
//  UIImageView+ImageAdditions.m
//  PARImageHelpers
//
//  Created by Anuj Seth on 9/8/12.
//  Copyright (c) 2012 Parabolic River. All rights reserved.
//

#import "UIImageView+ImageAdditions.h"

@implementation UIImageView (ImageAdditions)

+ (UIImageView *)imageViewWithImageNamed:(NSString *)imageName
{
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}

@end
