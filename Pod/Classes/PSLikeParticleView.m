//
//  PSLikeParticleView.m
//  Pods
//
//  Created by noughts on 2015/06/21.
//
//

#import "PSLikeParticleView.h"
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
}


-(void)update:(CADisplayLink*)link{
	self.y -= 2;
	CGFloat progress = _age / (CGFloat)_lifeSpan;
	self.alpha = 1- progress;
	_age++;
	if( _age > _lifeSpan){
		[link invalidate];
		[self removeFromSuperview];
	}
}




@end
