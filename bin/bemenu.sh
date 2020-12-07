#!/bin/sh
# bemenu wrapper with my personalized settings

# MONOKAI THEME
font="Iosevka Slab 10"
titleBg="#3B4252"
titleFg="#E5E9F0"
filterBg="#4C566A"
filterFg="#ECEFF4"
normalBg='#2e3440'
normalFg="#e5e9f0"
highlightBg="#434C5E"
highlightFg="#8FBCBB"
selectedBg="#4C566A"
selectedFg="#88C0D0"
scrollbarBg=$DRACULA_PURPLE
scrollbarFg=$DRACULA_WHITE

bemenu \
  --ignorecase \
  --fn $font \
  --tb $titleBg \
  --tf $titleFg \
  --fb $filterBg \
  --ff $filterFg \
  --nb $normalBg \
  --nf $normalFg \
  --hb $highlightBg \
  --hf $highlightFg \
  --sb $selectedBg \
  --sf $selectedFg \
  --scb $scrollbarBg \
  --scf $scrollbarFg \
  -p '' \
  $@
