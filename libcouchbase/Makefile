# $NetBSD: Makefile,v 1.4 2014/07/30 13:58:57 fhajny Exp $

DISTNAME=	libcouchbase-2.3.2
CATEGORIES=	devel
MASTER_SITES=	http://packages.couchbase.com/clients/c/

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/develop/c/next
COMMENT=	C/C++ client library to access a Couchbase server
LICENSE=	apache-2.0

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake unzip
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

BROKEN= "configure: error: You need wget or curl in path to download the headers."

CONFIGURE_ARGS+=	--disable-couchbasemock
CONFIGURE_ARGS+=	--disable-static
# Test framework automatically downloads Google Test.
CONFIGURE_ARGS+=	--disable-tests
CONFIGURE_ENV+=		ac_cv_manpage_layout=bsd

.include "../../devel/libevent/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
