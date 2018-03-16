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
    
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake(50, 150, 150, 100 );
    [_btn setTitle:@"test btn 22222" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];
    
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

-(void) btnPressed{
    NSLog(@"btn pressed ");
    
    test2 * v2 = [[test2 alloc] init];
    
    [self.navigationController pushViewController:v2 animated:YES];
    
}
@end
