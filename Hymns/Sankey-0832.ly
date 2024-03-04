\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In a Little While we're going Home."
  subtitle    = "Sankey No. 832"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. E. Hewitt."
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

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3 s2.
  \textMark \markup { \box \bold "E" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 f | a4 4 4 g8 f | a8 f f d c4 f8 g | a c c d \bar "|" \break
  c4 a | g2. 8 a | bes4 4 4 a8 g | a a a a a4 g8 f |
  g8 8 8 8 f4 e | f2.
  \section \sectionLabel \markup\smallCaps Chorus.
  f8 8 | e g8 2 8 8 |
  f8 a8 2 8 bes | c4. 8 bes4 a | g2. a8 bes | c4 4 4 \bar "|" \break
  bes8 a | d d d d f4\fermata f,8 g | a c c bes a4 g | f2.
}

alto = \relative {
  \autoBeamOff
  c'8 8 | f4 4 4 c8 8 | f c c bes c4 8 8 | f f f f
  f4 4 | e2. 8 f | g4 4 4 f8 e | f8 8 8 8 4 c8 8 |
  d8 8 8 8 c4 4 | 2. \section \apart r4 | c8 e8 8 8 4 r |
  c8 f8 8 8 4 \auto 8 8 | 4. 8 e4 f | e2. f8 8 | 4 4 4
  f8 8 | 8 8 8 8 4\fermata 8 8 | 8 8 8 8 4 e | c2.
}

tenor = \relative {
  \autoBeamOff
  a8 8 | c4 4 4 bes8 a | c a a bes a4 8 bes | c a a bes
  a4 c | 2. 8 8 | 4 4 4 8 8 | 8 8 8 8 4 bes8 a |
  bes8 8 8 8 a4 g | a2. \section 8 8 | g bes8 2 8 8 |
  a8 c8 2 8 8 | 4. 8 4 4 | 2. 8 8 | a4 4 4
  d8 c | bes8 8 8 8 d4_\fermata 8 8 | c a a d c4 bes | a2.
}

bass = \relative {
  \autoBeamOff
  f8 8 | 4 4 4 8 8 | 8 8 8 8 4 8 8 | 8 8 8 8
  f4 4 | c2. 8 8 | 4 4 4 8 8 | f8 8 8 8 4 8 8 |
  bes,8 8 8 8 c4 4 | f2. \section \apart r4 | c8 8 8 8 4 r |
  f8 8 8 8 4 \auto 8 g | a4. 8 g4 f | c2. f8 8 | f4 4 4
  f8 8 | bes,8 8 8 8 4_\fermata b8 8 | c8 8 8 8 4 4 | f2.
}

acc = \relative {
  \vf
  s4 | s1*11 |
  \tiny c4 e8 g c bes a g |
  s1*3 | s2.
}

chorus = \lyricmode {
  In a lit -- tle while, __
  In a lit -- tle while __
  We shall cross the bil -- low's foam;
  We shall meet at last.
  When the storm -- y winds are past—
  In a lit -- tle while we're go -- ing home.
}

chorusMen = \lyricmode {
  \repeat unfold 42 \skip 1
  In a lit -- tle while,
  In a lit -- tle while
  \repeat unfold 28 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Let us sing a song that will cheer us by the way—
  In a lit -- tle while we're go -- ing home:
  For the night will end in the ev -- er -- last -- ing day—
  In a lit -- tle while we're go -- ing home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We will do the work that our hands may find to do—
  In a lit -- tle while we're go -- ing home:
  And the grace of God will our dai -- ly strength re -- new—
  In a lit -- tle while we're go -- ing home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We will smooth the path for some wea -- ry way- worn feet—
  In a lit -- tle while we're go -- ing home:
  Oh, may lov -- ing hearts spread a -- round an in -- fluence sweet!
  In a lit -- tle while we're go -- ing home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There's a rest be -- yond, there's re -- lief from ev -- 'ry care—
  In a lit -- tle while we're go -- ing home:
  And no tears shall fall in that ci -- ty bright and fair—
  In a lit -- tle while we're go -- ing home,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Let " "us " "sing " "a " "song " "that " "will " "cheer " "us " "by " "the " "way— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home: "
  "\nFor " "the " "night " "will " "end " "in " "the " ev er last "ing " "day— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home. "
  "\nIn " "a " lit "tle " "while, " 
  "\nIn " "a " lit "tle " "while " 
  "\nWe " "shall " "cross " "the " bil "low's " "foam; "
  "\nWe " "shall " "meet " "at " "last. "
  "\nWhen " "the " storm "y " "winds " "are " "past— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home.\n"

  \set stanza = "2."
  "\nWe " "will " "do " "the " "work " "that " "our " "hands " "may " "find " "to " "do— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home: "
  "\nAnd " "the " "grace " "of " "God " "will " "our " dai "ly " "strength " re "new— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home. "
  "\nIn " "a " lit "tle " "while, " 
  "\nIn " "a " lit "tle " "while " 
  "\nWe " "shall " "cross " "the " bil "low's " "foam; "
  "\nWe " "shall " "meet " "at " "last. "
  "\nWhen " "the " storm "y " "winds " "are " "past— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home.\n"

  \set stanza = "3."
  "\nWe " "will " "smooth " "the " "path " "for " "some " wea "ry " way "worn " "feet— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home: "
  "\nOh, " "may " lov "ing " "hearts " "spread " a "round " "an " in "fluence " "sweet! "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home. "
  "\nIn " "a " lit "tle " "while, " 
  "\nIn " "a " lit "tle " "while " 
  "\nWe " "shall " "cross " "the " bil "low's " "foam; "
  "\nWe " "shall " "meet " "at " "last. "
  "\nWhen " "the " storm "y " "winds " "are " "past— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home.\n"

  \set stanza = "4."
  "\nThere's " "a " "rest " be "yond, " "there's " re "lief " "from " ev "'ry " "care— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home: "
  "\nAnd " "no " "tears " "shall " "fall " "in " "that " ci "ty " "bright " "and " "fair— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home, "
  "\nIn " "a " lit "tle " "while, " 
  "\nIn " "a " lit "tle " "while " 
  "\nWe " "shall " "cross " "the " bil "low's " "foam; "
  "\nWe " "shall " "meet " "at " "last. "
  "\nWhen " "the " storm "y " "winds " "are " "past— "
  "\nIn " "a " lit "tle " "while " "we're " go "ing " "home. "
}


\book {
  \paper {
    output-suffix = midi-st
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \new Voice { \repeat unfold \verses \acc }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-ab
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \new Voice { \repeat unfold \verses \acc }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new Voice \acc
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerA \chorusMen
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new Voice {\repeat unfold \verses \acc}
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerA { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
