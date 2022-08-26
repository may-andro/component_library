# Component Library

## Table of Contents

* [Introduction](#introduction)
* [Installation](#installation)
* [Design System](#design-system)
* [Foundation](#foundation)
* [Components](#components)
    + [Atom](#atom)
    + [Molecule](#molecule)
    + [Organism](#organism)
* [Component Gallery](#compnent_gallery)
* [Technical Note](#technical_note)

## Introduction

Flutter module for theming and components for flutter projects.

## Installation

TODO

## Design System

Supports two design systems at the moment:
- `DesignSystem.oceanBlue`
- `DesignSystem.scarletRed`

## Foundation

Foundation defines the basic constructs needed for a design system.
- `Colors`
- `Text Style`
- `Values and Dimen`

## Components

Components are common widget used in projects. There are three types of components:
- `Atom`
- `Molecule`
- `Organism`

### Atom

Atoms are basic components and building block elements in a design system.
Currently supported atoms are:
- `Button`
- `Card`
- `Checkbox`
- `Divider`
- `Shapes`
- `Slider`
- `Switch`
- `Text`
- `Text Field`

### Molecule

Molecule are combination of few atoms.
Currently supported molecules are:
- `App Bar`
- `Badge`
- `Navigation Bar`
- `Tile`

### Organism

Organism are combination of few molecule and are complex components.
Currently supported organism are:
- `Bottom Sheet`
- `List`
-
### Component Gallery

To see the component action head over to [Component Gallery](https://github.com/may-andro/design_system_gallery)

### Technical Note

The theme is exposed via `CLThemeProviderWidget` which uses Provider State Management.
TODO
