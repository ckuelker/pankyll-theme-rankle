# +---------------------------------------------------------------------------+
# | Makefile                                                                  |
# |                                                                           |
# | Rankle theme tasks, like i18n and l10n.                                   |
# |                                                                           |
# | Version: 0.1.3 (change inline)                                            |
# |                                                                           |
# | Changes:                                                                  |
# |                                                                           |
# | 0.1.3 2023-03-14 Christian Külker <c@c8i.org>                             |
# |     - Fix typos                                                           |
# |     - Fix version, bump version                                           |
# | 0.1.2 2022-05-21 Christian Külker <c@c8i.org>                             |
# |     - Add sub-module management                                           |
# |     - Set I18N_YEAR to current year                                       |
# | 0.1.0 2020-04-02 Christian Külker <c@c8i.org>                             |
# | 0.1.1 2022-05-09 Christian Külker <c@c8i.org>                             |
# |     - Fix Makefile typos                                                  |
# | 0.1.0 2020-04-02 Christian Külker <c@c8i.org>                             |
# |     - initial release                                                     |
# |                                                                           |
# +---------------------------------------------------------------------------+
#
VERSION=0.1.3
# -----------------------------------------------------------------------------
# NO CHANGES BEYOND THIS POINT
I18N_NS:=pankyll-theme-rankle
I18N_DESC:=A Jinja2 theme for pankyll
I18N_FIRST:=Christian Külker <c@c8i.org>
I18N_YEAR:=$(shell date +'%Y')
I18N_PFX:=locale
I18N_LOCALES:=en_US de_DE ja_JP
I18N_PO_FILES:=$(foreach locale,$(I18N_LOCALES),$(I18N_PFX)/$(locale)/LC_MESSAGES/$(I18N_NS).po)
I18N_MO_FILES:=$(foreach locale,$(I18N_LOCALES),$(I18N_PFX)/$(locale)/LC_MESSAGES/$(I18N_NS).mo)
ifndef VERSION
$(error VERSION is NOT defined)
endif
DEBUG_PRINT='1[$@]2[$%]3[$<]4[$?]5[$^]6[$+]7[$|]8[$*]9[$(@D)]10[$(@F)]11[$(*D)]\n12[$(*F)]13[$(%D)]14[$(%F)]15[$(<D)]16[$(<F)]17[$(^D)]18[$(^F)]\n19[$(+D)]20[$(+F)]21[$(?D)]22[$(?F)]\n'
L:=============================================================================
.PHONY: usage info clean realclean test
usage:
	@echo "$(L)"
	@echo "USAGE:"
	@echo "$(L)"
	@echo "make usage               : this information"
	@echo "make info                : print more info"
	@echo "make clean               : remove prcoess files"
	@echo "make realclean           : remove target"
	@echo "make test                : debug test"
	@echo "make i18n-extract        : extract new text from HTML - invalidates translations"
	@echo "make i18n-update         : merge *.pot with *.po after extraction"
	@echo "make i18n-runtime        : create *.mo after update"
	@echo "make submoduleclean      : Reset submodule (remove changed, detached HEAD)"
	@echo "make submodule-clean-pull: Reset submodule (remove changed, detached HEAD)"
info:
	@echo "VERSION:           [$(VERSION)]"
	@echo "I18N_YEAR:         [$(I18N_YEAR)]"
	@echo "I18N_PO_TEMPLATE:  [$(I18N_PFX)/$(I18N_NS).pot]"
	@echo "I18N_PO_FILES:     [$(I18N_PO_FILES)]"
	git submodule status --recursive
clean:
realclean: clean
translationclean:
	rm $(I18N_PFX)/$(I18N_NS).pot
test:
	@echo "$(DEBUG_PRINT)"
# 0
locale:
	mkdir -p $@
# 1
$(I18N_PFX)/$(I18N_NS).pot: locale
	xgettext --no-wrap --from-code=UTF-8 --keyword=_ -L Python \
	--copyright-holder='$(I18N_FIRST)' --package-name='$(I18N_NS)' \
	--package-version='$(VERSION)' \
	--output=locale/pankyll-theme-rankle.pot `find layouts -name "*.html"`
	sed -i "s/charset=CHARSET/charset=utf-8/g" locale/pankyll-theme-rankle.pot
	sed -i "s/FIRST AUTHOR <EMAIL@ADDRESS>/$(I18N_FIRST)/g" locale/pankyll-theme-rankle.pot
	sed -i "s/SOME\s\+DESCRIPTIVE\s\+TITLE/$(I18N_DESC)/g" locale/pankyll-theme-rankle.pot
	sed -i "s/YEAR/$(I18N_YEAR)/g" locale/pankyll-theme-rankle.pot

i18n-extract: $(I18N_PFX)/$(I18N_NS).pot
# 2
# msginit --no-wrap --no-translator --input=locale/pankyll-theme-rankle.pot \
#         --locale=en_US -o locale/en_US/LC_MESSAGES/pankyll-theme-rankle.po
$(I18N_PO_FILES):
	mkdir -p $(@D)
	msginit --no-wrap --no-translator --input=$(I18N_PFX)/$(I18N_NS).pot \
	--locale=$(notdir $(patsubst %/LC_MESSAGES,%, $(@D))) -o $@
i18n-init: $(I18N_PFX)/$(I18N_NS).pot $(I18N_PO_FILES)
# 3
i18n-update: i18n-init
	for i in $(I18N_LOCALES);do \
	msgmerge --no-wrap --backup=none --update locale/$$i/LC_MESSAGES/pankyll-theme-rankle.po locale/pankyll-theme-rankle.pot;\
	done
# 4
# msgfmt locale/en_US/LC_MESSAGES/pankyll-theme-rankle.po \
#        -o locale/en_US/LC_MESSAGES/pankyll-theme-rankle.mo
$(I18N_MO_FILES): $(I18N_PO_FILES)
	msgfmt $(patsubst %.mo,%.po,$@) -o $@
i18n-runtime: $(I18N_MO_FILES)
#
# Manage sub-modules
#
submoduleclean:
	cd font/awesome && git checkout master
	cd font/lato && git checkout master
	cd font/roboto && git checkout master
submodule-clean-pull:
	cd font/awesome && git checkout master && git pull
	cd font/lato && git checkout master && git pull
	cd font/roboto && git checkout master && git pull
