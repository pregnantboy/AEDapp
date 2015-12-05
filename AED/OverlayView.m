//
//  OverlayView.m
//  AED
//
//  Created by Ian Chen on 6/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import "OverlayView.h"

@implementation OverlayView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    return NO;
}

@end
