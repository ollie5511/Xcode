#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)start
{
    [startButton setHidden:YES];
    [resetandgo setHidden:YES];
    timer = [NSTimer scheduledTimerWithTimeInterval:(0.03)  target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    pos = CGPointMake(5.0, 6.0);
    
  
    
    
    
}

- (IBAction)resetandstart:(id)sender {
}
-(void)onTimer {
    [self checkCollision];
    goodtwo.center = CGPointMake(goodtwo.center.x+pos.x, goodtwo.center.y+pos.y); //goodtwo
    if (goodtwo.center.x >320 || goodtwo.center.x<0)
    pos.x = -pos.y +80;
    
    if (goodtwo.center.y >480 || goodtwo.center.y<0)
        pos.y = -pos.y +80;
    
    
    good.center = CGPointMake(good.center.x+pos.x, good.center.y+pos.y); //good
    if (good.center.x >360 || good.center.x<0)
        pos.x = -pos.y +80;
    
    if (good.center.y >480 || good.center.y<0)
        pos.y = -pos.x +80;
    
    goodthree.center = CGPointMake(goodthree.center.x+pos.x, goodthree.center.y+pos.y); //good
    if (goodthree.center.x >360 || goodthree.center.x<0)
        pos.x = -pos.y +80;
    
    if (goodthree.center.y >480 || goodthree.center.y<0)
        pos.y = -pos.x +80;

    
}


-(void) checkCollision
{
        
    if (goodtwo.hidden == TRUE && good.hidden == TRUE && goodthree.hidden == TRUE) {
        resetandgo.hidden = FALSE;
        [timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"You won with __ points:!" message:@"58" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
    }
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *myTouch = [[event allTouches]anyObject];
    
    if (myTouch.view == good) {
        good.center = [myTouch locationInView:self.view];
        if (CGRectIntersectsRect(good.frame, bad.frame)) {
            good.hidden = TRUE;
        }
        
    }
    
    if (myTouch.view == goodtwo) {
        goodtwo.center = [myTouch locationInView:self.view];
        if (CGRectIntersectsRect(goodtwo.frame, bad.frame)) {
            goodtwo.hidden = TRUE;
        }
    }
    
    if (myTouch.view == goodthree) {
        goodthree.center = [myTouch locationInView:self.view];
        if (CGRectIntersectsRect(goodthree.frame, bad.frame)) {
            goodthree.hidden = TRUE;
        }
    }
    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    
    resetandgo.hidden = TRUE;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)resetandstart
{
    good.hidden = FALSE;
    goodtwo.hidden = FALSE;
    
    goodthree.hidden = FALSE;
    good.center = CGPointMake(180.0,480); //good
    goodtwo.center = CGPointMake(180.0,240.0);
    goodthree.center = CGPointMake(180.0, 0.0);
  
    resetandgo.hidden = TRUE;
     timer = [NSTimer scheduledTimerWithTimeInterval:(0.03)  target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
   
}





@end
