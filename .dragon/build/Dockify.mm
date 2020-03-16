#line 1 "Dockify.xm"

#import <Cephei/HBPreferences.h>
#import <Foundation/Foundation.h>
#define kSettingsChangedNotification @"com.burritoz.dockify/Prefs"

@interface SBCoverSheetPrimarySlidingViewController : UIViewController
- (void)viewDidDisappear:(BOOL)arg1;
- (void)viewDidAppear:(BOOL)arg1;
@end

@interface SBIconListGridLayoutConfiguration
@property (nonatomic, assign) NSString *location;

- (NSString *)findLocation;
- (NSUInteger)numberOfPortraitColumns;
- (NSUInteger)numberOfPortraitRows;
@end
@interface SBDockView 
-(void)setBackgroundAlpha:(CGFloat)alpha;
@end


static BOOL tweakEnabled;
static BOOL transparent;
static BOOL hidden;
static double setHeight;
static double customOpacity;
static NSInteger setIconNumber;
static SBDockView *dock;

BOOL dpkgInvalid = NO;

HBPreferences *preferences;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBCoverSheetPrimarySlidingViewController; @class SBIconListGridLayoutConfiguration; @class SBDockView; @class SBDockIconListView; 


#line 35 "Dockify.xm"
static void (*_logos_orig$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetPrimarySlidingViewController* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetPrimarySlidingViewController* _LOGOS_SELF_CONST, SEL, BOOL); 

static void _logos_method$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetPrimarySlidingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {

    _logos_orig$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$(self, _cmd, arg1); 
    if (!dpkgInvalid) return;
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Pirate Detected!"
    message:@"Seriously? Pirating a free Tweak is awful!\nPiracy repo's Tweaks could contain Malware if you didn't know that, so go ahead and get Dockify from the official Source https://Burrit0z.github.io/repo/.\nIf you're seeing this but you got it from the official source then make sure to add https://Burrit0z.github.io/repo to Cydia or Sileo."
    preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Aww man" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {
        UIApplication *application = [UIApplication sharedApplication];
        [application openURL:[NSURL URLWithString:@"https://Burrit0z.github.io/repo"] options:@{} completionHandler:nil];
    }];
    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];

}



static double (*_logos_orig$version12$SBDockView$dockHeight)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static double _logos_method$version12$SBDockView$dockHeight(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$version12$SBDockView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$version12$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static NSInteger (*_logos_meta_orig$version12$SBDockIconListView$maxIcons)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSInteger _logos_meta_method$version12$SBDockIconListView$maxIcons(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 



static double _logos_method$version12$SBDockView$dockHeight(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hidden) {
        return (0);
    } else {
        return (_logos_orig$version12$SBDockView$dockHeight(self, _cmd)*setHeight); 
    }
}


static void _logos_method$version12$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {

    if (transparent == NO && hidden == NO) { 
        _logos_orig$version12$SBDockView$setBackgroundAlpha$(self, _cmd, customOpacity);
    }else if (transparent || hidden) { 
        _logos_orig$version12$SBDockView$setBackgroundAlpha$(self, _cmd, 0.0); 
    } else {
        NSLog(@"Dock not Transparent/hidden, no custom opacity\n");
    }
}





static NSInteger _logos_meta_method$version12$SBDockIconListView$maxIcons(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hidden) {
        return (0);
    } else {
        return (setIconNumber);
    }
}




static double (*_logos_orig$version13$SBDockView$dockHeight)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static double _logos_method$version13$SBDockView$dockHeight(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$version13$SBDockView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$version13$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static NSString * _logos_method$version13$SBIconListGridLayoutConfiguration$findLocation(_LOGOS_SELF_TYPE_NORMAL SBIconListGridLayoutConfiguration* _LOGOS_SELF_CONST, SEL); static NSUInteger (*_logos_orig$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns)(_LOGOS_SELF_TYPE_NORMAL SBIconListGridLayoutConfiguration* _LOGOS_SELF_CONST, SEL); static NSUInteger _logos_method$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns(_LOGOS_SELF_TYPE_NORMAL SBIconListGridLayoutConfiguration* _LOGOS_SELF_CONST, SEL); 


static double _logos_method$version13$SBDockView$dockHeight(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if (hidden) {
        return (0);
    } else {
        return (_logos_orig$version13$SBDockView$dockHeight(self, _cmd)*setHeight); 
    }
}


static void _logos_method$version13$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    dock = self;    
    if (transparent == NO && hidden == NO) { 
        _logos_orig$version13$SBDockView$setBackgroundAlpha$(self, _cmd, customOpacity);
    }else if (transparent || hidden) { 
        _logos_orig$version13$SBDockView$setBackgroundAlpha$(self, _cmd, 0.0); 
    } else {
        NSLog(@"Dock not Transparent/hidden, no custom opacity\n");
    }
}




