# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs flag-o-matic

DESCRIPTION="A UNIX init scheme with service supervision"
HOMEPAGE="http://smarden.org/runit/"
UBUNTU_PR="59ubuntu1"
UBUNTU_A="${PN}_${PV}-${UBUNTU_PR}.debian.tar.xz"
SRC_URI="
	http://smarden.org/runit/${P}.tar.gz
	http://archive.ubuntu.com/ubuntu/pool/universe/r/runit/${UBUNTU_A}
	"

RDEPEND=""

S=${WORKDIR}/admin/${P}/src

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~m68k ~mips ppc ppc64 ~s390 sparc x86"
IUSE="static"

src_prepare() {
	default
	cd "${WORKDIR}/admin/"
	eapply -p1 "${WORKDIR}/debian/patches"
	cd "${S}"

	# we either build everything or nothing static
	sed -i -e 's:-static: :' Makefile

	# see https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=726008
	[[ ${COMPILER} == "diet" ]] &&
		use ppc &&
		filter-flags "-mpowerpc-gpopt"
}

src_configure() {
	use static && append-ldflags -static

	echo "$(tc-getCC) ${CFLAGS}"  > conf-cc
	echo "$(tc-getCC) ${LDFLAGS}" > conf-ld
	sed -i \
		-e "/echo.*ar.*cr/s,\<ar\>,$(tc-getAR)," \
		-e "/echo.*ranlib/s,\<ranlib\>,$(tc-getRANLIB)," \
		print-ar.sh || die
}

src_install() {
	into /
	dobin $(<../package/commands)
	dodir /sbin
	mv "${ED}"/bin/{runit-init,runit,utmpset} "${ED}"/sbin/ || die "dosbin"
}
