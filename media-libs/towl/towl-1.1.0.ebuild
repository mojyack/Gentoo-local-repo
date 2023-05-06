# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="template oriented wayland library"
HOMEPAGE="https://github.com/mojyack/towl"
EGIT_REPO_URI="https://github.com/mojyack/towl.git"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=dev-libs/wayland-protocols-1.26
	dev-util/wayland-scanner
"
RDEPEND="
	${DEPEND}
	>=dev-libs/wayland-1.21.0
	media-libs/mesa[wayland]
"
