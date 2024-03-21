#!/bin/bash
# This script creates a source tarball for OpenKore, confpack and tablepack.

PACKAGE=openkore
VERSION=2.0.6

DIRS=(.
	src
	src/build
	src/scons-local-2.0.1
	src/scons-local-2.0.1/SCons
	src/scons-local-2.0.1/SCons/compat
	src/scons-local-2.0.1/SCons/Node
	src/scons-local-2.0.1/SCons/Options
	src/scons-local-2.0.1/SCons/Platform
	src/scons-local-2.0.1/SCons/Scanner
	src/scons-local-2.0.1/SCons/Script
	src/scons-local-2.0.1/SCons/Tool
	src/scons-local-2.0.1/SCons/Tool/MSCommon
	src/scons-local-2.0.1/SCons/Tool/packaging
	src/scons-local-2.0.1/SCons/Variables
	src/deps
	src/deps/Carp
	src/deps/Class
	src/deps/Class/Accessor
	src/deps/Class/Data
	src/deps/Devel
	src/deps/Exception
	src/deps/File
	src/deps/List
	src/deps/Text
	src/deps/Tie
	src/deps/SVN
	src/deps/Data/YAML
	src/po
	src/test
	src/Actor
	src/AI
	src/AI/Slave
	src/Base
	src/Base/Server
	src/Base/Ragnarok
	src/Base/WebServer
	src/Bus
	src/Bus/Server
	src/doc
	src/doc/data
	src/doc/srcdoc
	src/Interface
	src/Interface/Console
	src/Interface/Win32
	src/Interface/Wx
	src/Interface/Wx/DockNotebook
	src/Interface/Wx/List
	src/Interface/Wx/List/ItemList
	src/Interface/Wx/StatView
	src/MediaServer
	src/Network
	src/Network/Receive
	src/Network/Receive/iRO
	src/Network/Receive/kRO
	src/Network/Send
	src/Network/Send/iRO
	src/Network/Send/kRO
	src/Network/XKore2
	src/Task
	src/Poseidon
	src/Utils
	src/Utils/StartupNotification
	src/auto/XSTools
	src/auto/XSTools/misc
	src/auto/XSTools/OSL
	src/auto/XSTools/OSL/doc
	src/auto/XSTools/OSL/IO
	src/auto/XSTools/OSL/Net
	src/auto/XSTools/OSL/Net/Unix
	src/auto/XSTools/OSL/Net/Win32
	src/auto/XSTools/OSL/test/unit
	src/auto/XSTools/OSL/Threading
	src/auto/XSTools/OSL/Threading/Unix
	src/auto/XSTools/OSL/Threading/Win32
	src/auto/XSTools/PathFinding
	src/auto/XSTools/unix
	src/auto/XSTools/win32
	src/auto/XSTools/Translation
	src/auto/XSTools/PaddedPackets
	src/auto/XSTools/PaddedPackets/Algorithms
	src/auto/XSTools/utils
	src/auto/XSTools/utils/win32
	src/auto/XSTools/utils/unix
	src/auto/XSTools/utils/c-bindings
	src/auto/XSTools/utils/perl
)
PACKAGEDIR=$PACKAGE-$VERSION


if [[ "$1" == "--help" ]]; then
	echo "makedist.sh [--bin|--semibin DIR]"
	echo " --bin      Create a binary distribution archive, including the binaries,"
	echo "            confpack and tablepack."
	echo " --semibin  Create a binary distribution, excluding binaries, confpack and"
	echo "            tablepack. Files will be copied to DIR."
	exit 1
elif [[ "$1" == "--bin" ]]; then
	BINDIST=1
	if [[ "$2" == "-o" ]]; then
		PACKAGEDIR="$3"
	fi
elif [[ "$1" == "--semibin" ]]; then
	SEMIBINDIST=1
	PACKAGEDIR="$2"
	if [[ "$PACKAGEDIR" = "" ]]; then
		echo "No output folder given. See --help"
		exit 1
	elif [[ ! -d "$PACKAGEDIR" ]]; then
		echo "The output folder does not exist. See --help"
		exit 1
	fi
fi

if [[ "$BINDIST" == "1" ]]; then
	for F in start.exe wxstart.exe NetRedirect.dll XSTools.dll; do
		if [[ ! -f "$F" ]]; then
			echo "Please put $F in the current folder."
			exit 1
		fi
	done
