//
//  UIButton+AGi18n.m
//  AGi18n
//
//  Created by Angel Garcia on 3/13/13.
//  Copyright (c) 2013 angelolloqui.com. All rights reserved.
//

#import "UIButton+AGi18n.h"

@implementation UIButton (AGi18n)

- (void)localizeFromNib {
    
    //Replace text with localizable version
    UIControlState states[] = {UIControlStateNormal, UIControlStateSelected, UIControlStateHighlighted, UIControlStateDisabled};
    const int count = 4;
    
    NSString *normalTitle = [self titleForState:UIControlStateNormal];
    for (int i = 0; i < count; ++i) {
        UIControlState state = states[i];
        NSString *title = [self titleForState:state];
        if (state == UIControlStateNormal || ![title isEqualToString:normalTitle]) {
            [self setTitle:[[NSBundle mainBundle] localizedStringForKey:title value:@"" table:nil]
                  forState:state];
        }
    }
}

@end
