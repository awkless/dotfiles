<!--
SPDX-FileCopyrightText: 2023 Jason Pena <jasonpena@awkless.com>
SPDX-License-Identifier: MIT
-->

# Contribution to Awkless' Dotfiles

_Thank you for taking the time to contribute!_

> __NOTE__: Always remember that the following information are not considered to
> be steadfast rules, but simple guidelines to ensure quality. Thus, always use
> your best judgement!

## Expected Forms of Contribution

This project is open to the following forms of contribution:

- Improvements or fixes to dotfiles.
- Reporting of bugs.
- Suggestions for features or improvements.
- Improvements or fixes to scripts.
- Improvements or fixes to CI pipeline.
- Improvements or fixes to documntation.

## Issue Tracker Submissions

The issue tracker of this project is only for bug reports or feature requests.
Please do not use it for asking questions or help. Please use the provided
templates when making a submission to the issue tracker. Redirect your questions
and help to the GitHub discussions section of the project. For more privacy you
may use @awkless' email \<<jasonpena@awkless.com>\> __especially__ for security
related concerns, e.g., compromised PGP key, compromised tagged release, etc.

## Pull Request Style

Helpful templates are provided to you for properly formatting your pull
requests. Understand that this project uses trunk based development. Thus, all
changes you make must occur separately on an unprotected branch based off of
main from your fork. Try to keep a linear commit history by using rebase
merging. Avoid merge commits.

Here some tips for better pull requests:

- Keep pull requests short and simple.
- Keep pull requests focused on one goal/issue rather than multiple.
- Break up large scale changes into multiple pull requests.
- Make sure that your pull requests only last for a couple of days. Avoid long
  standing pull requests.
- Use `git fetch --all -p` to get changes from main and then use.
  `get rebase origin/main` to put your changes over the changes on main keeping
  a nice linear history.
- Stash untracked local changes with `git stash -u` and later pop them with
  `git stash pop`.
- Label your pull request if possible.
- If your pull request helps progress a milestone, then label it with that
  milestone for more attention.

## Commit Style

All commits you submit must abide by the [Conventional Commits 1.0.0][cc1.0.0]
specification. Here are the following valid types for commits accepted by this
project:

- __chore__: General change that does not affect production code.
- __feat__: Change that implements a feature in production code.
- __fix__: Change that fixes a bug in production code.
- __docs__: Improvements or fixes to documentation.
- __style__: Improvements or fixes to the formatting of code.
- __ref__: Changes involve refactoring the code base.
- __rev__: A set of commits were revereted.

Keep the subject, body, and trailer of your commits below 80 characters unless
you have good reason otherwise.

## Coding Style

This section requires a lot of discretion, because dotfiles may vary in
formatting. However, here are some general rules:

- Maximum line limit is 80 characters (unless you have a good reason to ignore
  this).
- Keep indentation around 2 spaces.
- Any all shell scripts must be POSIX compliant, i.e., avoid
  [bashisms][bashism].
- Prefer snake\_case when creating variables.

Overall, try to keep the formatting of files as consistent as possible. @awkless
is not going to be very pedantic about code style. Plus, he may alter the
formatting afterwards anyway. This project is rather volatile.

## Licensing and Copyright

This project abides by the [REUSE 3.0][reuse3] specification to determine the
licensing and copyright of files in the code base. Thus, all files must have the
proper SPDX copyright and licensing tags at the top always. If you want to
determine if your current chanes are REUSE compliant, then just use their
[reuse tool][reuse-tool].

[cc1.0.0]: https://www.conventionalcommits.org/en/v1.0.0/
[bashism]: https://mywiki.wooledge.org/Bashism
[reuse3]: https://reuse.software/spec/
[reuse-tool]: https://reuse.software/tutorial/
