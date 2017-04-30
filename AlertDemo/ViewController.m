//
//  ViewController.m
//  AlertDemo
//
//  Created by Shubham on 01/05/17.
//  Copyright © 2017 Shubham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIAlertController *alert;
}

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


- (IBAction)alert:(id)sender {
    
    alert = [UIAlertController alertControllerWithTitle:@"Alert!" message:@"This is an alert..." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:action];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)alertWithTimer:(id)sender {
    
    alert = [UIAlertController alertControllerWithTitle:@"Alert!" message:@"This is an alert..." preferredStyle:UIAlertControllerStyleAlert];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(dismissAlert) userInfo:nil repeats:NO];
    
    [self presentViewController:alert animated:YES completion:nil];
}


-(void)dismissAlert{
    
    [alert dismissViewControllerAnimated:YES completion:nil];
}

@end
