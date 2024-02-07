# Description

My 2024 Neovim config.

## Overview

This year I'm experimenting with adding more custom UI stuff. Some of it is rice that I'm not particularly attached to, but other changes such as migrating away from lsp-zero were necessary for improving my dev experience.

## Changes

### Package Manager

- Migrated from Packer to Lazy

### LSP and formatter stuff

- Removed lsp-zero

- Removed formatter.nvim

- added none_ls for handling formatters and linters.

### Live Server

- removed liveserver.nvim in favor of writing a command in set.lua to do it through the npm cli

### Plugins

Need to fill this out
