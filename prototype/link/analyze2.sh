#!/bin/bash
echo begin localizer ...
bash scripts/localizer.sh
bash scripts/wait-for-feat.sh analysis/firstlevel/localizer_hrf.feat
