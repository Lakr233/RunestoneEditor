@_exported import Runestone
@_exported import RunestoneLanguageSupport
@_exported import RunestoneThemeSupport

public typealias RunestoneEditorView = TextView

public class BasicCharacterPair: CharacterPair {
    public let leading: String
    public let trailing: String

    public init(leading: String, trailing: String) {
        self.leading = leading
        self.trailing = trailing
    }
}

public extension RunestoneEditorView {
    static func new() -> Self {
        let `self` = Self()

        self.backgroundColor = .clear
        self.contentInsetAdjustmentBehavior = .always

        self.showTabs = true
        self.showSpaces = true
        self.showLineBreaks = true
        self.showLineNumbers = true
        self.showSoftLineBreaks = true
        self.showNonBreakingSpaces = true

        self.isLineWrappingEnabled = true

        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        self.smartDashesType = .no
        self.smartQuotesType = .no
        self.smartInsertDeleteType = .no

        self.kern = 0.3
        self.lineHeightMultiplier = 1.2
        self.verticalOverscrollFactor = 0.25
        self.gutterMinimumCharacterCount = 3

        self.indentStrategy = .space(length: 4)
        self.textContainerInset = .init(top: 8, left: 4, bottom: 8, right: 4)

        self.characterPairs = [
            BasicCharacterPair(leading: "(", trailing: ")"),
            BasicCharacterPair(leading: "{", trailing: "}"),
            BasicCharacterPair(leading: "[", trailing: "]"),
            BasicCharacterPair(leading: "\"", trailing: "\""),
            BasicCharacterPair(leading: "'", trailing: "'"),
        ]
        return self
    }

    func apply(language: TreeSitterLanguage) {
        setState(.init(text: text, language: language))
    }

    func apply(theme: Theme) {
        setState(.init(text: text, theme: theme))
    }
}
