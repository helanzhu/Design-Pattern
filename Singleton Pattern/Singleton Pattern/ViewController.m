//
//  ViewController.m
//  Singleton Pattern
//
//  Created by chenqg on 2019/10/31.
//  Copyright © 2019 chenqg. All rights reserved.
//

#import "ViewController.h"
#import "FileManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FileManager *manager1 = [FileManager sharedInstance];
    [manager1 addFile];
    [manager1 deleteFile];
    
    FileManager *manager2 = [FileManager sharedInstance];
    [manager2 addFile];
    [manager2 deleteFile];
    
    NSLog(@"manager1 = %p \n manager2 = %p",manager1,manager2);


}



@end
