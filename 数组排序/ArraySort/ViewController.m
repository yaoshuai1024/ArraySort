//
//  ViewController.m
//  ArraySort
//
//  Created by yaoshuai on 2016/11/20.
//  Copyright © 2016年 ys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self arraySort];
}

- (void)arraySort{
    // 要求：从小到大
    NSArray *arr = @[@"3",@"1",@"7",@"5",@"9"];
    
    NSArray *temp = [arr sortedArrayUsingComparator:^NSComparisonResult(NSString *  _Nonnull obj1, NSString *  _Nonnull obj2) {
        if([obj1 integerValue] < [obj2 integerValue]){
            // 表示顺序不需要交换
            return NSOrderedAscending;
        }
        else{
            // 表示顺序需要交换
            return NSOrderedDescending;
        }
    }];
    
    NSLog(@"%@",temp);
}

@end
