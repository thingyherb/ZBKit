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


#pragma mark - Life circle

- (void)dealloc {

    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize
    [self initialize];
    
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
#pragma mark -- System Delegate1



#pragma mark - Custom Delegate
#pragma mark -- Custom Delegate1



#pragma mark - Event Response

- (void)didPressOneButton:(UIButton *)oneButton {
    
}

#pragma mark - Private Methods

- (void)doSomething {
    
}

#pragma mark - Getters & Setters
// initialize views here, etc



#pragma mark - MemoryWarning

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
