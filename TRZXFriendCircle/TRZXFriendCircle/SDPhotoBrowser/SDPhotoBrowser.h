//
//  SDPhotoBrowser.h
//  photobrowser
//
//  Created by aier on 15-2-3.
//  Copyright (c) 2015年 aier. All rights reserved.
//

#import <UIKit/UIKit.h>


@class SDButton, SDPhotoBrowser;

@protocol SDPhotoBrowserDelegate <NSObject>

@required

- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index;

@optional

- (NSURL *)photoBrowser:(SDPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index;
- (void)photoBrowser:(SDPhotoBrowser *)browser didSelectIndex:(NSInteger)index;


@end


@interface SDPhotoBrowser : UIView <UIScrollViewDelegate,UIActionSheetDelegate>

@property (nonatomic, weak) UIView *sourceImagesContainerView;
@property (nonatomic, assign) NSUInteger currentImageIndex;
@property (nonatomic, assign) NSInteger imageCount;
@property (nonatomic, weak) id<SDPhotoBrowserDelegate> delegate;

@property (nonatomic, strong)UIScrollView *scrollView;
@property (nonatomic, strong)UILabel *indexLabel;

@end
