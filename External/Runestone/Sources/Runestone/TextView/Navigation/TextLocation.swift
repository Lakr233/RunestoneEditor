import Foundation

/// A location in the text.
public struct TextLocation: Hashable, Equatable {
    /// Zero-based line number.
    public let lineNumber: Int
    /// Column in the line.
    public let column: Int

    init(_ linePosition: LinePosition) {
        lineNumber = linePosition.row
        column = linePosition.column
    }
}
