#import "PTRoundViewController.h"
#import "PTRound.h"

@interface PTRoundViewController ()

@end

@implementation PTRoundViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)setRound:(PTRound *)round {
	_round = round;
	[self updateUI];
}

- (void) updateUI {
	self.title = self.round.location;
}

@end
