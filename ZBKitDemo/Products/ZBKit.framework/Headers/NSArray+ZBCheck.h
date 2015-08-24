//
//  NSArray+Check.h
//  拦截
//
//  Created by ZhaoMY on 8/21/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ZBCheck)


// 防止因越界带来的crash
- (NSArray *)check;





@end



