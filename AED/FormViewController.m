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
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 10)];
    self.textView.layer.borderWidth = 1.0f;
    self.textView.layer.borderColor = [[UIColor blackColor] CGColor];
    
    self.lat.borderStyle = UITextBorderStyleRoundedRect;
    self.lat.layer.borderWidth = 1.0f;
    self.lat.layer.cornerRadius = 8.0f;
    self.lat.leftView = paddingView;
    self.lon.borderStyle = UITextBorderStyleRoundedRect;
    self.lon.layer.borderWidth = 1.0f;
    self.lon.layer.cornerRadius = 8.0f;
    self.lon.leftView = paddingView;
    self.floor.borderStyle = UITextBorderStyleRoundedRect;
    self.floor.layer.borderWidth = 1.0f;
    self.floor.layer.cornerRadius = 8.0f;
    self.floor.leftView = paddingView;
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    self.lat.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.latitude];
    self.lon.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.longitude];
}

- (void) setImage: (UIImage *)image {
    self.imageView.image = image;
}

- (IBAction)getGPS:(id)sender {
    self.lat.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.latitude];
    self.lon.text = [NSString stringWithFormat:@"%f",self.locationManager.location.coordinate.longitude];
}


@end
