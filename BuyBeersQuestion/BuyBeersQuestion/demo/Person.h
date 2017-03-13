//
//  Person.h
//  BuyBeersQuestion
//
//  Created by Jacob_Liang on 2017/3/13.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class Beer;

@interface Person : NSObject

- (instancetype)initWithCash:(NSInteger)cash;
- (void)goToBuyAndDrinkBeer:(Beer *)beer;

@end
