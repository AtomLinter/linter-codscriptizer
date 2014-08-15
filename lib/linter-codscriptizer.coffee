linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"

class LinterCodscriptizer extends Linter
  # The syntax that the linter handles. May be a string or
  # list/tuple of strings. Names should be all lowercase.
  @syntax: ['source.c']

  # A string, list, tuple or callable that returns a string, list or tuple,
  # containing the command line (with arguments) used to lint.
  cmd: 'codscriptizer -l'

  executablePath: null

  linterName: 'codscriptizer'

  # A regex pattern used to extract information from the executable's output.
  regex: 'linter (?:(?<error>error)|(?<warning>warning)) from line ' +
         '(?<line>[0-9]+)+:(?<col>[0-9]+)+ to (?<lineEnd>[0-9]+)+:' +
         '(?<colEnd>[0-9]+)+ (?<message>.+)'

  observableExecPath: 'linter-codscriptizer.codscriptizerExecutablePath'

  constructor: (editor) ->
    super(editor)

    atom.config.observe observableExecPath, =>
      @executablePath = atom.config.get observableExecPath

  destroy: ->
    atom.config.unobserve observableExecPath

module.exports = LinterCodscriptizer
