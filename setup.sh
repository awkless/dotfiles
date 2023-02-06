#!/bin/sh
# SPDX-FileCopyrightText: 2023 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: MIT

me="$0"

if ! command -v git > /dev/null; then
  echo "$me: git not found" 2>&1
  exit 1
fi

dotfiles()
{
  git --git-dir="$HOME/.config/dotfiles" --work-tree="$HOME" "$@"
}


if [ -d "$HOME/.config/dotfiles" ]; then
  echo "$me: reinstalling configuration"
  files="$(git ls-files | sed 's,/[^/]*$,,' | uniq | awk -vT="$HOME/" '{print T $0}')"
  echo "$files" | xargs --verbose -I{} rm -rfv "{}"
  rm -rfv "$HOME/.cache/dotfiles-backup"
  rm -rfv "$HOME/.config/dotfiles"
fi

git clone --bare "https://github.com/awkless/dotfiles.git" \
                 "$HOME/.config/dotfiles"

mkdir -vp "$HOME/.cache/dotfiles-backup"
dotfiles checkout
if [ "$?" = 0 ]; then
  echo "$me: checkout configuration"
else
  echo "$me: backing up pre-existing dotfiles";
  dotfiles checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | \
	   xargs -I{} mv {} "$HOME/.cache/dotfiles-backup/"{}
fi
dotfiles checkout
