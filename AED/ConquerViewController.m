//
//  ConquerViewController.m
//  AED
//
//  Created by Ian Chen on 5/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import "ConquerViewController.h"


@interface ConquerViewController ()

@end

@implementation ConquerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (void)viewDidAppear:(BOOL)animated {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"No camera!"
                                                                                 message:nil
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            [self showMainMenu];
        }];
        [alertController addAction:cancel];
        [self presentViewController:alertController animated:YES completion:nil];
    } else {
        [self showCamera];
    }
}
- (void) showMainMenu {
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)showCamera {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
  
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    // creating overlayView
    UIView* overlayView = [[UIView alloc] initWithFrame:picker.view.frame];
    // letting png transparency be
    overlayView.backgroundColor = [UIColor clearColor];
    UIImageView *overImg = [[UIImageView alloc] initWithFrame: CGRectMake(200, 100, 300, 400)];
    [overImg setImage:[UIImage imageNamed:@"PAP.png"]];
    [overlayView addSubview:overImg];
    
    [overlayView.layer setOpaque:NO];
    overlayView.opaque = NO;
    
    picker.cameraOverlayView = overlayView;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self showMainMenu];
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

@end
