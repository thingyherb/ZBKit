//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()


@end


@implementation ___FILEBASENAMEASIDENTIFIER___


#pragma mark - Dealloc

- (void)dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Initialize

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder:aDecoder]) {
        
        // initialize
        [self initialize];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        // initialize
        [self initialize];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    // layout subviews
    [self layout];
}

- (void)initialize {
    // You should add subviews here, just add subviews
    
}

- (void)layout {
    // You should set subviews constrainsts or frame here
    
}

#pragma mark - Receive Notification

- (void)didReveiveKeyWillShowNotification:(NSNotification *)notification {
    
}

#pragma mark - System Delegate
#pragma mark SystemDelegate1


#pragma mark - Custom Delegate
#pragma mark CustomDelegate1


#pragma mark - Event Response

- (void)didPressOneButton:(UIButton *)button {
    
}

#pragma mark - Public Method

- (void)letDoSomething {
    
}

#pragma mark - Private Method

- (void)doSomething {
    
}



@end



