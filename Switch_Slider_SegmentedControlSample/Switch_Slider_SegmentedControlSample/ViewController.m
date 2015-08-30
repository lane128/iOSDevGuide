//
//  ViewController.m
//  Switch_Slider_SegmentedControlSample
//
//  Created by Lane on 8/31/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;

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


- (IBAction)switchValueChanged:(id)sender {
    UISwitch *witchSwitch=(UISwitch *)sender;
    BOOL setting=witchSwitch.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)sliderValueChanged:(id)sender {
    UISlider *slider=(UISlider *)sender;
    float progressAsFloat=slider.value;
    NSString *text=[[NSString alloc] initWithFormat:@"%f",progressAsFloat];
    self.sliderValue.text=text;
}

- (IBAction)touchDown:(id)sender {
    if (self.leftSwitch.hidden==YES) {
        self.leftSwitch.hidden=NO;
        self.rightSwitch.hidden=NO;
    }else{
        self.leftSwitch.hidden=YES;
        self.rightSwitch.hidden=YES;
    }
}

@end
