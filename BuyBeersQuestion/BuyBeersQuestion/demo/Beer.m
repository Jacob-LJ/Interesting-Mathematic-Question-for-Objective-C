//
//  Beer.m
//  BuyBeersQuestion
//
//  Created by Jacob_Liang on 2017/3/13.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "Beer.h"

@implementation Beer
- (instancetype)init {
    if (self = [super init]) {
        _oneOfCash = 2;
        _oneOfCaps = 4;
        _oneOfBottles = 2;
    }
    return self;
}
@end
