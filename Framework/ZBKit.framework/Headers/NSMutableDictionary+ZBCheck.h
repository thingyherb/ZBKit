//
//  NSMutableDictionary+ZBCheck.h
//  ZBKitDemo
//
//  Created by ZhaoMY on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (ZBCheck)



// 防止因setOjbecForKey时，anOjbect为空时，carsh
- (NSMutableDictionary *)check;





@end


