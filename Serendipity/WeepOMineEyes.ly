\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weep O Mine Eyes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Bennet (1599)"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key c \major
  \time 4/4
  \tempo 4=90
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

soprano = \relative c'' {
  \global
  r1^\markup{\italic{Slow and expressive}}
  r1
  r4 c2 b8 a
  gis4 e'4.^- d8 c4
  b4 a4.^- a8 \> g4
  \time 2/4 g4 f \time 4/4
  e1
  e2 \! r2
  a2 c
  b4 e2 d4
  e2 r4 e,
  a2 g4 c~
  c4 b8(a) gis4 gis
  \time 2/4 a4 a \time 4/4
  b2 e,
  \repeat volta 2 {
    r4 c'2(b8 a)
    b2^- r4 a~
    a4 g4.^- a8 f4
    e4 r r8 g a b
    c8. b16 a8 a g g g4
    g4 g4. g8 f4
    e4 d e2
  }
  \alternative {
    {
      \time 2/4 e2 \time 4/4
    }
    { 
      e1^\fermata
    } 
  }
  \bar "|."
}

dynamicsSop = {
  s1
  s1
  s4 s2.^\p
  s4 s2.^\mf
  s2 s\>
  \time 2/4 s2 \time 4/4
  s1
  s1 \!
  s1^\mp
  s1
  s2. s4^\mf
  s1
  s1
  \time 2/4 s2 \time 4/4
  s1 \>
  \repeat volta 2 {
    s4 \! s2^\f s4 \>
    s2 \! s4 s^\mf
    s1
    s2 s8 s4.^\mp \<
    s1 \!
    s4 s2.^\dim
    s1
  }
  \alternative {
    {
      \time 2/4 s2 \time 4/4
    }
    {
      s1^\pp
    }
  }
}

alto = \relative c' {
  \global
  r2 e~
  e4 d8 c b4. b8
  c8 d e2 e4
  e2 e4. a,8
  b4 e2 e4~
  \time 2/4 e8 e d4 \time 4/4
  d4 c b2
  cis4 e2 f4~
  f4 e2 a4~
  a4 gis a a,
  c2 b4 e~
  e4 d e8. d16 c8 b
  a2 d4 e
  \time 2/4 f4 e \time 4/4
  d2 cis
  \repeat volta 2 {
    r4 a'2(gis8 fis)
    gis2^- r4 f~
    f4 e4.^- f8 d4
    cis4 r r8 e f g
    a8. g16 f8 e d c d4
    e4. e8 d4. c8
    b4 a b2
  }
  \alternative {
    {
      \time 2/4 cis2 \time 4/4
    }
    {
      cis1^\fermata
    }
  }
  \bar "|."
}

