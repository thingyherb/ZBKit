//
//  ViewController.m
//  ZBKitDemo
//
//  Created by ZhaoMY on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "ViewController.h"
#import "ZBKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 防止array越界崩溃
    
    NSArray *array = @[@"第一个",
                       @"第二个",
                       @"第三个"];

    LOG(array.check[0]);// 正常
    LOG(@"%@",array.check[10]);// 越界，但不会崩溃
    
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
    
    LOG(@"%@",mutableArray.check[2]);// 正常
    LOG(@"%@",mutableArray.check[20]);// 越界，但不会崩溃
    
    [mutableArray.check addObject:nil];
    
    NSDictionary *dict = @{@"one":@"第one个",
                           @"two":@"第two个",
                           @"three":@""};
    NSMutableDictionary *mutableDict = [[NSMutableDictionary alloc] initWithDictionary:dict];
    //[mutableDict setValue:nil forKey:@"one"];
    
    [mutableDict.check setObject:nil forKey:@"one"];
    
    ELOG(@"%@",mutableDict[@"one"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
