## Process this file with automake to produce Makefile.in
# 
# Makefile.am
#
# Automake input file.
#
# Copyright (C) 2004, 2005, 2006, 2008, 2009 Stefan Jahn <stefan@lkcc.org>
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this package; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,
# Boston, MA 02110-1301, USA.  
#
ACLOCAL_AMFLAGS=-Im4

SUBDIRS = \
	man \
	qucs \
	qucs-activefilter \
	qucs-attenuator \
	qucs-filter \
	qucs-lib \
	qucs-rescodes \
	qucs-transcalc \
        qucs-powercombining \
	translations \
	contrib \
	examples \
	tests \
	$(RELEASEDIRS)

# used in qucs.in wrapper, to compile PATH
subdirs:
	@echo $(SUBDIRS)

.PHONY: subdirs

EXTRA_DIST = ar-lib bootstrap depcomp PLATFORMS RELEASE Info.plist \
	common.mk

# MacOSX specific installation of applications
# FIXME: don't install twice.
if COND_MACOSX
app_PROGS = $(top_builddir)/qucs/qucs \
  $(top_builddir)/qucs-attenuator/qucsattenuator \
  $(top_builddir)/qucs-filter/qucsfilter \
  $(top_builddir)/qucs-activefilter/qucsactivefilter \
  $(top_builddir)/qucs-lib/qucslib \
  $(top_builddir)/qucs-rescodes/qucsrescodes \
  $(top_builddir)/qucs-powercombining/qucspowercombining \
  $(top_builddir)/qucs-transcalc/qucstrans

install-exec-hook: mac-install-apps mac-deploy-framework

# BUG: overwrites. don't install from here.
mac-install-apps:
	@echo "Creating MacOSX applications...";
	@list='$(app_PROGS)'; for file in $$list; do \
	app=`basename $$file` && \
	$(mkinstalldirs) $(DESTDIR)$(bindir)/$$app.app/Contents && \
	$(mkinstalldirs) $(DESTDIR)$(bindir)/$$app.app/Contents/Resources && \
	$(mkinstalldirs) $(DESTDIR)$(bindir)/$$app.app/Contents/MacOS && \
	echo "$(install_sh_PROGRAM) $$file $(DESTDIR)$(bindir)/$$app.app/Contents/MacOS/" && \
	if [ $$app != qucs ]; then \
	  $(install_sh_PROGRAM) $$file $(DESTDIR)$(bindir)/$$app.app/Contents/MacOS/ && \
	  strip $(DESTDIR)$(bindir)/$$app.app/Contents/MacOS/$$app; \
	fi; \
	case $$app in \
	  qucs)		  desc="Qucs";; \
	  qucsattenuator) desc="Qucs Attenuator";; \
	  qucsfilter)	  desc="Qucs Filter";; \
	  qucsactivefilter)	  desc="Qucs Active Filter";; \
	  qucslib)	  desc="Qucs Library";; \
	  qucsedit)	  desc="Qucs Editor";; \
	  qucrescodes)	  desc="Qucs Resistor codes";; \
          qucspowercombining)	  desc="Qucs Power combining";; \
	  qucstrans)	  desc="Qucs Transcalc";; \
	esac && \
	cat $(srcdir)/Info.plist | \
	  sed -e "s/@version@/$(PACKAGE_VERSION)/g" | \
	  sed -e "s/@name@/$$desc/g" | \
	  sed -e "s/@exec@/$$app/g" > \
	  $(DESTDIR)$(bindir)/$$app.app/Contents/Info.plist && \
	$(install_sh_DATA) $(srcdir)/qucs/bitmaps/$$app.icns \
	  $(DESTDIR)$(bindir)/$$app.app/Contents/Resources/application.icns && \
	echo "#!/bin/sh\n$(bindir)/$$app.app/Contents/MacOS/$$app \$$*\n" > \
	  $(DESTDIR)$(bindir)/$$app && \
	chmod +x $(DESTDIR)$(bindir)/$$app; \
	done

mac-deploy-framework:
	@echo "Copying and setting up MacOSX/Qt framework...";
	@list='$(app_PROGS)'; for file in $$list; do \
	app=`basename $$file`; \
	echo "running: macdeployqt $(DESTDIR)$(bindir)/$${app}.app"; \
	macdeployqt $(DESTDIR)$(bindir)/$$app.app; \
	done

uninstall-hook:
	@list='$(app_PROGS)'; for file in $$list; do \
	app=`basename $$file` && \
	rm -rf $(DESTDIR)$(bindir)/$$app.app; \
	done
else
install-exec-hook:
uninstall-hook:
endif

CLEANFILES = *~ *.rej *.orig
MAINTAINERCLEANFILES = aclocal.m4 config.h.in configure Makefile.in \
        stamp-h.in stamp-h[0-9].in
DISTCLEANFILES = config.cache config.log
