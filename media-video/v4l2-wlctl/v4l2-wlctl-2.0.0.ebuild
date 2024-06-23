# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Graphical v4l2-ctl for wayland"
HOMEPAGE="https://github.com/mojyack/v4l2-wlctl"
EGIT_REPO_URI="https://github.com/mojyack/v4l2-wlctl.git"
EGIT_COMMIT="v$PV"

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
"
RDEPEND="
	${DEPEND}
	dev-libs/wayland
	media-libs/mesa[wayland]
"
