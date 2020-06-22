//
//  ViewController.m
//  crash
//
//  Created by YQ on 2020/6/18.
//  Copyright © 2020 star happy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *arr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arr = @[@"1",@"2",@"3"];
    
    
    
    
}
- (IBAction)click:(UIButton *)sender {
    NSLog(@"%@",[self.arr objectAtIndex:4]);
    
}


@end
