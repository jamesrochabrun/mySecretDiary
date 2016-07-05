//
//  UIColor+CustomColor.m
//  secretdiary
//
//  Created by James Rochabrun on 01-07-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "UIColor+CustomColor.h"

@implementation UIColor (CustomColor)

+ (UIColor*)mainColor {
    return [UIColor colorWithRed:0.114 green:0.5722 blue:0.7362 alpha:1.0];
}

+ (UIColor*)newGrayColor {
    return [UIColor colorWithRed:0.471 green:0.4537 blue:0.3451 alpha:1.0];
}

+ (UIColor*)alertColor {
    return [UIColor colorWithRed:1.0 green:0.435 blue:0.4153 alpha:1.0];
}

@end
