//
//  ViewController.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/13.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import "ViewController.h"
//#import "UIKit/UIKit.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *select;
@property (weak, nonatomic) IBOutlet UILabel *mlabel;

@end

@implementation ViewController
- (IBAction)testAnimation:(id)sender {
    
//    [_mlabel setText:@"test animation"];

    [UIView animateWithDuration:1.0 animations:^{
        self.mlabel.backgroundColor = [UIColor blueColor];
        self.mlabel.transform = CGAffineTransformScale(self.mlabel.transform, 1.2, 1.2);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:1.0 animations:^{
            self.mlabel.backgroundColor = [UIColor redColor];
            self.mlabel.transform = CGAffineTransformIdentity;
        }];
    }];

}

- (void)viewDidLoad {
    NSLog(@"view did load");
    [super viewDidLoad];
    
    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn.frame = CGRectMake(0, 0, 150, 100 );
    [_btn setTitle:@"test btn 22222" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(btnPressed) forControlEvents:UIControlEventTouchUpInside];
    [_btn setBackgroundColor:[UIColor redColor]];
    
    [self.view addSubview:_btn];
    
    UILongPressGestureRecognizer * longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressAction)];
    // uilabel uiimageview 默认的是否支持触控时间回调为NO
    self.mlabel.userInteractionEnabled = YES;
    [self.mlabel addGestureRecognizer:longPress];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)longPressAction{
    NSLog(@"test123 longPressAction");
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"是否访问XXXX！" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * defaultAct = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        NSLog(@"点击了YES");
    }];
    [alert addAction:defaultAct];
    [self presentViewController:alert animated:YES
                     completion:nil];
//    [self.view addSubview:_btn]
}

-(BOOL)prefersStatusBarHidden {
    
    return YES;
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
