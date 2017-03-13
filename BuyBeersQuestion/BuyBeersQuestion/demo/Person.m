//
//  Person.m
//  BuyBeersQuestion
//
//  Created by Jacob_Liang on 2017/3/13.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "Person.h"
#import "Beer.h"

@interface Person ()

@property (nonatomic, assign) NSInteger cash;/**< 拥有的现金 */
@property (nonatomic, assign) NSInteger remainCash;/**< 剩下的现金数 */

@property (nonatomic, assign) NSInteger beers;/**< 喝了多少瓶酒 */
@property (nonatomic, assign) NSInteger currentDrinkableBeers;/**< 可以喝的当前啤酒数 */
@property (nonatomic, assign) NSInteger remainCaps;/**< 剩余酒盖数 */
@property (nonatomic, assign) NSInteger remainBottles;/**< 剩余酒瓶数 */

@end

@implementation Person

- (instancetype)initWithCash:(NSInteger)cash {
    if (self = [super init]) {
        _cash = cash;
    }
    return self;
}

- (void)buyBeer:(Beer *)beer {
    self.currentDrinkableBeers = self.cash / beer.oneOfCash;
    self.remainCash = self.cash % beer.oneOfCash;
    
}

- (void)drinkBeer {
    self.beers += self.currentDrinkableBeers;
    self.remainCaps += self.currentDrinkableBeers;
    self.remainBottles += self.currentDrinkableBeers;
    self.currentDrinkableBeers = 0;
}

- (void)exchangeBeers:(Beer *)beer {
    if (self.remainCaps >= beer.oneOfCaps || self.remainBottles >= beer.oneOfBottles) {
        self.currentDrinkableBeers = self.remainCaps / beer.oneOfCaps;
        self.remainCaps = self.remainCaps % beer.oneOfCaps;
        
        self.currentDrinkableBeers += self.remainBottles / beer.oneOfBottles;
        self.remainBottles = self.remainBottles % beer.oneOfBottles;
        
    }
}

- (void)goToBuyAndDrinkBeer:(Beer *)beer {
    [self buyBeer:beer];
    [self drinkBeer];
    while ((self.remainCaps >= beer.oneOfCaps || self.remainBottles >= beer.oneOfBottles)) {
        [self exchangeBeers:beer];
        [self drinkBeer];
    }
    NSLog(@"用%ld元钱,喝了%ld瓶酒,剩余%ld元钱,剩余%ld个瓶盖,剩余%ld空酒瓶",self.cash,self.beers,self.remainCash,self.remainCaps,self.remainBottles);
}

@end
