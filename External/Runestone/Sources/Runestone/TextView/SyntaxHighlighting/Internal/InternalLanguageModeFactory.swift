import Foundation

enum InternalLanguageModeFactory {
    static func internalLanguageMode(from languageMode: LanguageMode, stringView: StringView, lineManager: LineManager) -> InternalLanguageMode {
        switch languageMode {
        case is PlainTextLanguageMode:
            PlainTextInternalLanguageMode()
        case let languageMode as TreeSitterLanguageMode:
            TreeSitterInternalLanguageMode(
                language: languageMode.language.internalLanguage,
                languageProvider: languageMode.languageProvider,
                stringView: stringView,
                lineManager: lineManager
            )
        default:
            fatalError("\(languageMode) is not a supported language mode")
        }
    }
}
