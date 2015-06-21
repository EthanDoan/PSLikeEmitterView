//
//  PSLikeParticleLayer.m
//  Pods
//
//  Created by noughts on 2015/06/20.
//
//

#import "PSLikeParticleLayer.h"
#import "CALayer+FrameAccessor.h"

@implementation PSLikeParticleLayer{
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
	self.opacity = progress;
	_age++;
	if( _age > _lifeSpan){
		[link invalidate];
		[self removeFromSuperlayer];
	}
}




@end
