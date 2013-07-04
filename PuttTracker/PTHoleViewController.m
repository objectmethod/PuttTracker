#import "PTHoleViewController.h"
#import "PTPutt.h"
#import <QuartzCore/QuartzCore.h>

@interface PTHoleViewController ()

@property (strong, nonatomic) NSMutableArray *buttons;

- (IBAction)buttonClicked:(UIButton *)sender;

@end

@implementation PTHoleViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self loadButtons];
}

- (void)loadButtons {
	self.buttons = [[NSMutableArray alloc] init];
	
	for (UIButton *button in self.view.subviews) {
		[self addBorderToButton:button];
		[self.buttons addObject:button];
	}
}

- (void) addBorderToButton:(UIButton*)button {
	[[button layer] setBorderWidth:1.0f];
	[[button layer] setBorderColor:[UIColor blackColor].CGColor];
}

- (IBAction)buttonClicked:(UIButton *)sender {
	[self deselectAllButtons];	
	[self setSelected:!sender.selected forButton:sender];
}

- (void)deselectAllButtons {
	for (UIButton *button in self.buttons) {
		[self setSelected:NO forButton:button];
	}
}

- (void)setSelected:(BOOL)selected forButton:(UIButton*)button {
	button.selected = selected;
	button.alpha = button.selected ? 0.2 : 1.0;
}

@end