__attribute__((used)) static NSString * _logos_method$version13$SBIconListGridLayoutConfiguration$location(SBIconListGridLayoutConfiguration * __unused self, SEL __unused _cmd) { NSValue * value = objc_getAssociatedObject(self, (void *)_logos_method$version13$SBIconListGridLayoutConfiguration$location); NSString * rawValue; [value getValue:&rawValue]; return rawValue; }; __attribute__((used)) static void _logos_method$version13$SBIconListGridLayoutConfiguration$setLocation(SBIconListGridLayoutConfiguration * __unused self, SEL __unused _cmd, NSString * rawValue) { NSValue * value = [NSValue valueWithBytes:&rawValue objCType:@encode(NSString *)]; objc_setAssociatedObject(self, (void *)_logos_method$version13$SBIconListGridLayoutConfiguration$location, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

 
static NSString * _logos_method$version13$SBIconListGridLayoutConfiguration$findLocation(_LOGOS_SELF_TYPE_NORMAL SBIconListGridLayoutConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
        if (self.location) return self.location;
        else {
                NSUInteger rows = MSHookIvar<NSUInteger>(self, "_numberOfPortraitRows");
                NSUInteger columns = MSHookIvar<NSUInteger>(self, "_numberOfPortraitColumns");
                
                if (rows <= 2 && columns == 4) { 
                        self.location =  @"Dock";
                } else if (rows == 3 && columns == 3) {
                        self.location =  @"Folder";
                } else {
                        self.location =  @"Root";
                }
        }
        return self.location;
}

static NSUInteger _logos_method$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns(_LOGOS_SELF_TYPE_NORMAL SBIconListGridLayoutConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [self findLocation];
        if ([self.location isEqualToString:@"Dock"]) {
            if (hidden) {
                return (0);
            } else {
                return (setIconNumber);
            }
        } else {
            return (_logos_orig$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns(self, _cmd));
        }
}





void prefsChanged() {
    if (dock) [dock setBackgroundAlpha:(transparent ? 0.0 : 1.0)];
}

static __attribute__((constructor)) void _logosLocalCtor_f500bcc1(int __unused argc, char __unused **argv, char __unused **envp) {
    dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/com.burritoz.dockify.list"];
    if (!dpkgInvalid) dpkgInvalid = ![[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/com.burritoz.dockify.md5sums"];

    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.burritoz.dockifyprefs"];
    [preferences registerDefaults:@ { 
        @"tweakEnabled": @YES,
        @"setHeight": @1,
        @"customOpacity": @1,
        @"hidden": @NO,
        @"setIconNumber": @4,
    }];

    [preferences registerBool:&tweakEnabled default:YES forKey:@"tweakEnabled"];
    [preferences registerBool:&transparent default:YES forKey:@"transparent"]; 
    [preferences registerBool:&hidden default:NO forKey:@"hidden"]; 
    [preferences registerDouble:(double *)&setHeight default:1 forKey:@"setHeight"]; 
    [preferences registerDouble:(double *)&customOpacity default:1 forKey:@"customOpacity"]; 
    [preferences registerInteger:(NSInteger *)&setIconNumber default:4 forKey:@"setIconNumber"]; 

    CFNotificationCenterAddObserver(
        CFNotificationCenterGetDarwinNotifyCenter(),
        &observer,
        (CFNotificationCallback)preferencesChanged,
        kSettingsChangedNotification,
        NULL,
        CFNotificationSuspensionBehaviorDeliverImmediately
    );

    if (tweakEnabled) {
        {Class _logos_class$allVersions$SBCoverSheetPrimarySlidingViewController = objc_getClass("SBCoverSheetPrimarySlidingViewController"); MSHookMessageEx(_logos_class$allVersions$SBCoverSheetPrimarySlidingViewController, @selector(viewDidDisappear:), (IMP)&_logos_method$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$, (IMP*)&_logos_orig$allVersions$SBCoverSheetPrimarySlidingViewController$viewDidDisappear$);}
        if (kCFCoreFoundationVersionNumber < 1600) {
            {Class _logos_class$version12$SBDockView = objc_getClass("SBDockView"); MSHookMessageEx(_logos_class$version12$SBDockView, @selector(dockHeight), (IMP)&_logos_method$version12$SBDockView$dockHeight, (IMP*)&_logos_orig$version12$SBDockView$dockHeight);MSHookMessageEx(_logos_class$version12$SBDockView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$version12$SBDockView$setBackgroundAlpha$, (IMP*)&_logos_orig$version12$SBDockView$setBackgroundAlpha$);Class _logos_class$version12$SBDockIconListView = objc_getClass("SBDockIconListView"); Class _logos_metaclass$version12$SBDockIconListView = object_getClass(_logos_class$version12$SBDockIconListView); MSHookMessageEx(_logos_metaclass$version12$SBDockIconListView, @selector(maxIcons), (IMP)&_logos_meta_method$version12$SBDockIconListView$maxIcons, (IMP*)&_logos_meta_orig$version12$SBDockIconListView$maxIcons);}
        }
        else {
            {Class _logos_class$version13$SBDockView = objc_getClass("SBDockView"); MSHookMessageEx(_logos_class$version13$SBDockView, @selector(dockHeight), (IMP)&_logos_method$version13$SBDockView$dockHeight, (IMP*)&_logos_orig$version13$SBDockView$dockHeight);MSHookMessageEx(_logos_class$version13$SBDockView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$version13$SBDockView$setBackgroundAlpha$, (IMP*)&_logos_orig$version13$SBDockView$setBackgroundAlpha$);Class _logos_class$version13$SBIconListGridLayoutConfiguration = objc_getClass("SBIconListGridLayoutConfiguration"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$version13$SBIconListGridLayoutConfiguration, @selector(findLocation), (IMP)&_logos_method$version13$SBIconListGridLayoutConfiguration$findLocation, _typeEncoding); }MSHookMessageEx(_logos_class$version13$SBIconListGridLayoutConfiguration, @selector(numberOfPortraitColumns), (IMP)&_logos_method$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns, (IMP*)&_logos_orig$version13$SBIconListGridLayoutConfiguration$numberOfPortraitColumns);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(NSString *)); class_addMethod(_logos_class$version13$SBIconListGridLayoutConfiguration, @selector(location), (IMP)&_logos_method$version13$SBIconListGridLayoutConfiguration$location, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(NSString *)); class_addMethod(_logos_class$version13$SBIconListGridLayoutConfiguration, @selector(setLocation:), (IMP)&_logos_method$version13$SBIconListGridLayoutConfiguration$setLocation, _typeEncoding); } }
        }
    }
}
