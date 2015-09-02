//
//  ViewController.m
//  ActivityIndicator_ProgressViewSample
//
//  Created by Lane on 8/31/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myActivityIndicator;
@property (weak, nonatomic) IBOutlet UIProgressView *myProgress;
@property (strong, nonatomic) NSTimer *myTimer;
@property (weak, nonatomic) IBOutlet UIButton *downloadButton;

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

- (IBAction)upLoadTap:(id)sender {
    if ([self.myActivityIndicator isAnimating]) {
        [self.myActivityIndicator stopAnimating];
    }else{
        [self.myActivityIndicator startAnimating];
    }
}

- (IBAction)downLoarTap:(id)sender {
    self.downloadButton.enabled=FALSE;
    self.myTimer=[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(download) userInfo:nil repeats:YES];
}

- (void)download{
    self.myProgress.progress+=0.05;
    if (self.myProgress.progress==1.0) {
        [self.myTimer invalidate];
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Download completed!" message:@"" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
        self.downloadButton.enabled=TRUE;
    }
}

@end
