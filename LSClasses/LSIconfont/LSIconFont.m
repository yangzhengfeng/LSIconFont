//
//  LSIconFont.m
//  LSIconfont
//
//  Created by Dylan on 16/3/22.
//  Copyright © 2016年 dylan. All rights reserved.
//

#import "LSIconFont.h"

@implementation LSIconFont


+ (UIButton*)iconFontButtonWithType:(UIButtonType)type fontSize:(NSInteger)fontSize text:(NSString*)text{
    text = [LSIconFont iconfontFromString:text];
    UIButton *button = [UIButton buttonWithType:type];
    [button.titleLabel setFont:[LSIconFont iconFontWithSize:fontSize]];
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    return button;
}

//+ (UIButton*)iconFontButtonWithType:(UIButtonType)type fontSize:(NSInteger)fontSize icText:(NSString*)icText text:(NSString*)text
//{
//    text = [LSIconFont iconfontFromString:icText];
//    UIButton *button = [UIButton buttonWithType:type];
//    [button.titleLabel setFont:[LSIconFont iconFontWithSize:fontSize]];
//    [button setTitle:text forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    return button;
//}



+ (UILabel*)iconFontLabelWithFrame:(CGRect)frame fontSize:(NSInteger)fontSize text:(NSString*)text{
    text = [LSIconFont iconfontFromString:text];
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.font = [LSIconFont iconFontWithSize:fontSize];
    label.text = text;
    return label;
}

+ (UIFont*)iconFontWithSize:(NSInteger)fontSize{
    UIFont *iconfont = nil;
    if (fontSize > 0 ) {
        iconfont = [UIFont fontWithName:@"iconfont" size: fontSize];
    }
    

    return iconfont;
}



+ (NSString*)iconfontFromString:(NSString*)string{
    static NSDictionary * iconfontDict = nil;
    if (iconfontDict == nil) {
        iconfontDict = @{@"ic_tabbar_home"       : @"\U0000e601",
                         @"ic_tabbar_mine"       : @"\U0000e602",
                         @"ic_tabbar_categray"   : @"\U0000e603",
                         
                         };
        
    }
    
    
    NSString* iconFont = [iconfontDict objectForKey:string];
    return iconFont;
}




@end
