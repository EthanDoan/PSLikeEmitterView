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
	CGFloat _speed;// 上昇スピード
	CGFloat _shakeSpeed;// ゆれスピード
	NSInteger _shakeStartPoint;
}

-(void)startAnimation{
	if( _lifeSpan == 0 ){
		_lifeSpan = 50;
	}
	
	_speed = [self randWithMin:1 max:2];
	_shakeSpeed = [self randWithMin:10 max:20];
	_shakeStartPoint = [self randWithMin:0 max:100];
	
//	for (int i=0; i<100; i++) {
//		NSLog( @"%@", @([self randWithMin:0 max:1]) );
//	}
	
	CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(update:)];
	[link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
	
	self.rotation = 10;

}


-(void)update:(CADisplayLink*)link{
	self.centerY -= _speed;
	CGFloat progress = _age / (CGFloat)_lifeSpan;
	self.alpha = 1- progress;
	
	self.rotation = sinf((_age+_shakeStartPoint)/_shakeSpeed) * 10;

	
	_age++;
	if( _age > _lifeSpan){
		[link invalidate];
		[self removeFromSuperview];
	}
}


-(CGFloat)randWithMin:(CGFloat)min max:(CGFloat)max{
	NSInteger precise = 10000;
	NSInteger gap = max - min;
	NSInteger a = arc4random() % (gap * precise);
	return a/(float)precise + min;
}



@end
