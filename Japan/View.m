//
//  View.m
//  Japan
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        //Keep the size of the view the same,
		//but let the center of the view be the origin.
		CGFloat w = self.bounds.size.width;
		CGFloat h = self.bounds.size.height;
		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
    // Drawing code
    
    
    UIFont *font = [UIFont systemFontOfSize: 32];
	[@"Origin" drawAtPoint: CGPointZero withFont: font];
    CGRect bounds = self.bounds;
    CGFloat radius = .3 * bounds.size.width;	//in pixels
    
    /*
     Create the invisible square that will surround the circle.
     Place the upper left corner of the square at the upper left corner of
     the View.  bounds.origin.x and bounds.origin.y are the coordinates of
     the upper left corner of the View.
     */
    CGRect r = CGRectMake(
                         -radius,
                         -radius,
                          2 * radius,
                          2 * radius
                          ); 
    
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextBeginPath(c); //unnecessary here: the path is already empty.
    CGContextTranslateCTM(c, bounds.size.width / 2, bounds.size.height / 2);
    CGContextAddEllipseInRect(c, r);
    CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1.0);	//red, opaque
    CGContextFillPath(c);
}


@end
