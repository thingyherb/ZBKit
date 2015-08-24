//
//  NSMutableArray+ZBCheck.h
//  ZBKit
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (ZBCheck)


// 防止因越界带来的crash 以及插入空对象导致的carsh
- (NSMutableArray *)check;


@end
