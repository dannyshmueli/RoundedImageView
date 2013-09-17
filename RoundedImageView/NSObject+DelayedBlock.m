//
//  NSObject+DelayedBlock.m
//  Read and Do
//
//  Created by Danny Shmueli on 7/11/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

#import "NSObject+DelayedBlock.h"

@implementation NSObject (DelayedBlock)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay
{
	int64_t delta = (int64_t)(1.0e9 * delay);
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delta), dispatch_get_main_queue(), block);
}

@end
