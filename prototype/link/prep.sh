#!/bin/bash
#
# prep.sh prepares for analysis of the subject's data
# original author: mason simon (mgsimon@princeton.edu)
# this script was provided by NeuroPipe. modify it to suit your needs

set -e

source globals.sh

bash scripts/convert-and-wrap-raw-data.sh $DICOM_ARCHIVE $NIFTI_DIR $SUBJ $RUNORDER_FILE
echo start qa-wrapped-data ...
bash scripts/qa-wrapped-data.sh $NIFTI_DIR $QA_DIR

echo start reorient-to-las ...
bash scripts/reorient-to-las.sh $NIFTI_DIR
echo start render-fsf-templates.sh ...
bash scripts/render-fsf-templates.sh
