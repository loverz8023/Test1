//
//  DestinationViewController.h
//  Test1
//
//  Created by 罗晓卓 on 2018/3/22.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DestinationViewController;
@protocol DestinationViewControllerDelegate <NSObject>
-(void) destinationViewController:(DestinationViewController * ) destinationViewController
             return2SrcVCWithData:(NSString *) str;
@end

@interface DestinationViewController : UIViewController
@property (nonatomic,weak) id <DestinationViewControllerDelegate> delegate;
@end
