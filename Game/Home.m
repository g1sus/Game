//
//  ViewController.m
//  Game
//
//  Created by Jesus Antonio Hernandez Mendez on 19/01/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "Home.h"

int counter = 0;
int counterSec;
NSTimer *myTimer;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    counterSec = 0;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)counter{
    counterSec++;
    
    self.lblTimer.text = [[NSNumber numberWithInt:counterSec] stringValue];

}

- (IBAction)btnPushSender:(id)sender {
    counter++;
    self.lblScore.text = [NSString stringWithFormat:@"%d",counter];
    
}
- (IBAction)btnStart:(id)sender {
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(counter) userInfo:(nil) repeats: YES];
}

- (IBAction)btnStop:(id)sender {
    [myTimer invalidate];
    
}

- (IBAction)btnRestart:(id)sender {
    [myTimer invalidate];
    myTimer = nil;
    counterSec = 0;
    self.lblTimer.text = [[NSNumber numberWithInt:counterSec] stringValue];
}
@end
