//
//  CPTemperatureUtil.h
//  CP.TemperatureConverter
//
//  Created by Jonathan Xu on 1/20/14.
//  Copyright (c) 2014 Jonathan Xu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPTemperatureUtil : NSObject

+ (float)falrenheitToCelsius:(float) falrenheit;
+ (float)celsiusToFalrenheit:(float) celsius;

@end
