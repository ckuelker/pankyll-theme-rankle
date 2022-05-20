---
title: pankyll-theme-rankle/README.md
author: Christian Külker
version: 0.1.6
date: 2022-05-21

---

# Abstract

This document describes briefly the [Pankyll] theme [Rankle], its version,
and installation. The goal of the [Rankle] theme is to provide easy to read
pages suited for documentation and blog posts.

![Github license](https://img.shields.io/github/license/ckuelker/pankyll-theme-rankle.svg)
![Github issues](https://img.shields.io/github/issues/ckuelker/pankyll-theme-rankle.svg?style=popout-square)
![Github code size in bytes](https://img.shields.io/github/languages/code-size/ckuelker/pankyll-theme-rankle.svg)
![Git repo size](https://img.shields.io/github/repo-size/ckuelker/pankyll-theme-rankle.svg)
![Last commit](https://img.shields.io/github/last-commit/ckuelker/pankyll-theme-rankle.svg)

# Changes

| Version | Date       | Notes                                                |
| ------- | ---------- | ---------------------------------------------------- |
| 0.1.6   | 2022-05-21 | Makefile,awesome 5.15.4-3, lato 1.0.1, roboto 0.10.0 |
| 0.1.5   | 2022-05-09 | Makefile, English, rm duplicate license info         |
| 0.1.4   | 2021-05-18 | Add top 10 feature, cfg.yaml feature section         |
| 0.1.3   | 2020-10-21 | Add disclaimer for CC-BY-SA 4.0, fix link to favicon |
|         |            | doc, +feature Include Before, +feature Include After |
| 0.1.2   | 2020-05-13 | Fix TOC, fix CSS, JavaScript URLs                    |
| 0.1.1   | 2020-05-12 | Favicon                                              |
| 0.1.0   | 2020-03-29 | Initial release                                      |

# Introduction

The [Rankle] theme tailors to the needs of easy to read documentation and
focus on versioned pages in git while make it still possible to add opinionated
blog pages, either separated or mixed. This page describes briefly the
[Pankyll] theme [Rankle]. It shows the prerequisites, the installation, the
features and configuration of the theme. The lightweight theme’s main feature
is to use high contrast colors for different information sections, that let you
focus on the distinct sections.

# Installation

Consider using the `pankyll-theme-rankle-example` skeleton to test out the
theme or to start a new site. However the installation by itself is just
cloning the theme into the `themes` directory.

```shell
cd  project/themes
git clone --recursive https://github.com/ckuelker/pankyll-theme-rankle.git
```

# Creating Or Re-Creating The `favicon.ico`.

The `favicon.ico` can be create via the **ImageMagick** command line tool
`convert`:

```shell
convert -density 256x256 -background transparent favicon.svg \
-define icon:auto-resize -colors 256 favicon.ico
```

More info about [favicons in the quick guide].

[github]: https://github.com/ckuelker/quick-guide-en-us/blob/master/Web/Design/favicon.md

# Updating Translations

- Add new translation to HTML file: `{{gettext("Latest")}}`
- make i18n-extract
- This changes `locale/pankyll-theme-rankle.pot`
- make i18n-update
- Edit language `*.po` files

~~~
locale/de_DE/LC_MESSAGES/pankyll-theme-rankle.po
locale/en_US/LC_MESSAGES/pankyll-theme-rankle.po
locale/ja_JP/LC_MESSAGES/pankyll-theme-rankle.po
~~~

- make i18n-runtime
- This will change `*.mo` files

~~~
locale/de_DE/LC_MESSAGES/pankyll-theme-rankle.mo
locale/de_DE/LC_MESSAGES/pankyll-theme-rankle.po
locale/en_US/LC_MESSAGES/pankyll-theme-rankle.mo
locale/en_US/LC_MESSAGES/pankyll-theme-rankle.po
locale/ja_JP/LC_MESSAGES/pankyll-theme-rankle.mo
locale/ja_JP/LC_MESSAGES/pankyll-theme-rankle.po
~~~

# Updating Sub Modules

```bash
make submoduleclean
make submodule-update
make info # get NAME and VERSION
git commit -m 'font/NAME (VERSION)' font/NAME
```

# Author

    Christian Külker <c@c8i.org>

# License And Copyright

    Copyright (C) 2020, 2021, 2022  by Christian Kuelker, see LICENSE file.

[Pankyll]: https://www.pankyll.org/
[Rankle]: https://github.com/ckuelker/pankyll-theme-rankle/
[favicons in the quick guide]: https://github.com/ckuelker/quick-guide-en-us/blob/master/Dev/Web/Design/favicon.md
