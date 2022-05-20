############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project stereo_bm_strm
set_top stereolbm_accel
add_files stereo_bm_strm/xf_stereolbm_config.h
add_files stereo_bm_strm/xf_stereolbm_accel.cpp -cflags "-I../../../../../../. -I../../../include" -csimflags "-I../../../include -I../../../../."
add_files -tb stereo_bm_strm/xf_stereolbm_tb.cpp -cflags "-I../../../../usr/local/include/opencv4 -Istereo_bm_strm/include -Wno-unknown-pragmas" -csimflags "-Istereo_bm_strm/include -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
#source "./stereo_bm_strm/solution1/directives.tcl"
csim_design -ldflags {-L /usr/local/lib/ -lopencv_imgcodecs -lopencv_imgproc -lopencv_calib3d -lopencv_core -lopencv_highgui -lopencv_flann -lopencv_features2d} -argv {/home/louis/HLS_Course/Test/stereo_bm_strm/data/left.png /home/louis/HLS_Course/Test/stereo_bm_strm/data/right.png}
csynth_design
cosim_design -ldflags {-L /usr/local/lib/ -lopencv_imgcodecs -lopencv_imgproc -lopencv_calib3d -lopencv_core -lopencv_highgui -lopencv_flann -lopencv_features2d}
export_design -format ip_catalog
