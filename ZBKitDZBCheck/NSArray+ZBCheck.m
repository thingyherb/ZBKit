//
//  NSArray+Check.m
//  拦截
//
//  Created by ZhaoMY on 8/21/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "NSArray+ZBCheck.h"
#import <objc/runtime.h>

@implementation NSArray (ZBCheck)

static IMP _targetImp = NULL;

- (id)checkObjectAtIndex:(NSUInteger)index {
    
    [self restore];
    
    id result = nil;
    
    if (index < self.count) {
        
        result = self[index];
        
    } else {
        
        NSLog(@"数组越界：%@", self.description);
    }

    return result;
}

- (void)restore {
    
    class_replaceMethod([self class], @selector(objectAtIndex:), _targetImp, NULL);

}

- (NSArray *)check {

    if (!_targetImp) {
        
        _targetImp = [self methodForSelector:@selector(objectAtIndex:)];
    }
    
    IMP imp = [self methodForSelector:@selector(checkObjectAtIndex:)];
    class_replaceMethod([self class], @selector(objectAtIndex:), imp, NULL);
    
    return self;
}



@end








