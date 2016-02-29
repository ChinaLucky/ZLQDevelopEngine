//
//  ImageViewController.m
//  ZLQDevelopTools
//
//  Created by Luqiang on 16/1/14.
//  Copyright © 2016年 Luqiang. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *tableTitle;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableTitle = @[@"原图", @"压缩", @"剪切", @"默认圆形"];
    self.image = [UIImage imageNamed:@"defaultImage.png"];
    [self p_initTableView];
    [self p_initImageView];
    
}

- (void)p_initTableView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.screenWidth, self.screenHeight) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (void)p_initImageView {
    self.imageView = [[UIImageView alloc] init];
    self.imageView.hidden = YES;
    self.imageView.userInteractionEnabled = YES;
    [self.view addSubview:self.imageView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [self.imageView addGestureRecognizer:tap];
}

- (void)tapClick:(UITapGestureRecognizer *)tap {
    self.imageView.hidden = YES;
}

- (void)p_showImageView:(UIImage *)image {
    self.imageView.image = image;
    self.imageView.width = image.size.width;
    self.imageView.height = image.size.height;
    self.imageView.center = CGPointMake(self.screenWidth / 2.0, self.screenHeight / 2);
    self.imageView.hidden = NO;
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
        {//@"原图", @"压缩", @"剪切", @"默认圆形"
            [self p_showImageView:self.image];
        }
            break;
        case 1:
        {
            UIImage *image = [self.image scaleImageToSize:CGSizeMake(self.screenWidth / 2.0, self.screenHeight / 2.0)];
            [self p_showImageView:image];
        }
            break;
        case 2:
        {
            UIImage *image = [self.image cropImageInRect:CGRectMake(110, 135, 125, 125)];
            [self p_showImageView:image];
        }
            break;
        case 3:
        {
            UIImage *image = [self.image ellipseImageWithDefaultSetting];
            [self p_showImageView:image];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
