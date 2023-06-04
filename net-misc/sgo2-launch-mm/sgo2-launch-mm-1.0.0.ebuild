# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd

DESCRIPTION="Launch ModemManager on Surface Go 2"

KEYWORDS="amd64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND="
	sys-apps/systemd:=
"

S="${WORKDIR}"

src_install() {
    insinto /usr/sbin
	doins "$FILESDIR/sgo2-launch-mm"
    systemd_dounit "$FILESDIR/sgo2-launch-mm.service"
}

