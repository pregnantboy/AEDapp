//
//  ChooseSideViewController.m
//  AED
//
//  Created by Ian Chen on 5/12/15.
//  Copyright © 2015 Ian Chen. All rights reserved.
//

#import "ChooseSideViewController.h"

@interface ChooseSideViewController ()

@end

@implementation ChooseSideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(choosePOP)];
    [self.POPView addGestureRecognizer:tap];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(chooseWOP)];
    [self.WOPview addGestureRecognizer:tap2];
}

- (void)choosePOP {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Pledge allegiance to POP?"
                                                                             message:@"This decision cannot be changed."
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *confirm = [UIAlertAction actionWithTitle:@"With my life" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self showMainMenu];
    }];
    UIAlertAction *never = [UIAlertAction actionWithTitle:@"Never" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
    }];
    [alertController addAction:confirm];
    [alertController addAction:never];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)chooseWOP {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Pledge allegiance to WOP?"
                                                                             message:@"This decision cannot be changed."
                                                                      preferredStyle:
                                          UIAlertControllerStyleAlert];
    UIAlertAction *never = [UIAlertAction actionWithTitle:@"Never" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
    }];
    [alertController addAction:never];
    [self presentViewController:alertController animated:YES completion:nil];

}

- (void) showMainMenu {
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"MainMenu"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
