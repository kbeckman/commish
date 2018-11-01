# `commish` Changelog

## 0.3.0

* TravisCI update for `master` branch builds only
* RuboCop change for Layout/EmptyLineAfterGuardClause moving to Sytle/EmptyLineAfterGuardClause
* Removed Layout/FirstHashElementLineBreak 
* Derivations from RuboCop defaults:
  - Layout/AlignHash (last argument style, ignore_implicit)
  - Layout/MultiLineAssignmentLayout (same_line)
  - Naming/VariableNumber (snake_case)


## 0.2.0

* Switched to `asdf` (from `rvm`) for Ruby version management
* Removed _all_ version constraints for development dependencies
* Derivations from RuboCop defaults:
  - AllCops (excluding `db/schema.rb` generated files)
  - Sytle/RedundantException (disabled)
    * Sometimes it makes sense to: `raise RuntimeError, 'error message'`
  - Style/ClassStructure
    * adding new items for `association` category
    * minor tweaks for `ExpectedOrder`


## 0.1.1 (07/16/2018)

* Introduced default Rake task to define CI process.
* Added `ruby-2.3.7`, `ruby-2.4.4` and `ruby-2.5.1` as test environment targets for TravisCI.
* Added CodeClimate maintainability badge.
* Moved `CHANGELOG` to `/docs` directory.
* Converted `LICENSE` to markdown.


## 0.1.0 (07/16/2018)

* Initial project release.
* Rules correspond to cops / settings available in RubCop `0.57`.
* Derivations from RuboCop defaults:
  - Layout/AlignHash (table formatted)
  - Layout/BlockAlignment (start of line)
  - Layout/ClassStructure (enabled, _assuming some additional tweaks_)
  - Layout/EmptyLineAfterGuardClause (enabled)
  - Layout/FirstArrayElementLineBreak (enabled)
  - Layout/FirstHashElementLineBreak (enabled)
  - Layout/MultilineAssignmentLayout (enabled)
  - Lint/InheritException (enforce `StandardError`)
  - Lint/NumberConversion (enabled)
  - Metrics/BlockLength (_exclusions_)
  - Metrics/LineLength (max: 120)
  - Style/AutoResourceCleanup (enabled)
  - Style/CollectionMethods (enabled)
  - Style/ImplicitRuntimeError (enabled)
  - Style/MethodCalledOnDoEndBlock (enabled)
  - Style/OptionHash (enabled)
  - Style/ReturnNil (enabled)
  - Style/Send (enabled)
  - Style/StringMethods (enabled)
