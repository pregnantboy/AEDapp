//
//  MarkerViewController.h
//  AED
//
//  Created by Ian Chen on 6/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MarkerViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;
@end
