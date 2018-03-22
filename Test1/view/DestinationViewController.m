//
//  DestinationViewController.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/22.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//

#import "DestinationViewController.h"

@interface DestinationViewController ()

@end

@implementation DestinationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIBarButtonItem * backBtn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    
    self.navigationItem.leftBarButtonItem = backBtn;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) backClick{
    if([self.delegate respondsToSelector:@selector(destinationViewController:return2SrcVCWithData:)]){
        [self.delegate destinationViewController:self return2SrcVCWithData:@"wawawa"];
        
    }
    [self.navigationController popViewControllerAnimated:YES];
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
