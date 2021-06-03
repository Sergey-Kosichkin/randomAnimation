//
//  DataManager.swift
//  randomAnimation
//
//  Created by Сергей Косичкин on 03.06.2021.
//

import Spring

class DataManager {
    
    enum AnimationPreset: String, CaseIterable {
        case SlideLeft = "slideLeft"
        case SlideRight = "slideRight"
        case SlideDown = "slideDown"
        case SlideUp = "slideUp"
        case SqueezeLeft = "squeezeLeft"
        case SqueezeRight = "squeezeRight"
        case SqueezeDown = "squeezeDown"
        case SqueezeUp = "squeezeUp"
        case FadeIn = "fadeIn"
        case FadeOut = "fadeOut"
        case FadeOutIn = "fadeOutIn"
        case FadeInLeft = "fadeInLeft"
        case FadeInRight = "fadeInRight"
        case FadeInDown = "fadeInDown"
        case FadeInUp = "fadeInUp"
        case ZoomIn = "zoomIn"
        case ZoomOut = "zoomOut"
        case Fall = "fall"
        case Shake = "shake"
        case Pop = "pop"
        case FlipX = "flipX"
        case FlipY = "flipY"
        case Morph = "morph"
        case Squeeze = "squeeze"
        case Flash = "flash"
        case Wobble = "wobble"
        case Swing = "swing"
    }
    enum AnimationCurve: String, CaseIterable {
        case EaseIn = "easeIn"
        case EaseOut = "easeOut"
        case EaseInOut = "easeInOut"
        case Linear = "linear"
        case Spring = "spring"
        case EaseInSine = "easeInSine"
        case EaseOutSine = "easeOutSine"
        case EaseInOutSine = "easeInOutSine"
        case EaseInQuad = "easeInQuad"
        case EaseOutQuad = "easeOutQuad"
        case EaseInOutQuad = "easeInOutQuad"
        case EaseInCubic = "easeInCubic"
        case EaseOutCubic = "easeOutCubic"
        case EaseInOutCubic = "easeInOutCubic"
        case EaseInQuart = "easeInQuart"
        case EaseOutQuart = "easeOutQuart"
        case EaseInOutQuart = "easeInOutQuart"
        case EaseInQuint = "easeInQuint"
        case EaseOutQuint = "easeOutQuint"
        case EaseInOutQuint = "easeInOutQuint"
        case EaseInExpo = "easeInExpo"
        case EaseOutExpo = "easeOutExpo"
        case EaseInOutExpo = "easeInOutExpo"
        case EaseInCirc = "easeInCirc"
        case EaseOutCirc = "easeOutCirc"
        case EaseInOutCirc = "easeInOutCirc"
        case EaseInBack = "easeInBack"
        case EaseOutBack = "easeOutBack"
        case EaseInOutBack = "easeInOutBack"
    }
}

