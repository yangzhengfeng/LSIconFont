//
//  UIImage+LSIconFont.m
//  LSIconfont
//
//  Created by Dylan on 16/3/22.
//  Copyright © 2016年 dylan. All rights reserved.
//

#import "UIImage+LSIconFont.h"
#import "LSIconFont.h"

@implementation UIImage (LSIconFont)

+ (UIImage*)imageWithIcon:(NSString*)string withFontSize:(CGFloat)fontSize withColor:(UIColor*)color
{
    NSString* iconStr = [LSIconFont iconfontFromString:string];
    
    CGFloat size = fontSize;
    CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat realSize = size * scale;
    UIFont *font = [LSIconFont iconFontWithSize:realSize];
    UIGraphicsBeginImageContext(CGSizeMake(realSize, realSize));
    [iconStr drawAtPoint:CGPointZero withAttributes:@{NSFontAttributeName:font, NSForegroundColorAttributeName:[UIColor redColor]}];
    UIImage *image = [UIImage imageWithCGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage scale:scale orientation:UIImageOrientationUp];
    UIGraphicsEndImageContext();
    
    
    return image;
}


@end
