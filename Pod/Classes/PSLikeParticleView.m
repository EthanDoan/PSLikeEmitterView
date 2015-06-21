//
//  PSLikeParticleView.m
//  Pods
//
//  Created by noughts on 2015/06/21.
//
//

#import "PSLikeParticleView.h"
#import "UIView+DisplayObject.h"
#import <FrameAccessor.h>

@implementation PSLikeParticleView{
	NSInteger _age;// 現在の年齢
}

-(void)startAnimation{
	if( _lifeSpan == 0 ){
		_lifeSpan = 50;
	}
	
	CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(update:)];
	[link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
	
	self.rotation = 10;

}


-(void)update:(CADisplayLink*)link{
	self.centerY -= 2;
	CGFloat progress = _age / (CGFloat)_lifeSpan;
	self.alpha = 1- progress;
	

	self.rotation = sinf(_age/10.0) * 10.0;
	

	_age++;
	if( _age > _lifeSpan){
		[link invalidate];
		[self removeFromSuperview];
	}
}




@end
