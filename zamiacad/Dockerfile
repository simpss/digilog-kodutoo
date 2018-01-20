FROM fgrehm/eclipse:v4.4.1

RUN /opt/eclipse/eclipse \
    -clean -purgeHistory \
    -application org.eclipse.equinox.p2.director \
    -noSplash \
    -repository http://zamiacad.sourceforge.net/update-site -list \
    -installIUs \
    zamiaCAD.feature.group
