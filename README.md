---
title: pankyll-theme-rankle/README.md
author: Christian Külker
version: 0.2.1
date: 2024-02-17

---

# Abstract

This document briefly describes the [Pankyll] theme [Rankle], its version and
installation. The goal of the Rankle theme is to provide easy to read pages
suitable for documentation and blog posts.

![Github license](https://img.shields.io/github/license/ckuelker/pankyll-theme-rankle.svg)
![Github issues](https://img.shields.io/github/issues/ckuelker/pankyll-theme-rankle.svg?style=popout-square)
![Github code size in bytes](https://img.shields.io/github/languages/code-size/ckuelker/pankyll-theme-rankle.svg)
![Git repo size](https://img.shields.io/github/repo-size/ckuelker/pankyll-theme-rankle.svg)
![Last commit](https://img.shields.io/github/last-commit/ckuelker/pankyll-theme-rankle.svg)

# Changes

| Version | Date       | Notes                                                |
| ------- | ---------- | ---------------------------------------------------- |
| 0.2.1   | 2024-02-17 | Fix HTML tags, itemprop, aria, apple-touch-icon      |
| 0.2.0   | 2024-01-29 | Add styles for blockquote similar to page info box   |
| 0.1.9   | 2023-07-31 | Add more PDF download/ view links                    |
| 0.1.8   | 2023-03-14 | Improve writing (README, Makefile, 404, ...)         |
|         |            | Remove white lines from layout, bump copyright year  |
|         |            | Fix Makefile version, bump cfg.yaml copyright year   |
| 0.1.7   |            | Makefile                                             |
| 0.1.6   | 2022-05-21 | Makefile,awesome 5.15.4-3, lato 1.0.1, roboto 0.10.0 |
| 0.1.5   | 2022-05-09 | Makefile, English, rm duplicate license info         |
| 0.1.4   | 2021-05-18 | Add top 10 feature, cfg.yaml feature section         |
| 0.1.3   | 2020-10-21 | Add disclaimer for CC-BY-SA 4.0, fix link to favicon |
|         |            | doc, +feature Include Before, +feature Include After |
| 0.1.2   | 2020-05-13 | Fix TOC, fix CSS, JavaScript URLs                    |
| 0.1.1   | 2020-05-12 | Favicon                                              |
| 0.1.0   | 2020-03-29 | Initial release                                      |

# Introduction

The [Rankle] theme is tailored to the needs of easy to read documentation and a
focus on versioned pages in git, while still allowing for the addition of
opinionated blog pages, either separate or mixed. This page briefly describes
the [Pankyll] Rankle theme. It shows the requirements, installation, features
and configuration of the theme. The main feature of this lightweight theme is
the use of high-contrast colors for different information sections, allowing
you to focus on the different sections.

# Installation

Consider using the `pankyll-theme-rankle-example` skeleton to test the theme or
to start a new site. However, the installation itself is just cloning the theme
into the `themes` directory.

```shell
cd  project/themes
git clone --recursive https://github.com/ckuelker/pankyll-theme-rankle.git
```

# Creating Or Re-Creating The `favicon.ico`.

The `favicon.ico` can be created using the **ImageMagick** command line tool
`convert`:

```shell
convert -density 256x256 -background transparent favicon.svg \
-define icon:auto-resize -colors 256 favicon.ico
```

Learn more about [Favicons in the Quick Guide].

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

    Copyright (C) 2020 - 2024 by Christian Kuelker, see LICENSE file.

[Pankyll]: https://www.pankyll.org/
[Rankle]: https://github.com/ckuelker/pankyll-theme-rankle/
[favicons in the quick guide]: https://github.com/ckuelker/quick-guide-en-us/blob/master/Dev/Web/Design/favicon.md
