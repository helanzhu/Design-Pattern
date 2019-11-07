//
//  ViewController.m
//  Flyweight Pattern
//
//  Created by chenqg on 2019/11/7.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "ShapeFactory.h"
#import "Circle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    ShapeFactory *factory = [[ShapeFactory alloc]init];
    for (NSUInteger index = 0; index < 10; index++) {
        int randNum = rand()%4;
        Circle *circle = [factory createCircleWithColorType:randNum==0?1:randNum];
        circle.x = rand()%200;
        circle.y = rand()%200;
        circle.radius = 100;
        [circle draw];
    }
    
}


@end
