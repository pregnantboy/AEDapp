//
//  FormViewController.h
//  AED
//
//  Created by Ian Chen on 5/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FormViewController : UIViewController <CLLocationManagerDelegate> 
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UITextField *lat;
@property (weak, nonatomic) IBOutlet UITextField *lon;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UISwitch *placed;
@property (weak, nonatomic) IBOutlet UISwitch *visible;
@property (weak, nonatomic) IBOutlet UISwitch *ready;
@property (weak, nonatomic) IBOutlet UITextField *floor;


@end
