\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It's Me, O Lord"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Negro Spiritual"
  arranger    = "Arr. by Arthur S. Loam"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
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
  \key g \major
  \time 4/4
  \partial 4
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

TempoTrack = {
  \tempo "Andante ben ritmico" 4=60
  s4
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" } s4 s1*2
  \mark \markup { \circle "1b" } s1*3
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*4
}

soprano = \relative {
  \global
  b'4
  b2. b4
  b8 a4 g8~2
  g8. 16 8. 16 a8 a4. % 1b
  b2. b4
  b2. b4
  b8 a4 g8~2 % 2a
  g8. 16 8. 16 b8 a4.
  g2. r4
  d'2 d % 2b
  e4(ees d cis)
  d4 d a8. 16 8. 16
  b2. r4 % 3a
  d2. b8.-> a16
  b8-> a4-> g8->~2
  g8. 16 8. 16 b8 a4. % 3b
  g2. b4
  b2. b4
  b8 a4 g8~2 % 4a
  g8. 16 8. 16 a8 4.
  b2. b4
  b2.-> b4 % 4b
  b8 a4 g8~2
  b8. 16 8. 16 b8 a4.
  g1
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s1\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\! s4-\markup \bold \italic {a tempo}
  s1-\markup \bold \italic {\dynamic p dolce} % 2b
  s1
  s2\p s\mf
  s1 % 3a
  s2.\p s4\mf
  s1
  s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
  s2.\! s4-\markup \bold \italic {\dynamic p a little slower}
  s1
  s1 % 4a
  s1
  s2\< s\!
  s1 % 4b
  s2.\> s4\!
  s1-\markup \bold \italic {rall. e dim.}
  s1
}

wordsSop = \lyricmode {
  It's me, it's me O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
  Ah __ Ah __ Ah __
  Stand -- in' in the need of prayer.
  Ah __
  But it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
}

wordsSopMidi = \lyricmode {
  "It's " "me, " "it's " "me " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh "  "Ah "  "Ah " 
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh " 
  "\nBut " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
}

alto = \relative {
  \global
  d'4
  d4 b c d
  e4 e d(c)
  b8. c16 d8. 16 e4 d % 1b
  d4 g8(e) d4 r
  r4 b c d
  d8 c4 b8~(b4 cis) % 2a
  d8. 16 cis8. d16 e4 d8(c)
  b2. r4
  g'2 g % 2b
  g2~g
  g8. 16 8. 16 4 fis
  g2. r4 % 3a
  g2(f4) 8.-> 16
  e4-> ees-> d->(c)
  b8. c16 d8. 16 e4 fis % 3b
  g2. r4
  r4 b, c d
  e4 ees d(cis) % 4a
  c8. 16 8. 16 4 e
  dis4(e fis) a
  g2(fis4) fis % 4
  e4 ees d(c)
  b8. 16 ais8. b16 d4 c
  b1
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\! s4-\markup \bold \italic {a tempo}
  s1-\markup \bold \italic {\dynamic p dolce} % 2b
  s1
  s2\mf s\>
  s1\! % 3a
  s2.\p s4\mf
  s1
  s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
  s1\!
  s4 s2.-\markup \bold \italic {\dynamic p a little slower}
  s1 % 4a
  s1
  s1
  s1 % 4b
  s4 s2.\>
  s1\!-\markup \bold \italic {rall. e dim.}
  s1
}

wordsAlto = \lyricmode {
  It's me, it's me, it's me, O Lord,
  Stand -- in' in the need of prayer, of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
  Ah __ Ah __ Ah __
  Stand -- in' in the need of prayer.
  Ah __
  But it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
}

wordsAltoMidi = \lyricmode {
  "It's " "me, " "it's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh "  "Ah "  "Ah " 
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh " 
  "\nBut " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
}

tenor = \relative {
  \global
  g4
  g4 d e g
  g4 g g2
  g8. a16 b8. 16 c4 c % 1b
  b4 b8(g) b4 r
  r4 d, e g
  g4 fis g2 % 2a
  b8. 16 ais8. b16 c4 fis,
  g2. 8. a16
  b8. d16 b8. a16 b8. d16 b8. a16 % 2b
  b8 a4 g8~2
  b4 b c8. 16 8. 16
  d2. g,8. a16 % 3a
  b8. d16 b8. a16 b8. d16 g,8.-> 16
  g4-> d-> g2->
  g8. a16 b8. 16 c4 c % 3b
  b2. r4
  r4 d, e g
  g4 g g2 % 4a
  e8. dis16 e8. g16 fis8 a4.
  a2. dis4
  e4->(b2) f4 % 4b
  g4 f g2
  g8. 16 8. 16 e8 fis4.
  g1

  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\! s4-\markup \bold \italic {\dynamic mf marcato}^\markup \bold \italic {a tempo}
  s1 % 2b
  s1
  s2\p s
  s2. s4-\markup \bold \italic {\dynamic mf marcato} % 3a
  s2. s4\mf
  s1
  s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
  s1\!
  s4 s2.-\markup \bold \italic {\dynamic p a little slower}
  s1 % 4a
  s1
  s1
  s1 % 4b
  s2.\> s4\!
  s1\!-\markup \bold \italic {rall. e dim.}
  s1
}

