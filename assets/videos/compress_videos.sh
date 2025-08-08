#!/bin/bash

# 1
# DM-BV-C4_Shipwreck_Rankins_25.4m.mp4
ffmpeg -ss 0 -t 10 -i "DM-BV-C4_Shipwreck_Rankins_25.4m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "DM-BV-C4_Shipwreck_Rankins_25.4m_small.mp4"

#2
# EG-CPO-014_N.ferrugineus_and_busy_reef_7m.mp4
ffmpeg -ss 0 -t 10 -i "EG-CPO-014_N.ferrugineus_and_busy_reef_7m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "EG-CPO-014_N.ferrugineus_and_busy_reef_7m_small.mp4"

# 3
# GB-BV-P06_G.hebraicum_77cm_16.0m.mp4
ffmpeg -ss 0 -t 10 -i "GB-BV-P06_G.hebraicum_77cm_16.0m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "GB-BV-P06_G.hebraicum_77cm_16.0m_small.mp4"

# 4
# DM-BV-86_G.speciosus_28.7m.mp4
ffmpeg -ss 0 -t 10 -i "DM-BV-86_G.speciosus_28.7m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "DM-BV-86_G.speciosus_28.7m_small.mp4"
  
# 5
# GB-BV-005_C.auratus_36.1m.mp4
ffmpeg -ss 0 -t 10 -i "GB-BV-005_C.auratus_36.1m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "GB-BV-005_C.auratus_36.1m_small.mp4"
  
# 6
# SAL-BV-C07_Carcharhinus-taurus_66.3m.MP4_0067191.mp4
ffmpeg -ss 0 -t 10 -i "SAL-BV-C07_Carcharhinus-taurus_66.3m.MP4_0067191.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "SAL-BV-C07_Carcharhinus-taurus_66.3m.MP4_0067191_small.mp4"

# 7
# SB-BV-082_C._rubescens_L._miniatus_C._auricularis_C._westaustralis_38.7m.mp4
ffmpeg -ss 0 -t 10 -i "SB-BV-082_C._rubescens_L._miniatus_C._auricularis_C._westaustralis_38.7m.mp4" \
  -vcodec libx264 -crf 28 -preset veryfast \
  -movflags +faststart -an \
  -vf "scale=1280:-1" \
  "SB-BV-082_C._rubescens_L._miniatus_C._auricularis_C._westaustralis_38.7m_small.mp4"