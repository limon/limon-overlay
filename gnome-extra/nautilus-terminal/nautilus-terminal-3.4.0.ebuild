# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} )
inherit distutils-r1

DESCRIPTION="a terminal embedded into Nautilus, the GNOME's file browser."
HOMEPAGE="https://github.com/flozz/nautilus-terminal"
SRC_URI="https://github.com/flozz/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="dev-python/psutil dev-python/nautilus-python x11-libs/vte ${DEPEND}"
BDEPEND=""

pkg_postinst() {
    ewarn "You may use 'nautilus -q' to restart the nautilus to enable the new extension."
    ewarn "Run 'dconf-editor /org/flozz/nautilus-terminal' for configuration."
}
