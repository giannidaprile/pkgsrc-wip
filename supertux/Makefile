# $NetBSD: Makefile,v 1.16 2012/11/13 20:09:35 othyro Exp $
#

DISTNAME=		supertux-0.1.3
PKGREVISION=		6
CATEGORIES=		games
MASTER_SITES=		http://download.berlios.de/supertux/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		hernani@vecirex.net
HOMEPAGE=		http://supertux.lethargik.org/
COMMENT=		2D jump'n run game in the style of the Super Mario ones

LICENSE=		gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	none

HAS_CONFIGURE=		YES
CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}
USE_TOOLS+=		gmake
USE_LANGUAGES=		c c++

BUILDLINK_API_DEPENDS.SDL=	SDL>=1.2.9nb1
BUILDLINK_API_DEPENDS.SDL_mixer=	SDL_mixer>=1.2.6nb3
BUILDLINK_API_DEPENDS.SDL_image=	SDL_image>=1.2.4nb2


.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/SDL/buildlink3.mk"
.include "../../audio/SDL_mixer/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
