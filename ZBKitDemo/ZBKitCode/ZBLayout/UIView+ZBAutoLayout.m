//
//  UIView+ZBAutoLayout.m
//  ZBKit
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "UIView+ZBAutoLayout.h"

@implementation UIView (ZBAutoLayout)



#pragma mark - Getters & Setters

static Constrain _constrain;

- (Constrain)constrain {
    
    return _constrain;
}

- (void)setConstrain:(Constrain)constrain {
    
    _constrain = constrain;
    
    if (!self.superview) {
        
        NSLog(@"Error: %@ must have a superview",self);
        
        return;
    }
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    NSArray *hConstrains = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-x-[self(==width)]"
                                                                   options:0
                                                                   metrics:@{@"x":@(_constrain.x),@"width":@(_constrain.width)}
                                                                     views:NSDictionaryOfVariableBindings(self)];
    NSArray *vConstrains = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-y-[self(==height)]"
                                                                   options:0
                                                                   metrics:@{@"y":@(_constrain.y),@"height":@(_constrain.height)}
                                                                     views:NSDictionaryOfVariableBindings(self)];
    [self.superview addConstraints:hConstrains];
    [self.superview addConstraints:vConstrains];
}

@end







