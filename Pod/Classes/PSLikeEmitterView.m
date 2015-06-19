//
//  PSLikeEmitterView.m
//  Pods
//
//  Created by noughts on 2015/06/19.
//
//

#import "PSLikeEmitterView.h"

@implementation PSLikeEmitterView

-(void)awakeFromNib{
	[super awakeFromNib];
	self.userInteractionEnabled = NO;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog( @"touches began" );
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog( @"touchesMoved" );
//	NSLog( @"%@", touches );
//	NSLog( @"%@", event );
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog( @"touchesEnded" );
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog( @"touchesCancelled" );
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
