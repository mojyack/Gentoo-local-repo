# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="GTK+ based simple text editor"
HOMEPAGE="https://github.com/stevenhoneyman/l3afpad"
SRC_URI="https://github.com/stevenhoneyman/l3afpad/archive/refs/tags/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~ppc ~ppc64 x86 ~x86-interix ~amd64-linux ~x86-linux"
IUSE="emacs printer"

RDEPEND="virtual/libintl
	x11-libs/gtk+:3"
DEPEND="${RDEPEND}
	dev-util/intltool
	sys-devel/gettext
	virtual/pkgconfig"

DOCS="AUTHORS ChangeLog COPYING NEWS README"

src_configure() {
	./autogen.sh
	econf \
		$(use_enable printer print) \
		$(use_enable emacs)
}

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" install
}
