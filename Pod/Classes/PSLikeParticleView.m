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
		_lifeSpan = [self randWithMin:50 max:70];
	}
	
	_speed = [self randWithMin:1 max:2];
	_shakeSpeed = [self randWithMin:10 max:20];
	_shakeStartPoint = [self randWithMin:0 max:100];
	
	CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(update:)];
	[link addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
	[self update:nil];
	[self popInAnime:0];

}


/// ポップして表示アニメ
-(void)popInAnime:(float)delay{
	self.transform = CGAffineTransformMakeScale(0,0);
	[UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:0 animations:^{
		self.transform = CGAffineTransformMakeScale(1.0, 1.0);
	} completion:^(BOOL finished) {
		
	}];
}


-(void)update:(CADisplayLink*)link{
	
	CGFloat progress = _age / (CGFloat)_lifeSpan;
	self.alpha = 1- progress;
	
	self.rotation = sinf((_age+_shakeStartPoint)/_shakeSpeed) * 15;

	CGFloat x = sinf(self.rotation * M_PI / 180);
	CGFloat y = cosf(self.rotation * M_PI / 180);
	self.centerY -= y * 2;
	self.centerX += x *(_age/10);
	
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
