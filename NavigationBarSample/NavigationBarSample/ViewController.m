//
//  ViewController.m
//  NavigationBarSample
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

- (IBAction)saveButtonTap:(id)sender {
    self.label.text=@"saved!";
}

- (IBAction)addButtonTap:(id)sender {
    self.label.text=@"Added!";
}
@end
