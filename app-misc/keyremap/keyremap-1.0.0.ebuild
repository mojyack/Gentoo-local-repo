# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson systemd

DESCRIPTION="Input remap daemon for Linux"
HOMEPAGE="https://github.com/mojyack/keyremap"
EGIT_REPO_URI="https://github.com/mojyack/keyremap.git"
EGIT_COMMIT="v$PV"

KEYWORDS="amd64"
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
