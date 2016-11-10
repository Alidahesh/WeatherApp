//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewControler.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    City *vancouver = [[City alloc] initWithName:@"Vancouver"];
    City *paris = [[City alloc] initWithName:@"paris"];
    City *rome = [[City alloc] initWithName:@"rome"];
    City *newyork = [[City alloc] initWithName:@"newyork"];
    City *tehran = [[City alloc] initWithName:@"tehran"];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    CityViewControler *vancouverVC = [[CityViewControler alloc] initWithCity:vancouver];
    UINavigationController *vancouverNavController = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    //tabBarController.viewControllers = @[vancouverNavController], parisNA ;
    
    CityViewControler *parisVC = [[CityViewControler alloc] initWithCity:paris];
    UINavigationController *parisNavController = [[UINavigationController alloc] initWithRootViewController:parisVC];
    //tabBarController.viewControllers = @[parisNavController];
    
    CityViewControler *romeVC = [[CityViewControler alloc] initWithCity:rome];
    UINavigationController *romeNavController = [[UINavigationController alloc] initWithRootViewController:romeVC];
    //tabBarController.viewControllers = @[romeNavController];
    
    CityViewControler *newyorkVC = [[CityViewControler alloc] initWithCity:newyork];
    UINavigationController *newyorkNavController = [[UINavigationController alloc] initWithRootViewController:newyorkVC];
    //tabBarController.viewControllers = @[newyorkNavController];
    
    CityViewControler *tehranVC = [[CityViewControler alloc] initWithCity:tehran];
    UINavigationController *tehranNavController = [[UINavigationController alloc] initWithRootViewController:tehranVC];
    
    parisNavController.tabBarItem.image = [UIImage imageNamed:@"Paris.png"];

    tabBarController.viewControllers = @[vancouverNavController, parisNavController, romeNavController, newyorkNavController,
                                         tehranNavController];
//  NSArray *viewConrollers = [NSArray *cityArray: vancouver, paris, rome, newyork, tehran];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}




@end
