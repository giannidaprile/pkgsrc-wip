# $NetBSD: Makefile,v 1.5 2014/10/09 14:06:30 thomasklausner Exp $

DISTNAME=		TheSchwartz-1.10
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/S/SI/SIXAPART/}

MAINTAINER=		hiramatu@boreas.dti.ne.jp
HOMEPAGE=		http://search.cpan.org/dist/TheSchwartz/
COMMENT=		Reliable job queue system
LICENSE=		artistic-2.0

DEPENDS+=		p5-Data-ObjectDriver>=0.04:../../wip/p5-Data-ObjectDriver
DEPENDS+=		p5-Digest-MD5-[0-9]*:../../security/p5-Digest-MD5
#DEPENDS+=		p5-Storable-[0-9]*:../../devel/p5-Storable

#PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/TheSchwartz/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
