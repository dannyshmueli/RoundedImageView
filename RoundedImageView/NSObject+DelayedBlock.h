//
//  NSObject+DelayedBlock.h
//  Read and Do
//
//  Created by Danny Shmueli on 7/11/13.
//  Copyright (c) 2013 Danny Shmueli. All rights reserved.
//

@interface NSObject (DelayedBlock)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
