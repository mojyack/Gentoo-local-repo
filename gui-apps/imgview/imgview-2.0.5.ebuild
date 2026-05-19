# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="a simple image viewer"
HOMEPAGE="https://github.com/mojyack/imgview"
SRC_URI="https://github.com/mojyack/imgview/releases/download/v${PV}/imgview-${PV}.tar.gz"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	dev-libs/wayland-protocols
	dev-util/wayland-scanner

	media-libs/libglvnd
	media-libs/freetype
	media-gfx/imagemagick
	media-libs/libjxl
	dev-libs/coop
"
RDEPEND="
	${DEPEND}
	dev-libs/wayland
	media-libs/mesa[wayland]
"

S="${WORKDIR}/imgview-${PV}"
