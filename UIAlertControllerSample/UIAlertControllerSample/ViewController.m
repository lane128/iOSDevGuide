//
//  ViewController.m
//  UIAlertControllerSample
//
//  Created by Lane on 9/2/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertButtonTap:(id)sender {
    UIAlertController *alertController=[UIAlertController alertControllerWithTitle:@"Title" message:@"message is here" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *noAction=[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        NSLog(@"Press NO!");
    }];
    
    UIAlertAction *noAction1=[UIAlertAction actionWithTitle:@"No1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Press NO1!");
    }];
    UIAlertAction *noAction2=[UIAlertAction actionWithTitle:@"No2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Press NO2!");
    }];
    
    UIAlertAction *yesAction=[UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        NSLog(@"Press Yes!");
    }];
    
    
    //buttons show by code sequence excepting the cancel and destructive styles.
    [alertController addAction:noAction2];
    [alertController addAction:noAction1];
    [alertController addAction:noAction];
    
    [alertController addAction:yesAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (IBAction)sheetButtonTap:(id)sender {
    UIAlertController *actionSheetController=[[UIAlertController alloc] init];
    
    UIAlertAction *cancelAction=[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        NSLog(@"Cancel");
    }];
    
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"Default" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Default");
    }];
    
    UIAlertAction *defaultAction1=[UIAlertAction actionWithTitle:@"Default1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Default1");
    }];
    
    UIAlertAction *defaultAction2=[UIAlertAction actionWithTitle:@"Default2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Default2");
    }];
    
    UIAlertAction *destructiveAction=[UIAlertAction actionWithTitle:@"Destructive" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        NSLog(@"Destructive");
    }];
    
    
    //buttons shown by code sequence excepting the cancel style one.
    [actionSheetController addAction:cancelAction];
    [actionSheetController addAction:defaultAction1];
    [actionSheetController addAction:defaultAction];
    [actionSheetController addAction:destructiveAction];
    [actionSheetController addAction:defaultAction2];
    
    [self presentViewController:actionSheetController animated:YES completion:nil];
}

@end
