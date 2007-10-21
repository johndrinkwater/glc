#!/bin/bash
#
# capture.sh -- example: glc environment variables and usage
# Copyright (C) 2007 Pyry Haulos
# For conditions of distribution and use, see copyright notice in glc.h

# picture stream fps
export GLC_FPS=30

# out filename, %d => getpid()
export GLC_FILE="pid-%d.glc"

# scale pictures
export GLC_SCALE=1.0

# capture audio
export GLC_AUDIO=1

# install custom signal handler
export GLC_SIGHANDLER=0

# captured pictures and audio buffer size, in MiB
export GLC_UNCOMPRESSED_BUFFER_SIZE=10

# unscaled pictures buffer size, in MiB
export GLC_UNSCALED_BUFFER_SIZE=10

# compressed data buffer size, in MiB
export GLC_COMPRESSED_BUFFER_SIZE=50

# take picture at glFinish(), compiz needs this
export GLC_CAPTURE_GLFINISH=0

# take picture from front or back buffer
export GLC_CAPTURE=back

# compress stream with LZO
export GLC_COMPRESS=1

# capture as BGRA, do sw conversion to BGR
export GLC_CAPTURE_BGRA=0

# try GL_ARB_pixel_buffer_object to speed up readback
export GLC_TRY_PBO=1

# Skip audio packets. Not skipping requires some busy
# waiting and can slow program down a quite bit.
export GLC_AUDIO_SKIP=1

# show indicator when capturing
export GLC_INDICATOR=1

# start capturing immediately
export GLC_START=0

# capture hotkey, <Ctrl> and <Shift> mods are supported
export GLC_HOTKEY="<Shift>F8"

# saved stream colorspace, bgr or 420jpeg
# set 420jpeg to convert to Y'CbCr (420JPEG) at capture
# NOTE this is a lossy operation
export GLC_COLORSPACE=420jpeg

# crop capture area to WxH+X+Y
# export GLC_CROP=WxH+X+Y

# use GL_PACK_ALIGNMENT 8
export GLC_CAPTURE_DWORD_ALIGNED=1

# set SDL audiodriver to alsa
export SDL_AUDIODRIVER=alsa

LD_PRELOAD=libglc-capture.so "${@}"
