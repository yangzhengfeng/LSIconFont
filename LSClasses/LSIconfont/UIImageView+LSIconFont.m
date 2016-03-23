//
//  UIImage+LSIconfont.m
//  LSIconfont
//
//  Created by Dylan on 16/3/22.
//  Copyright © 2016年 dylan. All rights reserved.
//

#import "UIImageView+LSIconFont.h"
#import "UIImage+LSIconfont.h"


@implementation UIImageView (LSIconFont)



- (void)imageViewWithIcon:(NSString*)string withFontSize:(CGFloat)fontSize withColor:(UIColor*)color
{
    UIImage* image = [UIImage imageWithIcon:string withFontSize:fontSize withColor:color];
    self.image = image;
}

@end
