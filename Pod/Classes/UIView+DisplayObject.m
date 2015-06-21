//
//  UIView+Rotation.m
//  Pods
//
//  Created by noughts on 2015/06/22.
//
//

#import "UIView+DisplayObject.h"

@implementation UIView (DisplayObject)

-(void)render{
	
}



-(CGFloat)rotation{
	CGFloat radians = atan2f(self.transform.b, self.transform.a);
	CGFloat degrees = radians * (180 / M_PI);
	return degrees;
}

-(void)setRotation:(CGFloat)rotation{
	CGFloat angle = rotation * M_PI / 180.0;
	self.transform = CGAffineTransformMakeRotation(angle);
}

@end
