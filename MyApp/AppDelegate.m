#import "AppDelegate.h"

#import "SushiTableViewController.h"

@implementation AppDelegate
@synthesize window = _window;
@synthesize navigationController = _navigationController;

- (void)dealloc {
    [_window release];
    [_navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.window.backgroundColor = [UIColor whiteColor];
    
    SushiTableViewController *viewController = [[[SushiTableViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];
    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:viewController] autorelease];
    [self.window addSubview:self.navigationController.view];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
