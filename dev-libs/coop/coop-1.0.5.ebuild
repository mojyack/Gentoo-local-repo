# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="C++ asynchronous coroutine runtime"
HOMEPAGE="https://github.com/mojyack/coop"
EGIT_REPO_URI="https://github.com/mojyack/coop.git"
EGIT_COMMIT="v$PV"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND=""

src_configure() {
	local emesonargs=(-Dexamples=false)
	meson_src_configure
}
