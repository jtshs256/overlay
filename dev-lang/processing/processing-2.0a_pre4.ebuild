# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="An open source programming language and environment for creating images, animation, and interactions"
HOMEPAGE="http://code.google.com/p/processing"
SRC_URI="http://processing.googlecode.com/files/${PN}-2.0a4-linux.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="-java"

DEPEND=""
RDEPEND="java? ( dev-java/sun-jdk ) "

src_unpack() {
		unpack ${A}
		if use java; then
				rm -rf "${S}/java" || die
		fi
}

src_install() {
		dodoc revisions.txt
		rm revisions.txt || die
		local targetdir="/opt/processing"
		insinto "${targetdir}"
		doins -r *
		fperms a+x "${targetdir}/processing"
		if use java; then
				dosym "${JAVA_HOME}" "${targetdir}/java"
		else
				fperms a+x "${targetdir}/java/bin/java"
		fi
		dosym "${targetdir}/processing" "/opt/bin/processing"
}