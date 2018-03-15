//
//  ViewController.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/13.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *select;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"view did load");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)test:(id)sender {
    NSString * name = @"hi";
    NSLog(@"name:%@",name);
}


@end
