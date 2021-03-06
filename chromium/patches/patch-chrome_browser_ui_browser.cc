$NetBSD: patch-chrome_browser_ui_browser.cc,v 1.1 2011/04/28 03:09:02 rxg Exp $

--- chrome/browser/ui/browser.cc.orig	2011-04-13 08:01:42.000000000 +0000
+++ chrome/browser/ui/browser.cc
@@ -263,7 +263,7 @@ Browser::~Browser() {
 
   BrowserList::RemoveBrowser(this);
 
-#if defined(OS_WIN) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_BSD)
   if (!BrowserList::HasBrowserWithProfile(profile_)) {
     // We're the last browser window with this profile. We need to nuke the
     // TabRestoreService, which will start the shutdown of the
@@ -810,7 +810,7 @@ string16 Browser::GetWindowTitleForCurre
   // On Mac or ChromeOS, we don't want to suffix the page title with
   // the application name.
   return title;
-#elif defined(OS_WIN) || defined(OS_LINUX)
+#elif defined(OS_WIN) || defined(OS_LINUX) || defined(OS_BSD)
   int string_id = IDS_BROWSER_WINDOW_TITLE_FORMAT;
   // Don't append the app name to window titles on app frames and app popups
   if (type_ & TYPE_APP)
@@ -1459,7 +1459,7 @@ void Browser::ToggleFullscreenMode() {
   window_->SetFullscreen(!window_->IsFullscreen());
   // On Linux, setting fullscreen mode is an async call to the X server, which
   // may or may not support fullscreen mode.
-#if !defined(OS_LINUX)
+#if !defined(OS_LINUX) && !defined(OS_BSD)
   UpdateCommandsForFullscreenMode(window_->IsFullscreen());
 #endif
 }
@@ -1706,7 +1706,7 @@ void Browser::OpenFile() {
 
 void Browser::OpenCreateShortcutsDialog() {
   UserMetrics::RecordAction(UserMetricsAction("CreateShortcut"), profile_);
-#if defined(OS_WIN) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_BSD)
   TabContentsWrapper* current_tab = GetSelectedTabContentsWrapper();
   DCHECK(current_tab &&
       web_app::IsValidUrl(current_tab->tab_contents()->GetURL())) <<
@@ -2516,7 +2516,7 @@ void Browser::DuplicateContentsAt(int in
 }
 
 void Browser::CloseFrameAfterDragSession() {
-#if defined(OS_WIN) || defined(OS_LINUX)
+#if defined(OS_WIN) || defined(OS_LINUX) || defined(OS_BSD)
   // This is scheduled to run after we return to the message loop because
   // otherwise the frame will think the drag session is still active and ignore
   // the request.
