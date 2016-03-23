//
//  LSIconFont.h
//  LSIconfont
//
//  Created by Dylan on 16/3/22.
//  Copyright © 2016年 dylan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LSIconFont : NSObject

+ (UIFont*)iconFontWithSize:(NSInteger)fontSize;

+ (NSString*)iconfontFromString:(NSString*)string;

+ (UIButton*)iconFontButtonWithType:(UIButtonType)type fontSize:(NSInteger)fontSize text:(NSString*)text;

+ (UILabel*)iconFontLabelWithFrame:(CGRect)frame fontSize:(NSInteger)fontSize text:(NSString*)text;

@end
