# $NetBSD: Makefile,v 1.1 2015/10/11 01:15:18 ryoon Exp $

DISTNAME=	gdb-7.10
PKGNAME=	cross-arm-eabi-${DISTNAME}
CATEGORIES=	cross
MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	# empty
COMMENT=	Cross GDB for bare metal ARM EABI
LICENSE=	gnu-gpl-v3

ARMELF_PREFIX=	${PREFIX}/cross-arm-eabi

USE_TOOLS+=	gmake makeinfo
GNU_CONFIGURE=	yes

OBJDIR=			../build
CONFIGURE_DIRS=		${OBJDIR}
CONFIGURE_SCRIPT=	${WRKSRC}/configure
GNU_CONFIGURE_PREFIX=	${ARMELF_PREFIX}

CONFIGURE_ARGS+=	--disable-werror --target=arm-eabi
CONFIGURE_ARGS+=	--disable-nls
INFO_FILES=		yes

pre-configure:
	${RUN} cd ${WRKSRC} && ${MKDIR} ${OBJDIR}

post-install:
	${RM} ${DESTDIR}${PREFIX}/cross-arm-eabi/info/bfd.info

.include "../../mk/bsd.pkg.mk"
