# RunestoneEditor Package

Simple package to load [Runstone](https://github.com/simonbs/Runestone) with useful components.

**You need to download this repo and drag it into your project.** Swift Package Manager doesn't support nested packages, yet.

To create a new text editor, you can use the suggested figure with code below.

```
let textView = RunestoneEditorView.new()        
textView.apply(language: .bash)
textView.apply(theme: TomorrowTheme(size: 14))
```

Or you can setup the editor manually. Note that `autocorrectionType` `autocapitalizationType` `smartDashesType` `smartQuotesType` `smartInsertDeleteType` shall be disabled manually.

```
let textView = RunestoneEditorView()

textView.contentInsetAdjustmentBehavior = .always
textView.autocorrectionType = .no
textView.autocapitalizationType = .none
textView.smartDashesType = .no
textView.smartQuotesType = .no
textView.smartInsertDeleteType = .no

textView.backgroundColor = .clear
textView.textContainerInset = UIEdgeInsets(top: 8, left: 4, bottom: 8, right: 4)
textView.showLineNumbers = true
textView.lineHeightMultiplier = 1.2
textView.kern = 0.3
textView.showSpaces = true
textView.showNonBreakingSpaces = true
textView.showTabs = true
textView.showLineBreaks = true
textView.showSoftLineBreaks = true
textView.isLineWrappingEnabled = true

let state = TextViewState(text: initialSnippet, theme: TomorrowNightTheme(), language: .bash)
textView.setState(state)
```

## RunestoneEditor

When loading `RunestoneEditor` package you get the following components with all possible support options.

- Runestone
- RunestoneThemeSupport
- RunestoneLanguageSupport
- TreeSitter

Or you can load individual components by using its name instead.

## RunestoneThemeSupport

Theme support for Runestone are provided as packages. You can either load `RunestoneThemeSupport` for all themes or load individual themes. See `Package.swift` for individual packages.

- Tomorrow (Both Light & Dark)
- OneDark
- PlainText

## RunestoneLanguageSupport

Language support for Runestone are provided as packages. You can either load `RunestoneLanguageSupport` for all languages or load individual languages. See `Package.swift` for individual packages.

- Astro
- Bash
- Comment
- CPP
- C
- CSharp
- CSS
- Elixir
- Elm
- Go
- Haskell
- HTML
- Java
- JavaScript
- JSDoc
- JSON5
- JSON
- Julia
- LaTeX
- Lua
- MarkdownInline
- Markdown
- OCaml
- Perl
- PHP
- Python
- Reg
- Regex
- R
- Ruby
- Rust
- SCSS
- SQL
- Svelte
- Swift
- TOML
- TSX
- TypeScript
- YAML

## License

See each license file.

---

2023.11.23
