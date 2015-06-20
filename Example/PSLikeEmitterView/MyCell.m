//
//  MyCell.m
//  PSLikeEmitterView
//
//  Created by noughts on 2015/06/20.
//  Copyright (c) 2015年 Koichi Yamamoto. All rights reserved.
//

#import <PSLikeEmitterView/PSLikeEmitterView.h>
#import "MyCell.h"

@implementation MyCell{
	__weak IBOutlet UIImageView* _iv;
	__weak IBOutlet PSLikeEmitterView* _emitterView;
}

-(void)awakeFromNib{
	[super awakeFromNib];
	
	UILongPressGestureRecognizer* gr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onImageLongPress:)];
	[_iv addGestureRecognizer:gr];
	
	_emitterView.particle_img = [UIImage imageNamed:@"heart"];
}


-(IBAction)onPlayButtonTap:(id)sender{
	[_emitterView playWithLog:nil];
}




-(void)onImageLongPress:(UILongPressGestureRecognizer*)gr{
	NSLog( @"%@", gr );
}


@end
