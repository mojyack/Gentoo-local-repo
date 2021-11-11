# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="mikan Support for Fcitx5"

HOMEPAGE="https://github.com/mojyack/mikan"

if [[ "${PV}" == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/mojyack/mikan.git"
	KEYWORDS="~*"
else
	SRC_URI="https://codeload.github.com/mojyack/mikan/tar.gz/v${PV} -> ${P}.tar.gz"
	KEYWORDS="~* amd64"
fi

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="
	>=app-text/mecab-0.996-r1:0
	>=app-i18n/fcitx5-5.0.8-r3
"
RDEPEND="
	${DEPEND}
	app-i18n/mikan-dictionary
"

src_configure() {
	local emesonargs=(
		--prefix "${EPREFIX}/usr"
		--libdir "$(get_libdir)/fcitx5"
		-Ddictionary_path=share/mikan-im/dic
	)
	meson_src_configure
}
