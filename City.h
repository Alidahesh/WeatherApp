//
//  City.h
//  Weather
//
//  Created by Ali Dahesh on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject;

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *weather;

- (instancetype)initWithName:(NSString *)name;

@end
