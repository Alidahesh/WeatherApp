//
//  DetailedViewController.m
//  Weather
//
//  Created by Ali Dahesh on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =  [UIColor whiteColor];
    UIImageView *imageHolder = [[UIImageView alloc] initWithFrame:CGRectMake(40, 200, 280, 192)];
    UIImage *image = [UIImage imageNamed:@"Paris.png"];
    imageHolder.image = image;
    
    [self.view addSubview:imageHolder];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
