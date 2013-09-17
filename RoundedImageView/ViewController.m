//
//  ViewController.m
//  RoundedImageView
//
//  Created by Danny Shmueli on 9/17/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

#import "ViewController.h"
#import "RoundedImageView.h"
#import "NSObject+DelayedBlock.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIImageView *roundedImageView1;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	//initWithImage
	RoundedImageView *roundedImageView2 = [[RoundedImageView alloc] initWithImage:[UIImage imageNamed:@"image.jpg"] ];
	roundedImageView2.frame = CGRectMake(60, 210, 200, 150);
	[self.view addSubview:roundedImageView2];

	//initWithFrame
	RoundedImageView *roundedImageView3 = [[RoundedImageView alloc] initWithFrame:CGRectMake(100, 390, 120, 80)];
	roundedImageView3.image = [UIImage imageNamed:@"image.jpg"];
	[self.view addSubview:roundedImageView3];

	//testing image change
	[self performBlock:^(){
		self.roundedImageView1.image = [UIImage imageNamed:@"paris.jpg"];
		roundedImageView2.image = [UIImage imageNamed:@"paris.jpg"];
		roundedImageView3.image = [UIImage imageNamed:@"paris.jpg"];
		
	} afterDelay:3];
}

@end
