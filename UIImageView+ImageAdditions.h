//
//  UIImageView+ImageAdditions.h
//  HIIT Stopwatch iPhone
//
//  Created by Anuj Seth on 9/8/12.
//  Copyright (c) 2012 Parabolic River. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ImageAdditions)

// Returns an auto-released image view with the image 
// set as its visual.
+ (UIImageView *)imageViewWithImageNamed:(NSString *)imageName;

@end
