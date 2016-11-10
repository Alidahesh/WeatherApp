//
//  CityViewControler.m
//  Weather
//
//  Created by Ali Dahesh on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewControler.h"
#import "DetailedViewController.h"

@interface CityViewControler()

@property (nonatomic) UILabel *cityNameLabel;
@property (nonatomic) UILabel *cityweatherLabel;

@end


@implementation CityViewControler

-(instancetype)initWithCity:(City *)city {
    self = [super init];
    if (self) {
        self.city = city;
        self.title = city.name;        
    }
    return self;
 
}
-(void)viewDidAppear:(BOOL)animated
{
    UIButton *but= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [but addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [but setFrame:CGRectMake(52, 252, 215, 40)];
    [but setTitle:@"Show Details" forState:UIControlStateNormal];
    [but setExclusiveTouch:YES];
    
    // if you like to add backgroundImage else no need
    
    [self.view addSubview:but];
}
-(void)showWeatherDetails
{
    DetailedViewController *viewController = [[DetailedViewController alloc] init];
    
    [self.navigationController pushViewController:viewController animated:YES];
    
    
}

@end
