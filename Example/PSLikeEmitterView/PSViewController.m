//
//  PSViewController.m
//  PSLikeEmitterView
//
//  Created by Koichi Yamamoto on 06/19/2015.
//  Copyright (c) 2014 Koichi Yamamoto. All rights reserved.
//

#import "PSViewController.h"
#import <PSLikeEmitterView/PSLikeEmitterView.h>


@implementation PSViewController{
	__weak IBOutlet UICollectionView* _collectionView;
	__weak IBOutlet PSLikeEmitterView* _emitter;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onImageLongPress:(id)sender{
	NSLog( @"longpress" );
	_emitter.userInteractionEnabled = YES;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
	return 10;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
	UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
	return cell;
}


@end
