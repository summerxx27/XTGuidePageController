


#import <QuartzCore/QuartzCore.h>

@interface CALayer (Transition)

// 动画类型
typedef NS_ENUM(NSInteger, TransitionAnimType){
    
    TransitionAnimTypeRippleEffect=0,
    
    TransitionAnimTypeSuckEffect,
    
    TransitionAnimTypePageCurl,
    
    TransitionAnimTypeOglFlip,
    
    TransitionAnimTypeCube,

    TransitionAnimTypeReveal,
    
    TransitionAnimTypePageUnCurl,
    
    TransitionAnimTypeRamdom,
};
// 方向
typedef NS_ENUM(NSInteger, TransitionSubType){
    
    TransitionSubtypesFromTop=0,
    
    TransitionSubtypesFromLeft,
    
    TransitionSubtypesFromBotoom,
    
    TransitionSubtypesFromRight,
    
    TransitionSubtypesFromRamdom,
};


// 动画曲线
typedef NS_ENUM(NSInteger, TransitionCurve) {
    
    TransitionCurveDefault,
    
    TransitionCurveEaseIn,
    
    TransitionCurveEaseOut,
    
    TransitionCurveEaseInEaseOut,
    
    TransitionCurveLinear,
    
    TransitionCurveRamdom,
};




/**
 *  转场动画
 *
 *  @param animType 转场动画类型
 *  @param subtype  转动动画方向
 *  @param curve    转动动画曲线
 *  @param duration 转动动画时长
 *
 *  @return 转场动画实例
 */
-(CATransition *)transitionWithAnimType:(TransitionAnimType)animType subType:(TransitionSubType)subType curve:(TransitionCurve)curve duration:(CGFloat)duration;

@end
