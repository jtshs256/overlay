# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit cmake-utils mercurial

EHG_REPO_URI="http://code.google.com/p/libgooglepinyin.ibus-wrapper/"

DESCRIPTION="ibus Wrapper for googlepinyin"
HOMEPAGE="https://code.google.com/p/ibus"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=app-i18n/ibus-1.3.99
app-i18n/libgooglepinyin"
DEPEND="${RDEPEND}
dev-util/intltool"
