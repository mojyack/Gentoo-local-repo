# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson systemd

DESCRIPTION="Input remap daemon for Linux"
HOMEPAGE="https://github.com/mojyack/keyremap"
SRC_URI="https://github.com/mojyack/keyremap/releases/download/v${PV}/keyremap-${PV}.tar.gz"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE="systemd"
DEPEND=""
RDEPEND="
	${DEPEND}
	systemd? ( sys-apps/systemd:= )
"

src_install() {
	meson_src_install
    insinto /etc/keyremap
    doins "$FILESDIR/config"
    if use systemd; then
        systemd_dounit "$FILESDIR/keyremap.service"
    fi
}
