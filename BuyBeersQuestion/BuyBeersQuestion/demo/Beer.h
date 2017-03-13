//
//  Beer.h
//  BuyBeersQuestion
//
//  Created by Jacob_Liang on 2017/3/13.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Beer : NSObject

@property (nonatomic, assign) NSInteger oneOfCash;/**< 多少现金可换一瓶啤酒 */
@property (nonatomic, assign) NSInteger oneOfCaps;/**< 多少盖子可换一瓶啤酒 */
@property (nonatomic, assign) NSInteger oneOfBottles;/**< 多少空酒瓶可换一瓶啤酒 */


@end
