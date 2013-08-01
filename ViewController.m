//
//  ViewController.m
//  UIWebView
//
//  Created by meran on 7/29/13.
//  Copyright (c) 2013 meran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"myHTML" ofType:@"html"] isDirectory:NO]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [p1 release];
    [p2 release];
    [p3 release];
    [super dealloc];
}

-(IBAction)p1:(id)sender {
    NSURL *myURL = [NSURL URLWithString:@"http://helios.swpc.noaa.gov/ovation/images/Aurora_Map_N.png"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [myWebView loadRequest:myRequest];
    myWebView.scalesPageToFit = NO;
    myWebView.contentScaleFactor = .1;

}

-(IBAction)p2:(id)sender {
    NSURL *myURL = [NSURL URLWithString:@"http://www.swpc.noaa.gov/pmap/gif/pmapN.gif"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [myWebView loadRequest:myRequest];
    myWebView.scalesPageToFit = NO;
    myWebView.contentScaleFactor = 4;
}

-(IBAction)p3:(id)sender {
    NSURL *myURL = [NSURL URLWithString:@"http://www.swpc.noaa.gov/rt_plots/Kp.gif"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [myWebView loadRequest:myRequest];
    myWebView.scalesPageToFit = YES;
}
@end
