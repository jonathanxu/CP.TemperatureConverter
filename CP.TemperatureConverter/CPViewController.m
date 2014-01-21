//
//  CPViewController.m
//  CP.TemperatureConverter
//
//  Created by Jonathan Xu on 1/20/14.
//  Copyright (c) 2014 Jonathan Xu. All rights reserved.
//

#import "CPViewController.h"
#import "CPTemperatureUtil.h"

@interface CPViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (strong, nonatomic) NSString *activeTextField;
@end

@implementation CPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
}

@synthesize activeTextField = _activeTextField;

- (void)setActiveTextField:(NSString *) activeTextField
{
    if (![_activeTextField isEqualToString:activeTextField]) {
        _activeTextField = activeTextField;
        if ([_activeTextField isEqualToString:@"F"]) {
            self.fahrenheitTextField.textColor = [UIColor blueColor];
            self.celsiusTextField.textColor = [UIColor blackColor];
        } else if ([_activeTextField isEqualToString:@"C"]) {
            self.fahrenheitTextField.textColor = [UIColor blackColor];
            self.celsiusTextField.textColor = [UIColor blueColor];
        }
    }
}

- (IBAction)editingChangedFahrenheit {
    NSLog(@"editingChangedFahrenheit");
    self.activeTextField = @"F";
}

- (IBAction)editingChangedCelsius {
    NSLog(@"editingChangedCelsius");
    self.activeTextField = @"C";
}

- (IBAction)tapOnView:(id)sender
{
    NSLog(@"tapOnView");
    [self.view endEditing:YES];
}

- (IBAction)touchConvert
{
    NSLog(@"touchConvert");
    [self.view endEditing:YES];
    
    NSLog(@"last edited text field: %@", self.activeTextField);
    if ([self.activeTextField isEqualToString:@"F"]) {
        float fahrenheit = [self.fahrenheitTextField.text floatValue];
        float celsius = [CPTemperatureUtil falrenheitToCelsius:fahrenheit];
        self.celsiusTextField.text = [NSString stringWithFormat:@"%.01f", celsius];
    } else if ([self.activeTextField isEqualToString:@"C"]) {
        float celsius = [self.celsiusTextField.text floatValue];
        float fahrenheit = [CPTemperatureUtil celsiusToFalrenheit:celsius];
        self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.01f", fahrenheit];
    }
}
@end
