//
//  SourceViewController.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/22.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import "SourceViewController.h"
#import "DestinationViewController.h"

@interface SourceViewController ()<DestinationViewControllerDelegate>

@end

@implementation SourceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"setting";
    [self.view setBackgroundColor:[UIColor redColor]];
    UIBarButtonItem * goItem = [[UIBarButtonItem alloc] initWithTitle:@"go" style:UIBarButtonItemStylePlain target:self action:@selector(goClick)];
    
    self.navigationItem.rightBarButtonItem = goItem;
    // Do any additional setup after loading the view from its nib.
}

- (void) goClick{
    DestinationViewController * desVC = [[DestinationViewController alloc] init];
    desVC.delegate = self;
    
    [self.navigationController pushViewController:desVC animated:YES];
    
}

-(void)destinationViewController:(DestinationViewController *)destinationViewController return2SrcVCWithData:(NSString *)str {
    NSLog(@"destination Str %@",str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
