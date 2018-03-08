//
//  ViewController.m
//  XLCollectionLayout
//
//  Created by yuanxiaolong on 16/3/30.
//  Copyright © 2016年 yuanxiaolong. All rights reserved.
//

#import "ViewController.h"
#import "XLPhotoCell.h"
#import "XLLayout.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建布局
    XLLayout *layout = [[XLLayout alloc] init];
    layout.itemSize = CGSizeMake(160, 160);
    
    CGFloat collectionW = self.view.frame.size.width;
    CGFloat collectionH = 200;
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 200, collectionW, collectionH) collectionViewLayout:layout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.view addSubview:collectionView];
    
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([XLPhotoCell class]) bundle:nil] forCellWithReuseIdentifier:@"cell"];
    
    // 测试git
//    UIView *testView = [[UIView alloc] init];
    
    
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    XLPhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld",indexPath.item + 1]];
    
    
    return cell;
    
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击的item---%zd",indexPath.item);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
