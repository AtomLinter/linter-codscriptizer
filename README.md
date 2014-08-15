# linter-codscriptizer
=========================

This package will lint your `.gsc` opened filed in Atom through [codscriptizer -l](https://github.com/Ingramz/codscriptizer).
Currently there is no CoDScript syntax highlighter for Atom, please use C syntax highlighting for time being.

## Installation

* Install [codscriptizer](https://github.com/Ingramz/codscriptizer).
* `$ apm install linter` (if you don't have [AtomLinter/Linter](https://github.com/AtomLinter/Linter) installed).
* `$ apm install linter-codscriptizer`

## Settings
You can configure linter-codscriptizer by editing ~/.atom/config.cson (choose Open Your Config in Atom menu):
```
'linter-codscriptizer':
  'codscriptizerExecutablePath': null # CoDScriptizer path.
```
