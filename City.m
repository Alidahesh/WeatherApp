//
//  City.m
//  Weather
//
//  Created by Ali Dahesh on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (instancetype)initWithWeather:(NSString *)weather
{
    self = [super init];
    if (self) {
        self.weather = weather;
    }
    return self;
}

@end
