//
//  ViewController.m
//  ToolBarSample
//
//  Created by Lane on 9/3/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

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

- (IBAction)saveButton:(id)sender {
    self.label.text=@"Save Tapped";
}

- (IBAction)openButton:(id)sender {
    self.label.text=@"Open Tapper";
}


@end
