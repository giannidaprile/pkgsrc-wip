# $NetBSD: Makefile,v 1.10 2015/05/20 11:22:11 krytarowski Exp $
#

DISTNAME=	polkit-0.113
CATEGORIES=	security
MASTER_SITES=	http://www.freedesktop.org/software/polkit/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.freedesktop.org/wiki/Software/polkit
COMMENT=	Authorization Manager
LICENSE=	gnu-lgpl-v2

BUILD_DEPENDS+=		libxslt-[0-9]*:../../textproc/libxslt
BUILD_DEPENDS+=		docbook-xsl-[0-9]*:../../textproc/docbook-xsl

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config intltool gmake msgfmt perl

PKGCONFIG_OVERRIDE+=	data/polkit-gobject-1.pc.in
PKGCONFIG_OVERRIDE+=	data/polkit-agent-1.pc.in

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-polkitd-user=${POLKITD_USER}

POLKITD_USER?=		polkitd
POLKITD_GROUP?=		polkitd
PKG_GROUPS+=		${POLKITD_GROUP}
PKG_USERS+=		${POLKITD_USER}:${POLKITD_GROUP}
PKG_GECOS.${POLKITD_USER}=	Polkit Daemon User
PKG_HOME.${POLKITD_USER}=	${VARBASE}
PKG_GROUPS_VARS+=	POLKITD_GROUP
PKG_USERS_VARS+=	POLKITD_USER

REPLACE_PERL+=		src/polkitbackend/toarray.pl

INSTALL_MAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples/polkit
INSTALL_MAKE_FLAGS+=	pamdir=${PREFIX}/share/examples/pam.d

OWN_DIRS_PERMS+=	${PKG_SYSCONFDIR}/polkit-1/rules.d \
			${POLKITD_USER} ${POLKITD_GROUP} 700
OWN_DIRS_PERMS+=	${PREFIX}/share/polkit-1/rules.d \
			${POLKITD_USER} ${POLKITD_GROUP} 700
SPECIAL_PERMS+=		lib/polkit-1/polkit-agent-helper-1 ${SETUID_ROOT_PERMS}
SPECIAL_PERMS+=		bin/pkexec ${SETUID_ROOT_PERMS}

CONF_FILES+=	${PREFIX}/share/examples/polkit/dbus-1/system.d/org.freedesktop.PolicyKit1.conf	\
		${PKG_SYSCONFDIR}/dbus-1/system.d/org.freedesktop.PolicyKit1.conf
CONF_FILES+=	${PREFIX}/share/examples/polkit/polkit-1/rules.d/50-default.rules \
		${PKG_SYSCONFDIR}/polkit-1/rules.d/50-default.rules

.include "options.mk"

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths+=	docs/man/pkexec.xml
SUBST_FILES.paths+=	src/examples/org.freedesktop.policykit.examples.pkexec.policy.in
SUBST_SED.paths+=	-e 's,/usr/bin/,${PREFIX}/bin/,g'

.include "../../wip/spidermonkey185/buildlink3.mk"
#.include "../../lang/spidermonkey/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
