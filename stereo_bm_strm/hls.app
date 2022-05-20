<project xmlns="com.autoesl.autopilot.project" name="stereo_bm_strm" top="stereolbm_accel">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="/home/louis/HLS_Course/Test/stereo_bm_strm/data/left.png /home/louis/HLS_Course/Test/stereo_bm_strm/data/right.png">
        <SimFlow name="csim" ldflags="-L /usr/local/lib/ -lopencv_imgcodecs -lopencv_imgproc -lopencv_calib3d -lopencv_core -lopencv_highgui -lopencv_flann -lopencv_features2d" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../xf_stereolbm_tb.cpp" sc="0" tb="1" cflags=" -I../../../../../../usr/local/include/opencv4  -I../include  -Wno-unknown-pragmas" csimflags=" -I../include  -Wno-unknown-pragmas" blackbox="false"/>
        <file name="stereo_bm_strm/xf_stereolbm_accel.cpp" sc="0" tb="false" cflags="-I../../../../../../. -I../../../include" csimflags="-I../../../include -I../../../../." blackbox="false"/>
        <file name="stereo_bm_strm/xf_stereolbm_config.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

