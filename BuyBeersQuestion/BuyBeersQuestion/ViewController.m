//
//  ViewController.m
//  BuyBeersQuestion
//
//  Created by Jacob_Liang on 2017/3/13.
//  Copyright © 2017年 Jacob. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Beer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] initWithCash:10];
    
    Beer *beer = [[Beer alloc] init];
    /**<告诉person 所要买和喝的啤酒是哪一种类型 */
    [person goToBuyAndDrinkBeer:beer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
