# Makefile: install .ttf fonts from ./assets/fonts for Windows, Linux, and macOS

FONT_DIR := ./assets/fonts
TTF_FILES := $(wildcard $(FONT_DIR)/*.ttf)

.PHONY: install-fonts

install-fonts:
	@echo "Detecting OS..."
	@unameOut=`uname -s`; \
	case $$unameOut in \
		Linux*)     OS=Linux;; \
		Darwin*)    OS=Mac;; \
		MINGW*|MSYS*|CYGWIN*) OS=Windows;; \
		*)          OS="UNKNOWN";; \
	esac; \
	echo "Detected OS: $$OS"; \
	if [ "$$OS" = "Linux" ]; then \
		FONT_DEST="$$HOME/.local/share/fonts"; \
		echo "Installing fonts to $$FONT_DEST..."; \
		mkdir -p "$$FONT_DEST"; \
		cp $(TTF_FILES) "$$FONT_DEST/"; \
		fc-cache -f -v; \
	elif [ "$$OS" = "Mac" ]; then \
		FONT_DEST="$$HOME/Library/Fonts"; \
		echo "Installing fonts to $$FONT_DEST..."; \
		cp $(TTF_FILES) "$$FONT_DEST/"; \
	elif [ "$$OS" = "Windows" ]; then \
		echo "Installing fonts to Windows Fonts folder..."; \
		echo "Note: You may need to run this terminal as Administrator."; \
		powershell.exe -NoProfile -Command "try { \
			\$fonts = Get-ChildItem -Path '$(FONT_DIR)' -Filter '*.ttf'; \
			foreach (\$font in \$fonts) { \
				Copy-Item -Path \$font.FullName -Destination \$env:WINDIR\\Fonts -Force \
			}; \
			Write-Host 'Fonts installed successfully.' \
		} catch { \
			Write-Error 'Font installation failed. Try running this terminal as Administrator.'; \
			exit 1 \
		}"
	else \
		echo "Unsupported OS: $$OS"; \
		exit 1; \
	fi
