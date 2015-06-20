//
//  MyCell.m
//  PSLikeEmitterView
//
//  Created by noughts on 2015/06/20.
//  Copyright (c) 2015年 Koichi Yamamoto. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell{
	__weak IBOutlet UIImageView* _iv;
}

-(void)awakeFromNib{
	[super awakeFromNib];
	
	UILongPressGestureRecognizer* gr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onImageLongPress:)];
	

}


-(void)onImageLongPress:(UILongPressGestureRecognizer*)gr{
	
}


@end
