# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 0.0.0a2 - 2022/09/06

### Changed

- Update database as file (setup at build time)
- Change calcurate_stat API (Enable numpy.ndarray to argument)

## 0.0.0a1 - 2022/08/31

### Changed

- Update `pokemon_gen3.Pokemon` as iterable

## 0.0.0a0 - 2022/03/30

### Added

- 3rd generation pokemon data classes
  - `pokemon_gen3.Pokemon`
  - `pokemon_gen3.Nature`
  - `pokemon_gen3.Stat`
- Pokemon stat calcuration
  - `pokemon_gen3.calcurate_stat`
  - `pokemon_gen3.calcurate_stats`
