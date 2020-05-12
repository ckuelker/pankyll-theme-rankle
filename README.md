---
title:  pankyll-theme-rankle/README.md
author: Christian Külker
date:   2020-05-12

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

| Version | Date       | Author           | Notes                             |
| ------- | ---------- |----------------- | --------------------------------- |
| 0.1.1   | 2020-05-12 | Christian Külker | Favicon                           |
| 0.1.0   | 2020-03-29 | Christian Külker | Initial release                   |

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

# Author

    Christian Külker <c@c8i.org>

# License And Copyright

    Copyright (C) 2020 by Christian Kuelker

    This program is free software; you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the Free
    Software Foundation; either version 3, or (at your option) any later
    version.

    This program is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
    more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc., 59
    Temple Place, Suite 330, Boston, MA 02111-1307 USA

# DISCLAIMER OF WARRANTY

    THERE IS NO WARRANTY FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY
    APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
    HOLDERS AND/OR OTHER PARTIES PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY
    OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
    PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE
    IS WITH YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF
    ALL NECESSARY SERVICING, REPAIR, OR CORRECTION.

# LIMITATION OF LIABILITY

    IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING WILL
    ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR REDISTRIBUTE
    THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE LIABLE TO YOU FOR
    DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
    DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE SOFTWARE (INCLUDING
    BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES
    SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE SOFTWARE TO OPERATE
    WITH ANY OTHER SOFTWARE), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN
    ADVISED OF THE POSSIBILITY OF SUCH DAMAGES

[Pankyll]: https://www.pankyll.org/
[Rankle]: https://github.com/ckuelker/pankyll-theme-rankle/
[favicons in the quick guide]: https://github.com/ckuelker/quick-guide-en-us/blob/master/Web/Design/favicon.md
