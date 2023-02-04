<!--
SPDX-FileCopyrightText: 2023 Jason Pena <jasonpena@awkless.com>
SPDX-License-Identifier: MIT
-->

# Installing Awkless' Dotfiles

# Installation

> __WARNING__: These dotfiles are personal configurations for _my_ everyday use.
> Certain configurations may not work for you. So, please read through the code
> and modify things as you see fit. _Do not_ just blindly install thinking that
> stuff will work right out of the box.

## Prerequisites

You will need the following software in order to properly install this project:

- Git
- POSIX-like shell, e.g., dash, bash, yash, etc...

## Versioning

This simple project uses [Semantic Versioning 2.0.0][semver2]. All releases are
signed with Awkless' GPG key \<<jasonpena@awkless.com>\> for authentication
purposes. You can obtain Awkless' public key through [keys.openpgp.org][pgp],
and verify a tagged release with the `git-verify-tag` command.

> __ATTENTION__: If `git-verify-tag` states that the release you are verifying
> has a bad signiture, then send an email to \<<jasonpena@awkless.com>\> about
> your findings with ample evidence. _Do not_ submit a bug report! Also get rid
> your downloaded version of the project as it has been compromised.

## Using `setup.sh`

The `setup.sh` file is a simple installation file that sets up the
awkless/dotfiles project onto your `$HOME` directory. Just run it like so:

```
# ./setup.sh
```

[semver2]: https://semver.org
[pgp]: https://keys.openpgp.org/about/usage
