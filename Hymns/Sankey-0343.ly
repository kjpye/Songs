\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Angels Hovering Round."
  subtitle    = "Sankey No. 343"
  subsubtitle = "Sankey 880 No. 55"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Old Melody, arr."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \slurDashed
  d'8.(16)
  g8(8) 4 4 4
  g2. 8.(16)
  b8(8) 4 4 4
  a2.  \bar "|" \break d,8.(16)
  g4.(fis8 g4) a % B
  b4.(a8 d4) c8[a]
  g2 a
  g2.
}

sopranoA = \relative {
  \autoBeamOff
  d'4
  g4 4 4 4
  g2. 4
  b4 4 4 4
  a2. \bar "|" \break d,4
  g4.(fis8 g4) a % B
  b4.(a8 d4) c8[a]
  g2 a
  g2.
}

sopranoB = \relative {
  \autoBeamOff
  d'8. 16
  g4    4 4 4
  g2. 8. 16
  b4 4 4 4
  a2. \bar "|" \break d,8. 16
  g4.(fis8 g4) a % B
  b4.(a8 d4) c8[a]
  g2 a
  g2.
}

sopranoC = \relative {
  \autoBeamOff
  d'4
  g8 8 4 4 4
  g2. 4
  b8 8 4 4 4
  a2. \bar "|" \break d,4
  g4.(fis8) g4 a % B
  b4.(a8) d4 c8[a]
  g2 a
  g2.
}

alto = \relative {
  \autoBeamOff
  \slurDashed b8.(c16)
  d8(8) 4 4 4
  d2. 8.(16)
  g8(8) 4 4 4
  fis2. d8.(16)
  d4.(8 4) fis % B
  g4.(fis8 g4) e
  d2 2
  d2.
}

altoA = \relative {
  \autoBeamOff
  b8.(c16)
  d4 4 4 4
  d2. 4
  g4 4 4 4
  fis2. d4
  d2. fis4 % B
  g4.(fis8 g4) e
  d2 2
  d2.
}

altoB = \relative {
  \autoBeamOff
  b8. c16
  d4 4 4 4
  d2. 8. 16
  g4 4 4 4
  fis2. d8. 16
  d4.(8 4) fis % B
  g4.(fis8 g4) e
  d2 2
  d2.
}

altoC = \relative {
  \autoBeamOff
  b8.(c16)
  d8 8 4 4 4
  d2. 4
  g8 8 4 4 4
  fis2. d4
  d4.(8) 4 fis % B
  g4.(fis8) g4 e
  d2 2
  d2.
}

tenor = \relative {
  \autoBeamOff
  \slurDashed g8.(a16)
  b8(8) 4 4 4
  b2. 8.(c16)
  d8(8) 4 4 4
  d2. 8.(c16)
  b4.(a8 b4) d % B
  d4.(8 4) e8[c]
  b2 \tuplet 3/2 {a4(b c)}
  b2.
}

tenorA = \relative {
  \autoBeamOff
  g4
  b4 4 4 4
  b2. 8.(c16)
  d4 4 4 4
  d2. 8.(c16)
  b4.(a8 b4) d % B
  d2. e8[c]
  b2 \tuplet 3/2 {a4(b c)}
  b2.
}

tenorB = \relative {
  \autoBeamOff
  g8. a16
  b4 4 4 4
  b2. 8. c16
  d4 4 4 4
  d2. 8.(c16)
  b4.(a8 b4) d % B
  d2. e8[c]
  b2 \tuplet 3/2 {a4(b c)}
  b2.
}

tenorC = \relative {
  \autoBeamOff
  g4
  b8 8 4 4 4
  b2. 4
  d8 8 4 4 4
  d2. 8.(c16)
  b4.(a8) b4 d % B
  d2 4 e8[c]
  b2 \tuplet 3/2 {a4(b c)}
  b2.
}

bass = \relative {
  \autoBeamOff
  \slurDashed d8.(16)
  g,8(8) 4 4 4
  g2. 8.(16)
  g'8(8) 4 4 4
  d2. 8.(16)
  g,4.(8 4) d' % B
  g4.(d8 b4) c
  d2 2
  g,2.
}

