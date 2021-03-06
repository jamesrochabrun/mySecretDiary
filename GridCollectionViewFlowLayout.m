//
//  GridCollectionViewFlowLayout.m
//  secretdiary
//
//  Created by James Rochabrun on 14-07-16.
//  Copyright © 2016 James Rochabrun. All rights reserved.
//

#import "GridCollectionViewFlowLayout.h"
#import "Common.h"

@implementation GridCollectionViewFlowLayout

- (instancetype)init {
    self = [super init];
    if (self)
    {
        self.minimumLineSpacing = 1.0;
        self.minimumInteritemSpacing = 1.0;
        self.scrollDirection = UICollectionViewScrollDirectionVertical;
        //.self.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
        self.headerReferenceSize = CGSizeMake(width(self.collectionView), 50);
    }
    return self;
}


- (CGSize)itemSize {
    NSInteger numberOfColumns = 3;
    
    CGFloat itemWidth = (CGRectGetWidth(self.collectionView.frame) - (numberOfColumns - 1)) / numberOfColumns;
    return CGSizeMake(itemWidth, itemWidth);
}

@end
