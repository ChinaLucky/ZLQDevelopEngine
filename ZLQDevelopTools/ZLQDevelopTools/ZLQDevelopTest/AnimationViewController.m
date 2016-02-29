//
//  AnimationViewController.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 16/1/22.
//  Copyright © 2016年 Luqiang. All rights reserved.
//

#import "AnimationViewController.h"

#define IMAGE1 @"01.jpg"
#define IMAGE2 @"02.jpg"

@interface AnimationViewController ()

@property (nonatomic, assign) int subtype;

@end

@implementation AnimationViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self hiddenNavigaitonBar];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self showNavigationBar];
}

- (void)viewDidLoad {
    _subtype = 0;
    [super viewDidLoad];
    // Do any additional setup after loading   view, typically from a nib.
    [self addBgImageWithImageName:IMAGE2];
}

- (IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)tapButton:(id)sender {
    
    UIButton *button = sender;
    AnimationType animationType = button.tag - 1;
    
    [self.view addAnimationWithType:animationType subType:self.subtype duration:1.5];
    
    _subtype += 1;
    if (_subtype > 3) {
        _subtype = 0;
    }
    
    static int i = 0;
    if (i == 0) {
        [self addBgImageWithImageName:IMAGE1];
        i = 1;
    }
    else
    {
        [self addBgImageWithImageName:IMAGE2];
        i = 0;
    }
}



#pragma 给View添加背景图
-(void)addBgImageWithImageName:(NSString *) imageName
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:imageName]];
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
