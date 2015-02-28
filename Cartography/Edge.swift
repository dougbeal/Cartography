//
//  Edge.swift
//  Cartography
//
//  Created by Robert Böhnke on 17/06/14.
//  Copyright (c) 2014 Robert Böhnke. All rights reserved.
//

#if os(iOS)
import UIKit
#else
import AppKit
#endif

/*
    case Left
    case Right
    case Top
    case Bottom
    case Leading
    case Trailing
    case Width
    case Height
    case CenterX
    case CenterY
    case Baseline


    case FirstBaseline
    case LeftMargin
    case RightMargin
    case TopMargin
    case BottomMargin
    case LeadingMargin
    case TrailingMargin
    case CenterXWithinMargins
    case CenterYWithinMargins
    case NotAnAttribute
}
*/

public enum Edge : Property, RelativeEquality, RelativeInequality, Addition, Multiplication {
           
    case Top(Context, View)
    case Right(Context, View)
    case Bottom(Context, View)
    case Left(Context, View)

    case Leading(Context, View)
    case Trailing(Context, View)

    case CenterX(Context, View)
    case CenterY(Context, View)

    case Baseline(Context, View)

    case FirstBaseline(Context, View)
    case LeftMargin(Context, View)
    case RightMargin(Context, View)
    case TopMargin(Context, View)
    case BottomMargin(Context, View)
    case LeadingMargin(Context, View)
    case TrailingMargin(Context, View)
    case CenterXWithinMargins(Context, View)
    case CenterYWithinMargins(Context, View)
    case NotAnAttribute(Context, View)

    public var attribute: NSLayoutAttribute {
        switch (self) {
            case let .Top(view): return NSLayoutAttribute.Top
            case let .Right(view): return NSLayoutAttribute.Right
            case let .Bottom(view): return NSLayoutAttribute.Bottom
            case let .Left(view): return NSLayoutAttribute.Left

            case let .Leading(view): return NSLayoutAttribute.Leading
            case let .Trailing(view): return NSLayoutAttribute.Trailing

            case let .CenterX(view): return NSLayoutAttribute.CenterX
            case let .CenterY(view): return NSLayoutAttribute.CenterY

            case let .Baseline(view): return NSLayoutAttribute.Baseline
            case let .FirstBaseline(view): return NSLayoutAttribute.FirstBaseline
            case let .LeftMargin(view): return NSLayoutAttribute.LeftMargin
            case let .RightMargin(view): return NSLayoutAttribute.RightMargin
            case let .TopMargin(view): return NSLayoutAttribute.TopMargin
            case let .BottomMargin(view): return NSLayoutAttribute.BottomMargin
            case let .LeadingMargin(view): return NSLayoutAttribute.LeadingMargin
            case let .TrailingMargin(view): return NSLayoutAttribute.TrailingMargin
            case let .CenterXWithinMargins(view): return NSLayoutAttribute.CenterXWithinMargins
            case let .CenterYWithinMargins(view): return NSLayoutAttribute.CenterYWithinMargins
            case let .NotAnAttribute                (view): return NSLayoutAttribute.NotAnAttribute
        }
    }

    public var context: Context {
        switch (self) {
            case let .Top(context, _): return context
            case let .Right(context, _): return context
            case let .Bottom(context, _): return context
            case let .Left(context, _): return context

            case let .Leading(context, _): return context
            case let .Trailing(context, _): return context

            case let .CenterX(context, _): return context
            case let .CenterY(context, _): return context

            case let .Baseline(context, _): return context
            case let .FirstBaseline(context, _): return context
            case let .LeftMargin(context, _): return context
            case let .RightMargin(context, _): return context
            case let .TopMargin(context, _): return context
            case let .BottomMargin(context, _): return context
            case let .LeadingMargin(context, _): return context
            case let .TrailingMargin(context, _): return context
            case let .CenterXWithinMargins(context, _): return context
            case let .CenterYWithinMargins(context, _): return context
            case let .NotAnAttribute(context, _): return context                
        }
    }

    public var view: View {
        switch (self) {
            case let .Top(_, view): return view
            case let .Right(_, view): return view
            case let .Bottom(_, view): return view
            case let .Left(_, view): return view

            case let .Leading(_, view): return view
            case let .Trailing(_, view): return view

            case let .CenterX(_, view): return view
            case let .CenterY(_, view): return view

            case let .Baseline(_, view): return view
            case let .FirstBaseline(_, view): return view
            case let .LeftMargin(_, view): return view
            case let .RightMargin(_, view): return view
            case let .TopMargin(_, view): return view
            case let .BottomMargin(_, view): return view
            case let .LeadingMargin(_, view): return view
            case let .TrailingMargin(_, view): return view
            case let .CenterXWithinMargins(_, view): return view
            case let .CenterYWithinMargins(_, view): return view
            case let .NotAnAttribute                (_, view): return view
        }
    }
}
