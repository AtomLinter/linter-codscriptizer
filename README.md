# linter-codscriptizer
=========================

This package will lint your `.gsc` opened files in Atom through [codscriptizer -l](https://github.com/Ingramz/codscriptizer).

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
