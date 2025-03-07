# Microsoft Developer Studio Project File - Name="tcnative" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=tcnative - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "tcnative.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "tcnative.mak" CFG="tcnative - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "tcnative - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "tcnative - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "tcnative - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "LibR"
# PROP Intermediate_Dir "LibR"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /Zi /O2 /Oy- /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FD /c
# ADD CPP /nologo /MD /W3 /Zi /O2 /Oy- /I "./include" /I "./srclib/apr/include" /I "./srclib/apr/include/arch/win32" /I "$(JAVA_HOME)/include" /I "$(JAVA_HOME)/include/win32" /I "./srclib/openssl/inc32" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "APR_DECLARE_STATIC" /D "NO_IDEA" /D "NO_RC5" /D "NO_MDC2" /D "OPENSSL_NO_IDEA" /D "OPENSSL_NO_RC5" /D "OPENSSL_NO_MDC2" /D HAVE_SSL_SET_STATE=1 /Fd"LibR\tcnative_src" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib advapi32.lib ws2_32.lib mswsock.lib wldap32.lib psapi.lib ole32.lib shlwapi.lib /nologo /base:"0x6EE00000" /subsystem:windows /dll /debug /machine:I386 /opt:ref
# ADD LINK32 kernel32.lib advapi32.lib ws2_32.lib mswsock.lib wldap32.lib psapi.lib ole32.lib shlwapi.lib rpcrt4.lib libeay32.lib ssleay32.lib /nologo /base:"0x6EE00000" /subsystem:windows /dll /debug /machine:I386 /out:"LibR/tcnative-1.dll" /libpath:"./srclib/openssl/out32" /libpath:"./srclib/openssl/out32dll" /opt:ref

!ELSEIF  "$(CFG)" == "tcnative - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "LibD"
# PROP Intermediate_Dir "LibD"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FD /c
# ADD CPP /nologo /MDd /W4 /GX /Zi /Od /I "./include" /I "./srclib/apr/include" /I "./srclib/apr/include/arch/win32" /I "$(JAVA_HOME)/include" /I "$(JAVA_HOME)/include/win32" /I "./srclib/openssl/inc32" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "APR_DECLARE_STATIC" /D "NO_IDEA" /D "NO_RC5" /D "NO_MDC2" /D "OPENSSL_NO_IDEA" /D "OPENSSL_NO_RC5" /D "OPENSSL_NO_MDC2" /D HAVE_SSL_SET_STATE=1 /Fd"LibD\tcnative_src" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL"
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib advapi32.lib ws2_32.lib mswsock.lib wldap32.lib psapi.lib ole32.lib shlwapi.lib /nologo /base:"0x6EE00000" /subsystem:windows /dll /incremental:no /debug /machine:I386
# ADD LINK32 kernel32.lib advapi32.lib ws2_32.lib mswsock.lib wldap32.lib psapi.lib ole32.lib shlwapi.lib rpcrt4.lib libeay32.lib ssleay32.lib /nologo /base:"0x6EE00000" /subsystem:windows /dll /incremental:no /debug /machine:I386 /out:"LibD/tcnative-1.dll" /libpath:"./srclib/openssl/out32" /libpath:"./srclib/openssl/out32dll" 

!ENDIF 

# Begin Target

# Name "tcnative - Win32 Release"
# Name "tcnative - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\bb.c
# End Source File
# Begin Source File

SOURCE=.\src\error.c
# End Source File
# Begin Source File

SOURCE=.\src\jnilib.c
# End Source File
# Begin Source File

SOURCE=.\src\pool.c
# End Source File
# Begin Source File

SOURCE=.\src\ssl.c
# End Source File
# Begin Source File

SOURCE=.\src\sslcontext.c
# End Source File
# Begin Source File

SOURCE=.\src\sslconf.c
# End Source File
# Begin Source File

SOURCE=.\src\sslutils.c
# End Source File
# End Group
# Begin Group "Generated Files"

# PROP Default_Filter ""
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\include\ssl_private.h
# End Source File
# Begin Source File

SOURCE=.\include\tcn.h
# End Source File
# Begin Source File

SOURCE=.\include\tcn_api.h
# End Source File
# Begin Source File

SOURCE=.\include\tcn_version.h
# End Source File
# End Group
# Begin Group "Platform Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\os\win32\system.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\os\win32\libtcnative.rc
# End Source File
# End Target
# End Project
