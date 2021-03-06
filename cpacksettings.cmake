
if(MSVC)
set(CPACK_GENERATOR "TBZ2")
else()
set(CPACK_GENERATOR "TBZ2;DEB;RPM")
endif(MSVC)

set(CPACK_SOURCE_GENERATOR "TBZ2")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "avbot Q群云秘书")
SET(CPACK_PACKAGE_VENDOR "avplayer.org")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")
SET(CPACK_PACKAGE_VERSION_MAJOR "11")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "0")
if(WIN32)
	SET(CPACK_PACKAGE_INSTALL_DIRECTORY "avbot")
else()
	SET(CPACK_PACKAGE_INSTALL_DIRECTORY "/")
endif()

IF(WIN32 AND NOT UNIX)
  # There is a bug in NSI that does not handle full unix paths properly. Make
  # sure there is at least one set of four (4) backlasshes.
  SET(CPACK_NSIS_MUI_ICON "${CMAKE_CURRENT_SOURCE_DIR}\\\\avbot.ico")
  SET(CPACK_NSIS_INSTALLED_ICON_NAME "avbot.exe")
  SET(CPACK_NSIS_DISPLAY_NAME "avplayer.org avbot")
  SET(CPACK_NSIS_HELP_LINK "http://qqbot.avplayer.org")
  SET(CPACK_NSIS_URL_INFO_ABOUT "http://qqbot.avplayer.org")
  SET(CPACK_NSIS_CONTACT "microcaicai@gmail.com")
  SET(CPACK_NSIS_MODIFY_PATH ON)
ELSE(WIN32 AND NOT UNIX)
  SET(CPACK_STRIP_FILES "avbot")
  SET(CPACK_SOURCE_STRIP_FILES "")
ENDIF(WIN32 AND NOT UNIX)
SET(CPACK_PACKAGE_EXECUTABLES "avbot" "avbot")

SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "mosir") #required

SET(CPACK_SOURCE_IGNORE_FILES "${CPACK_SOURCE_IGNORE_FILES};${CMAKE_CURRENT_BINARY_DIR};\\\\.git;\\\\.kdev.*;\\\\.travis\\\\.yml")
