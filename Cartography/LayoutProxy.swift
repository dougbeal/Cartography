//
//  LayoutProxy.swift
//  Cartography
//
//  Created by Robert Böhnke on 17/06/14.
//  Copyright (c) 2014 Robert Böhnke. All rights reserved.
//

import Foundation

public class LayoutProxy {
    public let width: Dimension
    public let height: Dimension

    public let size: Size

    public let top: Edge
    public let right: Edge
    public let bottom: Edge
    public let left: Edge

    public let edges: Edges

    public let leading: Edge
    public let trailing: Edge

    public let centerX: Edge
    public let centerY: Edge
    public let center: Point

    public let baseline: Edge

    public let firstBaseline: Edge
    public let leftMargin: Edge
    public let rightMargin: Edge
    public let topMargin: Edge
    public let bottomMargin: Edge
    public let leadingMargin: Edge
    public let trailingMargin: Edge
    public let centerXWithinMargins: Edge
    public let centerYWithinMargins: Edge
    public let notAnAttribute    : Edge

    internal let context: Context
    internal let view: View

    public var superview: LayoutProxy? {
        if let superview = view.superview {
            return LayoutProxy(context, superview)
        } else {
            return nil
        }
    }

    init(_ context: Context, _ view: View) {
        self.context = context
        self.view = view

        width  = Dimension.Width(context, view)
        height = Dimension.Height(context, view)

        size = Size.Size(context, view)

        top    = Edge.Top(context, view)
        right  = Edge.Right(context, view)
        bottom = Edge.Bottom(context, view)
        left   = Edge.Left(context, view)

        edges = Edges.Edges(context, view)

        leading = Edge.Leading(context, view)
        trailing = Edge.Trailing(context, view)

        centerX = Edge.CenterX(context, view)
        centerY = Edge.CenterY(context, view)

        center = Point.Center(context, view)

        baseline = Edge.Baseline(context, view)
        firstBaseline = Edge.FirstBaseline(context,view)
        leftMargin = Edge.LeftMargin(context,view)
        rightMargin = Edge.RightMargin(context,view)
        topMargin = Edge.TopMargin(context,view)
        bottomMargin = Edge.BottomMargin(context,view)
        leadingMargin = Edge.LeadingMargin(context,view)
        trailingMargin = Edge.TrailingMargin(context,view)
        centerXWithinMargins = Edge.CenterXWithinMargins(context,view)
        centerYWithinMargins = Edge.CenterYWithinMargins(context,view)
        notAnAttribute         = Edge.NotAnAttribute(context,view)
    }
}
