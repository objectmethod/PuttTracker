#import "NSObject+Alerts.h"

@implementation NSObject (Alerts)

- (void)showAlertForError:(NSError *)error {
	[[[UIAlertView alloc] initWithTitle:@"Error" message:error.localizedDescription delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (void)showAlertWithMessage:(NSString *)message {
	[[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

@end
