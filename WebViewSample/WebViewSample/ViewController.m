//
//  ViewController.m
//  WebViewSample
//
//  Created by Lane on 8/31/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

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

- (IBAction)loadHTML:(id)sender {
    NSString *htmlPath=[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl=[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error=nil;
    NSString *html=[[NSString alloc] initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:&error];
    
    if (error==nil) {
        [self.webView loadHTMLString:html baseURL:bundleUrl];
    }
}

- (IBAction)loadData:(id)sender {
    NSString *htmlPath=[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl=[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error=nil;
    NSData *htmlData=[[NSData alloc] initWithContentsOfFile:htmlPath options:NSDataReadingMappedIfSafe error:&error];
    if (error==nil) {
        [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:bundleUrl];
    }
}

- (IBAction)loadRequest:(id)sender {
    NSURL *url=[NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    self.webView.delegate=self;
};

#pragma mark - UIWebViewDelegate
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"%@",[webView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"]);
}


@end
