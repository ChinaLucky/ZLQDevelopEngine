//
//  ViewController.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 15/12/12.
//  Copyright © 2015年 Luqiang. All rights reserved.
//

#import "ViewController.h"
#import "ZLQDevelopEngine.h"
#import "ImageViewController.h"
#import "AnimationViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *tableTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableTitle = @[@"UIImage压缩和剪切", @"视图切换的动画效果"];
    [self p_initTableView];
    
}

- (void)p_initTableView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.screenWidth, self.screenHeight) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}


#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    cell.textLabel.text = self.tableTitle[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            ImageViewController *vc = [[ImageViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
            UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
            //由storyboard根据myView的storyBoardID来获取我们要切换的视图
            UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"AnimationViewController"];
            //由navigationController推向我们要推向的view
            [self.navigationController pushViewController:myView animated:YES];
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
