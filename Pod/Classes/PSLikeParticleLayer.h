//
//  PSLikeParticleLayer.h
//  Pods
//
//  Created by noughts on 2015/06/20.
//
//

#import <QuartzCore/QuartzCore.h>

@interface PSLikeParticleLayer : CALayer

@property NSInteger lifeSpan;// 寿命

-(void)startAnimation;

@end
