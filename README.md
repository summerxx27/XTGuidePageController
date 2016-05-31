# XTGuidePageController
易用的引导页
![](http://ww4.sinaimg.cn/large/e6a4355cgw1f4eghu3dz4g208w0gp1l2.gif)
```
@interface AppDelegate ()<selectDelegate>
```

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSArray *images = @[@"1", @"2", @"3"];
    if ([[[XTGuidePagesViewController alloc] init] isShow]) {
        self.window.rootViewController = [XTGuidePagesViewController shareXTGuideVC];
        [[XTGuidePagesViewController shareXTGuideVC] initWithXTGuideView:images];
        [XTGuidePagesViewController shareXTGuideVC].delegate = self;
    }else{
        [self click];
    }

    return YES;
}
```

```
- (void)click
{
    ViewController *vc = [[ViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window.layer transitionWithAnimType:TransitionAnimTypeRamdom subType:TransitionSubtypesFromRamdom curve:TransitionCurveRamdom duration:2.0f];
}
```
