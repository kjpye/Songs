globalGloria = {
}

TempoTrackGloria = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrackGloria = {
  \set Score.currentBarNumber = #1
}

dynamicsSopGloria = {
  \override DynamicTextSpanner.style = #'none
}

sopranoGloria = \relative {
  \globalGloria
}

wordsSopGloria = \lyricmode {
}

dynamicsAltoGloria = {
  \override DynamicTextSpanner.style = #'none
}

altoGloria = \relative {
}

wordsAltoGloria = \lyricmode {
}

dynamicsTenorGloria = {
  \override DynamicTextSpanner.style = #'none
}

tenorGloria = \relative {
}

wordsTenorGloria = \lyricmode {
}

dynamicsBassGloria = {
  \override DynamicTextSpanner.style = #'none
}

bassGloria = \relative {
}

wordsBassGloria = \lyricmode {
}

pianoRHoneGloria = \relative {
}

pianoRHtwoGloria = \relative {
}

dynamicsPianoGloria = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHoneGloria = \relative {
}

pianoLHtwoGloria = \relative {
}
