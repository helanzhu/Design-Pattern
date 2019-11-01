//
//  ViewController.m
//  Builder Pattern
//
//  Created by chenqg on 2019/11/1.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "CarDirector.h"
#import "AudiBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CarDirector *director = [[CarDirector alloc] init];
    AudiBuilder *builder = [[AudiBuilder alloc] init];
    Car *car = [director assemblingCarWithBuilder:builder];
    NSLog(@"engine = %@\n wheel = %@\n shell = %@",car.engine,car.wheel,car.shell);
    
}


@end
