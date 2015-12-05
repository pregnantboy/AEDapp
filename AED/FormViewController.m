//
//  FormViewController.m
//  AED
//
//  Created by Ian Chen on 5/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import "FormViewController.h"

@interface FormViewController ()<CLLocationManagerDelegate>

@end

@implementation FormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager startUpdatingLocation];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.scrollView addGestureRecognizer:tap];
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation* loc = [locations lastObject]; // locations is guaranteed to have at least one object
    float latitude = loc.coordinate.latitude;
    float longitude = loc.coordinate.longitude;
    NSLog(@"%.8f",latitude);
    NSLog(@"%.8f",longitude);
    self.lat.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.latitude];
    self.lon.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.longitude];
}


- (IBAction)getGPS:(id)sender {
    self.lat.text = [NSString stringWithFormat:@"%.8f",self.locationManager.location.coordinate.latitude];
    self.lon.text = [NSString stringWithFormat:@"%.8f",self.locationManager.location.coordinate.longitude];
}


@end
