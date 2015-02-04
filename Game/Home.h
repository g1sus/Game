//
//  ViewController.h
//  Game
//
//  Created by Jesus Antonio Hernandez Mendez on 19/01/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblScore;
@property (strong, nonatomic) IBOutlet UILabel *lblTimer;

//Actions
- (IBAction)btnPushSender:(id)sender;


//Buttons
- (IBAction)btnStart:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)btnRestart:(id)sender;
@end