dynamicsAlto = {
  s2 s2^\p
  s1
  s1
  s1
  s2. s4^\mf
  \time 2/4 s2 \> \time 4/4
  s1
  s4 \! s2.^\p
  s1
  s2. s4^\mf
  s1
  s1
  s1
  \time 2/4 s2 \time 4/4
  s1 \>
  \repeat volta 2 {
    s4 \! s2^\f s4 \>
    s2 \! s4 s^\mf
    s1
    s2 s8 s4.^\mp \<
    s1 \!
    s4. s8^\dim s2
    s1
  }
  \alternative {
    {
      \time 2/4 s2 \time 4/4
    }
    {
      s1^\pp
    }
  }
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  r4 c2 b8 a
  gis4 a4. gis16(fis gis4)
  a4 a2 gis8 a
  b8. d16 c4 b e^-~
  e8 d c4 b c^-~
  \time 2/4 c8 b a4 \time 4/4
  gis4 a2 gis4
  a2 r4 a
  c2 a4 a
  e'2 a,
  r2 e
  f2 e4 e'~
  e4 d e b~
  \time 2/4 b8 a a4 ~ \time 4/4
  a4 gis a2
  \repeat volta 2 {
    c2 e--~
    e2 a,
    c4.-- c8 a2
    a8 a c d e8. d16 c8 b
    a8 a d c b c4 b8
    c4. c8 b4 a
    gis4 a2 gis4
  }
  \alternative {
    {
      \time 2/4 a2 \time 4/4
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

dynamicsTenor = {
  s4 s2.^\p
  s1
  s1
  s2. s4^\mf
  s1
  \time 2/4 s2 \> \time 4/4
  s1
  s2. \! s4^\p
  s1
  s1
  s2 s^\mf
  s1
  s1
  \time 2/4 s2 \time 4/4
  s1 \>
  \repeat volta 2 {
    s2^\f \! s2 \>
    s2 \! s2^\mf
    s1
    s8 s^\p \< s4 s2 \!
    s1
    s4. s8^\dim d2
    s1
  }
  \alternative {
    {
      \time 2/4 s2 \time 4/4
    }
    {
      s1^\pp
    }
  }
}

bass= \relative c' {
  \global
  \clef bass
  a2. g8 f
  e2. e4
  a,2 e'4 e
  e4. fis8 gis4 a^-
  gis4 a e2
  \time 2/4 c4 d \time 4/4
  e1
  a,4. b8(cis4) d
  a2 r
  e'2 f
  e4 a2 gis4
  a2 r4 a,
  f'2 e4. e8
  \time 2/4 d4 c \time 4/4
  b2 a
  \repeat volta 2 {
    a'2 e--~
    e2 f
    c4.-- c8 d2
    a8 a a' b c8. b16 a8 g
    f4 f g2
    c,4. c8 d4 d
    e4 f e2
  }
  \alternative {
    {
      \time 2/4 a,2 \time 4/4
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

dynamicsBass = {
  s1^\p
  s1
  s1
  s2. s4^\mf
  s1
  \time 2/4 s2 \> \time 4/4
  s1
  s4. \! s8^\p s2
  s1
  s1^\mp
  s1
  s2. s4^\mf
  s1
  \time 2/4 s2 \time 4/4
  s1 \>
  \repeat volta 2 {
    s2^\f \! s2 \>
    s2 \! s2^\mf
    s1
    s8 s^\p \< s4 s2 \>
    s2 \< s2 \!
    s4. s8^\dim s2
    s1
  }
  \alternative {
    {
      \time 2/4 s2 \time 4/4
    }
    {
      s1^\pp
    }
  }
}

dynamicsPiano = {
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  c4
  \bar "|."
}

wordsSop = \lyricmode {
  Weep O mine eyes, weep O mine eyes,
  weep O mine eyes, and cease not:
  A- las these your spring- tides,
  a- las these your __ spring- tides,
  me thinks in- crease not.
  O __ when, O __ when be- gin you
  To swell so high that I may drown me in you,
  that I may drown me in you?
  you?
}

wordsAlto = \lyricmode {
  Weep O mine eyes,
  weep O mine eyes, and cease not,
  and cease not,
  weep __ O mine eyes and cease not:
  A- las __ these your __ spring- tides.
  a- las these your __ spring- tides me thinks in- crease not.
  me thinks in- crease not.
  O __ when, O __ when be- gin you
  To swell so high that I may drown me in you,
  tat I may drown in you?
  you?
}

wordsTenor = \lyricmode {
  Weep O mine eyes, and cease not,
  weep O mine eyes, and cease not,
  weep O mine eyes, weep O mine eyes, and cease not:
  A- las these your spring- tides,
  a- las these your __ spring- tides me- thinks in- crease not.
  O when, __
  O when be- gin you
  To swell so high that I may  drown
  that I may drown me in you,
  that I may drown me in you?
  you?
}

wordsBass = \lyricmode {
  Weep O mine eyes, and cease not,
  weep O mine eyes, weep O mine eyes,
  weep and cease not, and cease not:
  A- las these your spring- tides
  in- crease not, me thinks in- crease not.
  O when, __
  O when be- gin you
  To swell so high that I may drown me in you,
  that I may drown me in you?
  you?
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSop
      >>
% Single alto staff
      \new Dynamics \dynamicsAlto
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
	\new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAlto
      >>
% Single tenor staff
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" \wordsTenor
      >>
% Single bass staff
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBass
      >>
% Joint soprano/alto staff
%      \new Dynamics \dynamicsWomen
%      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
%        \new Voice = "soprano" { \voiceOne \soprano }
%        \new Voice = "alto"    { \voiceTwo \alto    }
%        \new Lyrics \lyricsto "soprano" \words
%      >>
% Joint tenor/bass staff
%      \new Dynamics \dynamicsMen
%      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
%        \new Voice = "tenor" \tenor
%        \new Voice = "bass" \bass
%      >>
%    >>
%    \new PianoStaff <<
%      \new Staff <<
%        \new Voice \pianoRH
%        \new Voice \pianoRHone
%        \new Voice \pianoRHtwo
%      >>
%      \new Dynamics \dynamicsPiano
%      \new Staff <<
%        \new Voice \pianoLH
%        \new Voice \pianoLHone
%        \new Voice \pianoLHtwo
%      >>
%    >>
  >>
>>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       RemoveAllEmptyStaves = ##t
    }
  }
}
