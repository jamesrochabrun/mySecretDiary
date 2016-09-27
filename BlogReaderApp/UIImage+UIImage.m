//
//  UIImage+UIImage.m
//  secretdiary
//
//  Created by James Rochabrun on 9/26/16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "UIImage+UIImage.h"

@implementation UIImage (UIImage)

+ (UIImage *)imageFromView:(UIView *)v {
    UIGraphicsBeginImageContextWithOptions(v.frame.size, NO, 0.0);
    //UIGraphicsBeginImageContext(v.frame.size);
    [v.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)imageFromImage:(UIImage *)image inRect:(CGRect)rect {
    rect.size.height = rect.size.height * [image scale];
    rect.size.width = rect.size.width * [image scale];
    rect.origin.x = rect.origin.x * [image scale];
    rect.origin.y = rect.origin.y * [image scale];
    CGImageRef sourceImageRef = [image CGImage];
    CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef, rect);
    UIImage *newImage = [UIImage imageWithCGImage:newImageRef scale:[image scale] orientation:[image imageOrientation]];
    CGImageRelease(newImageRef);
    return newImage;
}


@end
