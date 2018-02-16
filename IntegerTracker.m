//
//  IntegerTracker.m
//  BrazeChallenge
//
//  Created by Conor Sweeney on 2/14/18.
//  Copyright © 2018 csweeney. All rights reserved.
//

#import "IntegerTracker.h"
@interface IntegerTracker()

@property (strong,nonatomic) NSMutableDictionary *numbers;
@property float total;
@property float totalCount;
@property int max;
@property int min;
@property int mode;
@property int modeCount;

@end

@implementation IntegerTracker

-(id)init{
    self = [super init];
    if(self){
        self.numbers = [NSMutableDictionary new];
    }
    return self;
}

- (void)track:(int)i{
    //this will be used to calculate mean
    self.total += i;
    self.totalCount++;
    
    //this will be used to calculate mode
    //store all the numbers in a dictionary where the key is the number and the value is the count
    NSString *key = [NSString stringWithFormat:@"%d",i];
    int count = 0;
    if([self.numbers objectForKey:key]){
        count = [[self.numbers objectForKey:key] intValue];
    }
    count++;
    NSString *countString = [NSString stringWithFormat:@"%d",count];
    [self.numbers setObject:countString forKey:key];
    
    //set new mode
    if(self.modeCount < count){
        self.modeCount = count;
        self.mode = i;
    }
    
    //I'm assuming that I only return one value for these methods so if there is a tie for these values then I return the number set first, not both
    //min check
    if(self.min > i){
        self.min = i;
    }
    
    //max check
    if(self.max < i){
        self.max = i;
    }
}

//since I can assume track will be called at least once there is no reason to check for an empty tracker object
- (int)get_max{
    return self.max;
}

- (int)get_min{
    return self.max;
}

- (int)get_mode{
    return self.mode;
}

- (float)get_mean{
    return self.total/self.totalCount;
}


@end