fi

ADDITIONAL=()
if [[ "$BINDIST" != "1" ]]; then
	ADDITIONAL[${#ADDITIONAL[@]}]=SConstruct
	ADDITIONAL[${#ADDITIONAL[@]}]=SConscript
	ADDITIONAL[${#ADDITIONAL[@]}]=Distfiles
	ADDITIONAL[${#ADDITIONAL[@]}]=makedist.sh
fi

export GZIP=--best
export BZIP2=-9


# Bail out on error
err() {
	if [ "x$1" != "x" ]; then
		echo "*** Error: $1"
	else
		echo "*** Error"
	fi
	exit 1
}

# Preparation: create the dist folder
rm -rf "$PACKAGEDIR" || err
mkdir "$PACKAGEDIR"  || err


# Copy the files to the dist folder
process() {
	local TARGET="$PACKAGEDIR/$1/"
	local IFS=$'\n'
	local FILES=`cat "$1/Distfiles" 2>/dev/null | sed 's/\r//g'`

	echo "# Processing $1 :"
	if ! [ -d "$TARGET" ]; then
		mkdir -p "$TARGET" || err
	fi
	for F in "${ADDITIONAL[@]}"; do
		if [ -f "$1/$F" ]; then
			echo "Copying $1/$F"
			cp "$1/$F" "$TARGET" || err
		fi
	done

	for F in ${FILES[@]}; do
		echo "Copying $1/$F"
		cp "$1/$F" "$TARGET" || err
	done
}

for D in ${DIRS[@]}; do
	process "$D"
done


#######################################


function findConfpackDir() {
	if [[ -d confpack ]]; then
		confpackDir=confpack
	elif [[ -d control/confpack ]]; then
		confpackDir=control/confpack
	elif [[ -d ../confpack ]]; then
		confpackDir=../confpack
	else
		err "Cannot find the confpack folder. Please put it in the current directory."
	fi
}

function findTablepackDir() {
	if [[ -d tablepack ]]; then
		tablepackDir=tablepack
	elif [[ -d tables/tablepack ]]; then
		tablepackDir=tables/tablepack
	elif [[ -d ../tablepack ]]; then
		tablepackDir=../tablepack
	else
		err "Cannot find the tablepack folder. Please put it in the current directory."
	fi
}

dir=`cd "$PACKAGEDIR"; pwd`

# Copy the confpack and tablepack files to the distribution's folder
if [[ "$SEMIBINDIST" != "1" ]]; then
	findConfpackDir
	findTablepackDir
	make -C "$confpackDir" distdir DISTDIR="$PACKAGEDIR/control" || err
	make -C "$tablepackDir" distdir DISTDIR="$PACKAGEDIR/tables" || err
fi

# Convert openkore.pl to Unix line format, otherwise Unix users can't
# execute it directly.
perl src/build/dos2unix.pl "$PACKAGEDIR/openkore.pl" || err
perl src/build/unix2dos.pl "$PACKAGEDIR/README.txt" || err

if [[ "$BINDIST" == "1" ]]; then
	# Create binary zipfile
	cp XSTools.dll NetRedirect.dll "$PACKAGEDIR/src/auto/XSTools/" || err

	# Win32 binary
	cp start.exe "$PACKAGEDIR/" || err
	zip -9r "$PACKAGE-$VERSION-win32.zip" "$PACKAGEDIR" || err

	# Win32 Wx binary
	cp wxstart.exe "$PACKAGEDIR/" || err
	rm -f "$PACKAGEDIR/start.exe"
	zip -9r "$PACKAGE-$VERSION-win32_WX.zip" "$PACKAGEDIR" || err

	echo "$PACKAGE-$VERSION-win32.zip created"
	echo "$PACKAGE-$VERSION-win32_wx.zip created"

elif [[ "$SEMIBINDIST" != "1" ]]; then
	# Create tarball
	echo "Creating distribution archive..."
	tar --bzip2 -cf "$PACKAGEDIR.tar.bz2" "$PACKAGEDIR" || err
	echo "$PACKAGEDIR.tar.bz2"
fi

if [[ "$SEMIBINDIST" != "1" ]]; then
	rm -rf "$PACKAGEDIR"
fi
