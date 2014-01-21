//
//  CPTemperatureUtil.m
//  CP.TemperatureConverter
//
//  Created by Jonathan Xu on 1/20/14.
//  Copyright (c) 2014 Jonathan Xu. All rights reserved.
//

#import "CPTemperatureUtil.h"

@implementation CPTemperatureUtil

+ (float)falrenheitToCelsius:(float) falrenheit
{
    return (falrenheit - 32.0) * (5.0 / 9.0);
}

+ (float)celsiusToFalrenheit:(float) celsius
{
    return celsius * (9.0 / 5.0) + 32.0;
}

@end
