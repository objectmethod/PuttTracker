#import "PTHolesViewController.h"
#import "PTRound.h"
#import "PTHoleViewController.h"

@interface PTHolesViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (readonly) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) PTRound *round;
@property (strong, nonatomic) NSMutableArray *holeViewControllers;

@end

@implementation PTHolesViewController

#pragma mark - initialize

- (id)init {
	self = [super init];

	if (self) {
		[self initialize];
	}
	
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	
	if (self) {
		[self initialize];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	
	if (self) {
		[self initialize];
	}
	
	return self;
}

- (void) initialize {
	NSLog(@"self.scrollView.frame: %@", NSStringFromCGRect(self.scrollView.frame));
	self.round = [PTRound insertInManagedObjectContext:self.managedObjectContext];
	NSLog(@"self.scrollView.frame: %@", NSStringFromCGRect(self.scrollView.frame));
}

#pragma mark - managedObjectContext

- (NSManagedObjectContext *)managedObjectContext {
	UIApplication *application = [UIApplication sharedApplication];
	PTAppDelegate *appDelegate = application.delegate;
	return appDelegate.managedObjectContext;
}

#pragma mark - load view

- (void)viewDidLoad {
	NSLog(@"self.view.frame: %@", NSStringFromCGRect(self.view.frame));
	NSLog(@"self.scrollView.frame: %@", NSStringFromCGRect(self.scrollView.frame));
	[super viewDidLoad];
	[self addHoles];
}

- (void) addHoles {
	self.holeViewControllers = [[NSMutableArray alloc] init];
	
	for (PTHole *hole in self.round.holes) {
		PTHoleViewController *holeViewController = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([PTHoleViewController class])];
		[self.holeViewControllers addObject:holeViewController];
		holeViewController.view.frame = self.scrollView.bounds;
		[self.scrollView addSubview:holeViewController.view];
		NSLog(@"holeViewController.view.frame: %@", NSStringFromCGRect(holeViewController.view.frame));
	}
}

@end