bassA = \relative {
  \autoBeamOff
  d4
  g,4 4 4 4
  g2. 4
  g'4 4 4 4
  d2. 4
  g,2. d'4 % B
  g4.(d8 b4) c
  d2 2
  g,2.
}

bassB = \relative {
  \autoBeamOff
  d8. 16
  g,4 4 4 4
  g2. 8. 16
  g'4 4 4 4
  d2. 8. 16
  g,2. d'4 % B
  g4.(d8 b4) c
  d2 2
  g,2.
}

bassC = \relative {
  \autoBeamOff
  d4
  g,8 8 4 4 4
  g2. 4
  g'8 8 4 4 4
  d2. 4
  g,2. d'4 % B
  g4.(d8 b4) c
  d2 2
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 9

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom There are \yesm an -- gels hov -- 'ring round,
  \nom There are \yesm an -- gels hov -- 'ring round,
  \nom There are \yesm an -- gels, an -- gels hov -- 'ring round.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To \nom car -- ry \yesm the ti -- dings home,
  To \nom car -- ry \yesm the ti -- dings home,
  To \nom car _ -- ry, to car _ -- ry \yesm the ti -- dings home,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom To the \yesm new Je -- ru -- sa -- lem,
  \nom To the \yesm new Je -- ru -- sa -- lem,
  \nom To the \yesm new, the new Je -- ru -- sa -- lem,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Poor \nom sin -- ners \yesm are com -- ing home,
  Poor \nom sin -- ners \yesm are com -- ing home,
  Poor \nom sin _ -- ners, poor sin _ -- ners \yesm are com -- ing home,
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And Je -- sus bids them come,
  And Je -- sus bids them come,
  And Je -- sus, Je -- sus bids them come,
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  And child -- ren too may come,
  And child -- ren too may come,
  And child -- ren, child -- ren too may come,
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  All heaven is full of joy,
  All heaven is full of joy,
  All heaven, all heaven is full of joy,
}
  
wordsEight = \lyricmode {
  \set stanza = "8."
  For Je -- sus loves to save,
  For Je -- sus loves to save,
  For Je -- sus, Je -- sus loves to save,
}
  
