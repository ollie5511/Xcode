

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGPoint pos;
    NSTimer *timer;
    IBOutlet UIImageView *bad;
    IBOutlet UIImageView *good;
    IBOutlet UIButton *startButton;
    IBOutlet UIImageView *goodtwo;
    IBOutlet UIButton *resetandgo;
    IBOutlet UIImageView *goodthree;
}


-(IBAction)start;
- (IBAction)resetandstart;


@end
