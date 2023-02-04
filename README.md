<!--
SPDX-FileCopyrightText: 2023 Jason Pena <jasonpena@awkless.com>
SPDX-License-Identifier: MIT
-->

# Awkless' Dotfiles

This repository houses my dotfile configurations for various pieces of software
that I commonly use. This project was designed to allow me to easily organize
and transfer my personal dotfiles publicly or privately between rigs.

## Installation

> __WARNING__: Do not just blindly install. This project is _personal_ __not__
> _general_. It is recommended to read through the codebase and take or modify
> what you like.

Clone repository and perform the following:

```
# ./setup.sh
```

This should be it. Now all the files in this repository will be in your
`$HOME` and your `$HOME` will now be treated as a git repository where you
can add new files using a new command named `dotfiles` (an alias for git
with some special settings).

For more detailed installation instructions please visit the provided
[installation file][install].

[install]: https://github.com/awkless/dotfiles/blob/main/INSTALL.md