wordsNine = \lyricmode {
  \set stanza = "9."
  Come, child -- ren, trust Him now,
  Come, child -- ren, trust Him now,
  Come, child -- ren, child -- ren, trust Him now,
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  There are an -- gels hov -- 'ring round,
  There are an -- gels hov -- 'ring round,
  There are an -- gels, an -- gels hov -- 'ring round.

  \set stanza = "2."
  To car -- ry the ti -- dings home,
  To car -- ry the ti -- dings home,
  To car -- ry, to car -- ry the ti -- dings home,

  \set stanza = "3."
  To the new Je -- ru -- sa -- lem,
  To the new Je -- ru -- sa -- lem,
  To the new, the new Je -- ru -- sa -- lem,

  \set stanza = "4."
  Poor sin -- ners are com -- ing home,
  Poor sin -- ners are com -- ing home,
  Poor sin -- ners, poor sin -- ners are com -- ing home,

  \set stanza = "5."
  And Je -- sus bids them come,
  And Je -- sus bids them come,
  And Je -- sus, Je -- sus bids them come,

  \set stanza = "6."
  And child -- ren too may come,
  And child -- ren too may come,
  And child -- ren, child -- ren too may come,

  \set stanza = "7."
  All heaven is full of joy,
  All heaven is full of joy,
  All heaven, all heaven is full of joy,

  \set stanza = "8."
  For Je -- sus loves to save,
  For Je -- sus loves to save,
  For Je -- sus, Je -- sus loves to save,

  \set stanza = "9."
  Come, child -- ren, trust Him now,
  Come, child -- ren, trust Him now,
  Come, child -- ren, child -- ren, trust Him now,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "are " an "gels " hov "'ring " "round, "
  "\nThere " "are " an "gels " hov "'ring " "round, "
  "\nThere " "are " an "gels, " an "gels " hov "'ring " "round. "

  \set stanza = "2."
  "\nTo " car "ry " "the " ti "dings " "home, "
  "\nTo " car "ry " "the " ti "dings " "home, "
  "\nTo " car "ry, " "to " car "ry " "the " ti "dings " "home, "

  \set stanza = "3."
  "\nTo " "the " "new " Je ru sa "lem, "
  "\nTo " "the " "new " Je ru sa "lem, "
  "\nTo " "the " "new, " "the " "new " Je ru sa "lem, "

  \set stanza = "4."
  "\nPoor " sin "ners " "are " com "ing " "home, "
  "\nPoor " sin "ners " "are " com "ing " "home, "
  "\nPoor " sin "ners, " "poor " sin "ners " "are " com "ing " "home, "

  \set stanza = "5."
  "\nAnd " Je "sus " "bids " "them " "come, "
  "\nAnd " Je "sus " "bids " "them " "come, "
  "\nAnd " Je "sus, " Je "sus " "bids " "them " "come, "

  \set stanza = "6."
  "\nAnd " child "ren " "too " "may " "come, "
  "\nAnd " child "ren " "too " "may " "come, "
  "\nAnd " child "ren, " child "ren " "too " "may " "come, "

  \set stanza = "7."
  "\nAll " "heaven " "is " "full " "of " "joy, "
  "\nAll " "heaven " "is " "full " "of " "joy, "
  "\nAll " "heaven, " "all " "heaven " "is " "full " "of " "joy, "

  \set stanza = "8."
  "\nFor " Je "sus " "loves " "to " "save, "
  "\nFor " Je "sus " "loves " "to " "save, "
  "\nFor " Je "sus, " Je "sus " "loves " "to " "save, "

  \set stanza = "9."
  "\nCome, " child "ren, " "trust " "Him " "now, "
  "\nCome, " child "ren, " "trust " "Him " "now, "
  "\nCome, " child "ren, " child "ren, " "trust " "Him " "now, "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \sopranoB
                         \sopranoC
                         \sopranoB
                         \sopranoC
                         \sopranoA
                         \sopranoA
                         \sopranoA
                         \sopranoA
                         \sopranoA
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \altoB
                         \altoC
                         \altoB
                         \altoC
                         \altoA
                         \altoA
                         \altoA
                         \altoA
                         \altoA
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \tenorB
                         \tenorC
                         \tenorB
                         \tenorC
                         \tenorA
                         \tenorA
                         \tenorA
                         \tenorA
                         \tenorA
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \bassB
                         \bassC
                         \bassB
                         \bassC
                         \bassA
                         \bassA
                         \bassA
                         \bassA
                         \bassA
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
            \new Lyrics \lyricsto "aligner"   \wordsEight
            \new Lyrics \lyricsto "aligner"   \wordsNine
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff

          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \sopranoB
                                         \sopranoC
                                         \sopranoB
                                         \sopranoC
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                       }
            \new Voice \partCombine
            { \global
              \sopranoB
              \sopranoC
              \sopranoB
              \sopranoC
              \sopranoA
              \sopranoA
              \sopranoA
              \sopranoA
              \sopranoA
              \bar "|."
            }
            { \global
              \altoB \nl
              \altoC \nl
              \altoB \nl
              \altoC \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \tenorB
                                              \tenorC
                                              \tenorB
                                              \tenorC
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                            }
            { \global
              \bassB
              \bassC
              \bassB
              \bassC
              \bassA
              \bassA
              \bassA
              \bassA
              \bassA
            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff

          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \sopranoB
                                         \sopranoC
                                         \sopranoB
                                         \sopranoC
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                         \sopranoA
                                       }
            \new Voice \partCombine
            { \global
              \sopranoB
              \sopranoC
              \sopranoB
              \sopranoC
              \sopranoA
              \sopranoA
              \sopranoA
              \sopranoA
              \sopranoA
              \bar "|."
            }
            { \global
              \altoB \nl
              \altoC \nl
              \altoB \nl
              \altoC \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \altoA \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \tenorB
                                              \tenorC
                                              \tenorB
                                              \tenorC
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                              \tenorA
                                            }
            { \global
              \bassB
              \bassC
              \bassB
              \bassC
              \bassA
              \bassA
              \bassA
              \bassA
              \bassA
            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
