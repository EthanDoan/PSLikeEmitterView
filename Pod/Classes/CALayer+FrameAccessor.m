//
//  CALayer+FrameAccessor.m
//  Pods
//
//  Created by noughts on 2015/06/21.
//
//

#import "CALayer+FrameAccessor.h"

@implementation CALayer (FrameAccessor)

- (CGFloat)x{
	return self.frame.origin.x;
}

- (void)setX:(CGFloat)newX{
	CGRect newFrame = self.frame;
	newFrame.origin.x = newX;
	self.frame = newFrame;
}

- (CGFloat)y{
	return self.frame.origin.y;
}

- (void)setY:(CGFloat)newY{
	CGRect newFrame = self.frame;
	newFrame.origin.y = newY;
	self.frame = newFrame;
}	

@end
