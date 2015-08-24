//
//  NSMutableArray+ZBCheck.m
//  ZBKit
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "NSMutableArray+ZBCheck.h"
#import "ZBLog.h"
#import <objc/runtime.h>

@implementation NSMutableArray (ZBCheck)


static IMP _targetImp  = NULL;
static IMP _targetImp2 = NULL;

- (id)checkObjectAtIndex:(NSUInteger)index {
    
    [self restore];
    
    id result = nil;
    
    if (index < self.count) {
        
        result = self[index];
        
    } else {
        
        ZBWarning(@"数组越界：%@", self.description);
    }
    
    return result;
}

- (void)checkInsertObject:(id)anObject atIndex:(NSUInteger)index {
    
    [self restore];
    
    if (anObject) {
        
        [self insertObject:anObject atIndex:index];
        
    } else {
     
        ZBWarning(@"插入的数据为空：%@",self);
    }
}

- (void)restore {
    
    class_replaceMethod([self class], @selector(objectAtIndex:), _targetImp, NULL);
    class_replaceMethod([self class], @selector(insertObject:atIndex:), _targetImp2, NULL);
}

- (NSArray *)check {
    
    if (!_targetImp) {
        
        _targetImp  = [self methodForSelector:@selector(objectAtIndex:)];
    }
    
    if (!_targetImp2) {
        
        _targetImp2 = [self methodForSelector:@selector(insertObject:atIndex:)];
    }
    
    IMP imp = [self methodForSelector:@selector(checkObjectAtIndex:)];
    class_replaceMethod([self class], @selector(objectAtIndex:), imp, NULL);
    
    IMP imp2 = [self methodForSelector:@selector(checkInsertObject:atIndex:)];
    class_replaceMethod([self class], @selector(insertObject:atIndex:), imp2, NULL);
    
    
    
    return self;
}







@end





