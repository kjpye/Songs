globalIII = {
  \key g \minor
  \time 3/4
}

TempoTrackIII = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s2.*102
}

RehearsalTrackIII = {
  \set Score.currentBarNumber = #1
  s2.*102
}

dynamicsSopIII = {
  \override DynamicTextSpanner.style = #'none
  s2.*102 |
}

sopranoIII = \relative {
  \globalIII
  s2.*102
}

wordsSopIII = \lyricmode {
}

dynamicsAltoIII = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

altoIII = \relative {
  s2.*102
}

wordsAltoIII = \lyricmode {
}

dynamicsTenorIII = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

tenorIII = \relative {
  s2.*102
}

wordsTenorIII = \lyricmode {
}

dynamicsBassIII = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

bassIII = \relative {
  s2.*102
}

wordsBassIII = \lyricmode {
}

pianoRHoneIII = \relative {
  s2.*102
}

pianoRHtwoIII = \relative {
  s2.*102
}

dynamicsPianoIII = {
  \override DynamicTextSpanner.style = #'none
  s2.*102
}

pianoLHoneIII = \relative {
  s2.*102
}

pianoLHtwoIII = \relative {
  s2.*102
}
