# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="mikan Support for Fcitx5"
HOMEPAGE="https://github.com/mojyack/mikan"
SRC_URI="https://github.com/mojyack/mikan/releases/download/v${PV}/mikan-${PV}.tar.gz"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=app-text/mecab-0.996-r1:0
	>=app-i18n/fcitx-5.1.11
"
RDEPEND="
	${DEPEND}
	app-i18n/mikan-dictionary
"

S="${WORKDIR}/mikan-${PV}"

src_configure() {
       local emesonargs=(
               --prefix "${EPREFIX}/usr"
               --libdir "$(get_libdir)/fcitx5"
       )
       meson_src_configure
}
