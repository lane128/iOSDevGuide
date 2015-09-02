//
//  ViewController.m
//  AlertViewActionSheetSample
//
//  Created by Lane on 9/1/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate,UIActionSheetDelegate>

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
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"AlertView" message:@"Alert content message shown here!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",@"1",@"2", nil];
    [alertView show];
}

- (IBAction)actionSheetTap:(id)sender {
    UIActionSheet *actionSheet=[[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"DestructiveTitle" otherButtonTitles:@"Button1",@"Button2", nil];
    actionSheet.actionSheetStyle=UIActionSheetStyleAutomatic;
    [actionSheet showInView:self.view];
}

#pragma mark - UIAlertViewDelegate Impl
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonIndex: %li",(long)buttonIndex);
}

#pragma mark - UIActionSheetDelegate Impl
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"buttonIndex: %li",(long)buttonIndex);
}

@end
