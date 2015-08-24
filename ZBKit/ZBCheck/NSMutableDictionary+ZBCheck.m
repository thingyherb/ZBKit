//
//  NSMutableDictionary+ZBCheck.m
//  ZBKit
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "NSMutableDictionary+ZBCheck.h"
#import "ZBLog.h"
#import <objc/runtime.h>

@implementation NSMutableDictionary (ZBCheck)

static IMP _targetImp = NULL;

- (void)checkSetObject:(id)anObject forKey:(id <NSCopying>)aKey {
    
    [self restore];
    
    if (anObject) {
        
        [self setObject:anObject forKey:aKey];
        
    } else {
        
        ZBWarning(@"插入的数据为空：%@",self);
    }
}

- (void)restore {
    
    class_replaceMethod([self class], @selector(setObject:forKey:), _targetImp, NULL);
}

- (NSMutableDictionary *)check {
    
    if (!_targetImp) {
        
        _targetImp = [self methodForSelector:@selector(setObject:forKey:)];
    }
    
    IMP imp = [self methodForSelector:@selector(checkSetObject:forKey:)];
    class_replaceMethod([self class], @selector(setObject:forKey:), imp, NULL);
    
    return self;
}


@end
