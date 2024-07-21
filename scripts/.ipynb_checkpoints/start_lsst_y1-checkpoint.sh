if [ -z "${ROOTDIR}" ]; then
    echo 'ERROR ROOTDIR not define'
    return
fi

# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------

addvar LD_LIBRARY_PATH $ROOTDIR/projects/lsst_y1/interface

addvar PYTHONPATH $ROOTDIR/projects/lsst_y1/interface

if [ -n "${COSMOLIKE_DEBUG_MODE}" ]; then
    export SPDLOG_LEVEL=debug
else
    export SPDLOG_LEVEL=info
fi