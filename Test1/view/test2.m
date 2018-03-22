//
//  test2.m
//  Test1
//
//  Created by 罗晓卓 on 2018/3/14.
//  Copyright © 2018年 罗晓卓. All rights reserved.
//
#import "test2.h"
@interface test2 ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnTest;

@end

@implementation test2
- (IBAction)test3:(id)sender {
    NSLog(@"test 3 ------d");
    NSLog(@"add one line log for test!!!");
    [self.btnTest setTitle:@"test i love you " forState:UIControlStateNormal];
}
-(UITextField * )mTxt{
    if(_mTxt == nil) {
        _mTxt = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 150, 50)];
        _mTxt.placeholder = @"QQQQQQQQ";
        _mTxt.delegate = self;
        _mTxt.clearsOnBeginEditing = YES;
        _mTxt.textAlignment = NSTextAlignmentCenter;
        _mTxt.keyboardType = UIKeyboardTypeDefault;
        _mTxt.borderStyle = UITextBorderStyleRoundedRect;
        
    }
    return _mTxt;
}


-(void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"name is %@",_name);
    [self.view setBackgroundColor:[UIColor whiteColor]];
//    UITextField * txtField = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 250, 50)];
//    txtField.backgroundColor = [UIColor whiteColor];
//    txtField.placeholder = @"请输入密码";
//    txtField.textAlignment = NSTextAlignmentCenter;
//    txtField.borderStyle = UITextBorderStyleRoundedRect;
//    txtField.keyboardType = UIKeyboardTypeDefault;
//    txtField.clearsOnBeginEditing = YES;
//    txtField.delegate = self;
    [self.view addSubview:self.mTxt];
}

-(BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    [textField endEditing:YES];
    return YES;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.mTxt resignFirstResponder];
    
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    
    NSLog(@"end ending");
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    if(range.location - range.length >=5){
        NSLog(@"超出范围");
        return NO;
    }else {
        NSLog(@"没有超出限制");
        return YES;
    }
}
@end


