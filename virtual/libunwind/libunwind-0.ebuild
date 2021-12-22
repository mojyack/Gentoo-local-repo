# Copyright 2021-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib-build

DESCRIPTION="Virtual for libunwind"
SLOT="0"
KEYWORDS="amd64 x86"

IUSE="llvm-libunwind"

DEPEND="
	llvm-libunwind? ( sys-libs/llvm-libunwind )
	!llvm-libunwind? ( sys-lib/libunwind )
"

# When nis is not in use, rpcgen can be provided by net-fs/nfs-utils
BDEPEND="${DEPEND}"

RDEPEND="${BDEPEND}"
