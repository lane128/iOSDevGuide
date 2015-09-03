//
//  ViewController.m
//  DeviceInfoSample
//
//  Created by Lane on 9/3/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#define Ip6Height 667
#define Ip6PlusHeight 736
#define Ip5Height 568
#define Ip4Height 480

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *type;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGSize iOSDeviceSize=[UIScreen mainScreen].bounds.size;
    NSMutableString *info=[NSMutableString stringWithFormat:@"Design resolution:%.f x %.f",iOSDeviceSize.width,iOSDeviceSize.height];
    self.label.text=info;
    
    if ([UIDevice currentDevice].userInterfaceIdiom==UIUserInterfaceIdiomPhone) {
        if (iOSDeviceSize.height>iOSDeviceSize.width) {
            //horizontal condition
            if (iOSDeviceSize.height==Ip6PlusHeight) {
                self.type.text=@"Iphone 6 Plus";
            }else if (iOSDeviceSize.height==Ip6Height){
                self.type.text=@"Iphone 6";
            }else if (iOSDeviceSize.height==Ip5Height){
                self.type.text=@"Iphone 5/5s/5c";
            }else if(iOSDeviceSize.height==Ip4Height){
                self.type.text=@"Iphone 4/4s";
            }else{
                self.type.text=@"Unknow";
            }
        }else{
            //vertical condition
            if (iOSDeviceSize.width==Ip6PlusHeight) {
                self.type.text=@"Iphone 6 Plus";
            }else if (iOSDeviceSize.width==Ip6Height){
                self.type.text=@"Iphone 6";
            }else if (iOSDeviceSize.width==Ip5Height){
                self.type.text=@"Iphone 5/5s/5c";
            }else if(iOSDeviceSize.width==Ip4Height){
                self.type.text=@"Iphone 4/4s";
            }else{
                self.type.text=@"Unknow";
            }
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
