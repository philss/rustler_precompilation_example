# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.4.0] - 2022-04-28

### Changed

- Bump `rustler_precompiled` requirement.
- Add `rustler` as an optional dependency.

## [0.3.0] - 2022-03-09

### Changed

- Change the RustlerPrecompiled version to v0.2.0 so we can use the simplified API
that falls back to Rustler if in a development version, or with an env var.

## [0.2.0] - 2021-12-20

### Added

- Start using precompilation. Although it's required to generate the checksum file,
users can experiment this project without having to compile from source.

## [0.1.1] - 2021-12-20

### Fixed

- Fix compilation on Windows with the Rustler version of GitHub.

## [0.1.0] - 2021-12-19

### Added

- Start the project with a basic NIF example. This version is not going to use
precompiled NIFs, but will build them in the CI.

[Unreleased]: https://github.com/philss/rustler_precompilation_example/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/philss/rustler_precompilation_example/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/philss/rustler_precompilation_example/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/philss/rustler_precompilation_example/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/philss/rustler_precompilation_example/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/philss/rustler_precompilation_example/releases/tag/v0.1.0
