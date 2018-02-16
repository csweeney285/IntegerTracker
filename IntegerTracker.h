//
//  IntegerTracker.h
//  BrazeChallenge
//
//  Created by Conor Sweeney on 2/14/18.
//  Copyright © 2018 csweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IntegerTracker : NSObject

- (void)track:(int)i;
- (int)get_max;
- (int)get_min;
- (float)get_mean;
- (int)get_mode;

@end
