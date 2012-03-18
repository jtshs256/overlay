# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit cmake-utils mercurial

EHG_REPO_URI="https://libgooglepinyin.googlecode.com/hg/"

DESCRIPTION="A fork from google pinyin on android"
HOMEPAGE="http://code.google.com/p/libgooglepinyin"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="static-libs"

src_prepare() {
find . -type f -name *.py \
-exec sed -i 's|/usr/bin/python|/usr/bin/python2|g' {} \; \
|| die "sed failed"
}

src_configure() {
local mycmakeargs=(
$(cmake-utils_use_enable static-libs STATIC)
)
cmake-utils_src_configure
}
