$NetBSD: patch-js_src_jsgc.cpp,v 1.3 2015/04/10 11:43:50 krytarowski Exp $

http://gnats.netbsd.org/46622

--- js/src/jsgc.cpp.orig	2012-08-24 22:55:40.000000000 +0000
+++ js/src/jsgc.cpp
@@ -2635,8 +2635,12 @@ GetCPUCount()
         GetSystemInfo(&sysinfo);
         ncpus = unsigned(sysinfo.dwNumberOfProcessors);
 # else
+#  ifdef _SC_NPROCESSORS_ONLN
         long n = sysconf(_SC_NPROCESSORS_ONLN);
         ncpus = (n > 0) ? unsigned(n) : 1;
+#  else
+       ncpus = 1;
+#  endif
 # endif
     }
     return ncpus;