wordsTenor = \lyricmode {
  It's me, it's me, it's me, O Lord,
  Stand -- in' in the need of prayer, of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
  Tain't my
  sis -- ter, or my bro -- ther,
  But it's me, O Lord,
  Stand -- in' in the need of prayer.
  Tain't my Dea -- con or my El -- der,
  But it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
}

wordsTenorMidi = \lyricmode {
  "It's " "me, " "it's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nTain't " "my "
  "\nsis" "ter, " "or " "my " bro "ther, "
  "\nBut " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nTain't " "my " Dea "con " "or " "my " El "der, "
  "\nBut " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
}

bass= \relative {
  \global
  g4
  g4 g, g b
  c4 c b(e)
  d8. 16 8. 16 4 fis % 1b
  g4 e g r
  r4 g, g b
  d4 d e(a,) % 2a
  d8. 16 e8. d16 4 4
  g,2. r4
  g'2 e % 2b
  c2(b4 e)
  d4 4 8. 16 8. 16
  g2. r4 % 3a
  g2. g,8.-> 16->
  c4-> c-> b->(e)
  d8. 16 8. 16 4 4 % 3b
  g2. r4
  r4 g, g b
  c4 c b(bes) % 4a
  a8. 16 8. 16 d4 c
  b4(cis dis) fis
  e2->(d4) d % 4b
  c4 c b(e)
  d8. 16 cis8. d16 d4 d
  g,1
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\! s4-\markup \bold \italic {a tempo}
  s1-\markup \bold \italic {\dynamic p dolce} % 2b
  s1
  s2\p s\>
  s1\! % 3a
  s2.\p s4\mf
  s1
  s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
  s1\!
  s4 s2.-\markup \bold \italic {\dynamic p a little slower}
  s1 % 4a
  s1
  s1
  s1 % 4b
  s2.\> s4\!
  s1-\markup \bold \italic {rall. e dim.}
  s1
}

wordsBass = \lyricmode {
  It's me, it's me, it's me, O Lord,
  Stand -- in' in the need of prayer, of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
  Ah __ Ah __ Ah __
  Stand -- in' in the need of prayer.
  Ah __
  But it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer,
  It's me, it's me, O Lord,
  Stand -- in' in the need of prayer.
}

wordsBassMidi = \lyricmode {
  "It's " "me, " "it's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh "  "Ah "  "Ah " 
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
  "\nAh " 
  "\nBut " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer, "
  "\nIt's " "me, " "it's " "me, " "O " "Lord, "
  "\nStand" "in' " "in " "the " "need " "of " "prayer. "
}

pianoRH = \relative {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

dynamicsPianoAbove = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*10
  s2\p s\mf % 2b++
  s1 % 3a
  s2.\p s4\mf
  s1
  s1 % 3b
  s2. s4-\markup \bold \italic {\dynamic p a little slower}
  s1*8
}

dynamicsPianoBelow = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*12
  s2.\p s4\mf % 3a+
  s1*11
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s2\< s\! % 1b++
  s1 % 2a
  s4-\markup \bold \italic {poco rit.} s2.\>
  s2 \! s-\markup \bold \italic {\dynamic mf marcato}
  s1-\markup \bold \italic {\dynamic p dolce} % 2b
  s1
  s2\mf s\p\>
  s2.\! s4\mf % 3a
  s1
  s1
  s4-\markup \bold \italic {poco rit.} s8. s16\> s4 s\! % 3b
  s1
  s1
  s1 % 4a
  s1
  s2\< s\!
  s1 % 4b
  s4 s2.\>
  s1\!-\markup \bold \italic {rall. e dim.}
  s1
}

pianoLH = \relative {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Dynamics \dynamicsPianoAbove
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \partCombine \tenor \bass
          >>
          \new Dynamics \dynamicsPianoBelow
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "noacc"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
