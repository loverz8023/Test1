//
//  test2.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/14.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//
#import "test2.h"
@interface test2 ()
@property (weak, nonatomic) IBOutlet UIButton *btnTest;

@end

@implementation test2
- (IBAction)test3:(id)sender {
    NSLog(@"test 3 ------d");
    NSLog(@"add one line log for test!!!");
    [self.btnTest setTitle:@"test i love you " forState:UIControlStateNormal];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"name is %@",_name);
}

@end


