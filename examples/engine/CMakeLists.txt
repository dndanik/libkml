build_example(balloonwalker kmlengine)
build_example(clone kmlengine)
build_example(csv2kml kmlconvenience)
build_example(csvinfo kmlconvenience)
build_example(import kmlengine)
build_example(inlinestyles kmlengine)
build_example(kmlfile kmlengine)
build_example(kml2kmz kmlengine)
build_example(kmzchecklinks kmlengine)
build_example(oldschema kmlengine)
build_example(parsebig kmlengine)
build_example(printstyle kmlengine)
build_example(change kmlconvenience)
build_example(splitstyles kmlconvenience)
build_example(streamkml kmlconvenience)

if(INSTALL_EXAMPLES)
file(GLOB eg_files "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")
install(FILES ${eg_files}  DESTINATION ${KML_EXAMPLES_DIR} COMPONENT Development)
endif()
