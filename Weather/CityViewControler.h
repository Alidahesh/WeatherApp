//
//  CityViewControler.h
//  Weather
//
//  Created by Ali Dahesh on 2016-11-09.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "City.h"


@interface CityViewControler : UIViewController


@property (nonatomic) City *city;

-(instancetype)initWithCity : (City *)city;

@end
