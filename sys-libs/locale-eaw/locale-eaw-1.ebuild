# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Fix East Asian Ambiguous Width problem"
HOMEPAGE="https://github.com/hamano/locale-eaw"
SRC_URI="https://raw.githubusercontent.com/hamano/locale-eaw/master/UTF-8-EAW-FULLWIDTH.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND=""
RDEPEND=""
RESTRICT="primaryuri"

S="${WORKDIR}"

src_unpack() {
	true
}

src_install() {
	cd ${DISTDIR}
	insinto /usr/share/i18n/charmaps
	doins UTF-8-EAW-FULLWIDTH.gz
}

pkg_postinst() {
	elog ""
	elog "You will need to set up your /etc/foo/foo.conf file before"
	elog "running foo for the first time. For details, please see the"
	elog "foo.conf(5) manual page."
}
