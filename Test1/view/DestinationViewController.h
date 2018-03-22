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
// 此关键字表示实现协议的类不一定必须要实现
@optional
-(void) destinationViewController:(DestinationViewController * ) destinationViewController
             return2SrcVCWithData:(NSString *) str;
// 此关键字表示实现协议的类必须要实现 否则会编译报错
@required
-(void) destinationViewController2:(DestinationViewController *) des return2BoolWithData:(BOOL) is;



@end

@interface DestinationViewController : UIViewController
@property (nonatomic,weak) id <DestinationViewControllerDelegate> delegate;
@end
