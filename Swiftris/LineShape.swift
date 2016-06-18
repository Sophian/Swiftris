//
//  LineShape.swift
//  Swiftris
//
//  Created by Sophian Bensaou on 6/18/16.
//  Copyright © 2016 ___sophian___. All rights reserved.
//

class LineShape:Shape {
    /*
     Orientation 0 and 180
     
     | 0•|
     | 1 |
     | 2 |
     | 3 |
     
     
     Orientation 90 and 270
     
     | 0 || 1•| 2 | 3 |
     
     
     • marks the row/column indicator for the shape
     
    */
    
    // Hinges about the second block
    
    override var blockRowColumnPositions: [Orientation : Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (0, 1), (0, 2), (0, 3)],
            Orientation.Ninety:     [(-1, 0), (0, 0), (1, 0), (2, 0)],
            Orientation.OneEighty:  [(0, 0), (0, 1), (0, 2), (0, 3)],
            Orientation.TwoSeventy: [(-1, 0), (0, 0), (1, 0), (2, 0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation : Array<Block>] {
        return [
            Orientation.Zero:       [blocks[FourthBlockIdx]],
            Orientation.Ninety:     blocks,
            Orientation.OneEighty:  [blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: blocks
        ]
    }
}