# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="swaybar alternative "
HOMEPAGE="https://github.com/mojyack/swaybarpp"
SRC_URI="https://github.com/mojyack/swaybarpp/releases/download/v${PV}/swaybarpp-${PV}.tar.gz"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
RDEPEND="
	>=dev-libs/wayland-1.21
	x11-libs/cairo
	x11-libs/pango
	media-video/pipewire
"
DEPEND="
	${RDEPEND}
	>=dev-libs/coop-1.0.5
	<dev-libs/coop-1.4.0
"
BDEPEND="
	dev-util/wayland-scanner
	>=dev-libs/wayland-protocols-1.26
	virtual/pkgconfig
"

S="${WORKDIR}/swaybarpp-${PV}"
