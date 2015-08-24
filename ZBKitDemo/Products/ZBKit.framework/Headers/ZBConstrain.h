//
//  ZBConstrain.h
//  ZBKitDemo
//
//  Created by ZhaoMY on 7/23/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#ifndef ZBKitDemo_ZBConstrain_h
#define ZBKitDemo_ZBConstrain_h

typedef struct {
    
    CGFloat x;
    CGFloat y;
    CGFloat width;
    CGFloat height;
    
}Constrain;


static inline Constrain ConstrainMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
    
    Constrain constrain;
    constrain.x      = x;
    constrain.y      = y;
    constrain.width  = width;
    constrain.height = width;
    
    return constrain;
}


extern Constrain ConstrainZero;


#endif

