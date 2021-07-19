\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Soft the Bells Are Ringing."
  subtitle    = "Sankey No. 148"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Eliza M. Sherman."
  meter       = \markup\smallCaps "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 a8 g4 8
  g4 a8 g4 8
  g4 c8 g4 a8
  e4 g8 4. % B
  g4 bes8 a4 8
  a4 c8 b4 8
  b4 d8 c4 e8 % C
  e4 e,8 4. \bar "||"
  g4^\markup\smallCaps Refrain. e'8 d4 a8
  b4 d8 c4 g8 % D
  a4 c8 g4 c8
  c8[b] c d4.
  e4 8 d4 g,8 % E
  c4 8 b4 e,8
  a4 8 g8[c] f
  e4 d8 c4.
}

alto = \relative {
  \autoBeamOff
  e'4 8 4 8
  f4 8 4 8
  g4 e8 g4 e8
  c4 e8 f4. % B
  e4 8 f4 g8
  fis4 8 g4 a8
  gis4 8 a4 8 % C
  gis4 e8 4.
  e4 g8 f4 8
  f4 8 e4 8 % D
  f4 8 g4 8
  fis4 8 f4.
  g4 8 f4 8 % E
  e4 8 4 d8
  c4 f8 g4 a8
  g4 f8 e4.
}

tenor = \relative {
  \autoBeamOff
  c'4 8 4 ais8
  b4 8 4 8
  c4 8 4 g8
  a4 c8 d4. % B
  c4 8 4 cis8
  d4 8 4 dis8
  e4 8 4 c8 % C
  b4 << {e,8 e4.} \new Voice {\voiceThree \teeny gis8 4.} >> \normalsize
  bes4 8 a4 8
  aes4 8 g4 c8 % D
  c4 a8 c4 8
  a4 8 c4(b8)
  c4 8 b4 8 % E
  a4 8 gis4 8
  a4 c8 4 8
  c4 b8 c4.
}

bass = \relative {
  \autoBeamOff
  c4 g8 c4 cis8
  d4 g,8 e'4 dis8
  e4 <g, g'>8 e'4 c8
  a4 8 b4. % B
  c4 8 f4 e8
  d4 8 g4 f8
  e4 8 a4 8 % C
  e4 8 4.
  c4 8 4 8
  c4 8 4 8 % D
  f4 8 e4 8
  d4 8 g4.
  c4 8 g4 8 % E
  a4 8 e4 8
  f4 8 e4 d8
  g4 8 c,4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sweet -- ly, soft -- ly sounds the an -- them,
  For the stone is roll'd a -- way;
  Glo -- ry, hon -- our give to Je -- sus
  On this re -- sur -- rec -- tion day!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Soft and sweet the bells are ring -- ing
  From the stee -- ple old and grey;
  Sweet and soft the chil -- dren sing -- ing—
  Christ the Lord a -- rose to -- day!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sweet -- er far than earth -- ly mu -- sic,
  Since the Christ -- mas mel -- o -- dy,
  Is this song of Eas -- ter glo -- ry.
  This glad psalm of vic -- to -- ry.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Love's re -- deem -- ign work is fin -- ish'd,
  Fought the fight, the vic -- t'ry won;
  Glo -- ry, glo -- ry in the high -- est,
  To the Fa -- ther and the Son!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Soft and sweet the bells are ring -- ing
  From the stee -- ple old and grey;
  Sweet and soft the chil -- dren sing -- ing—
  Christ the Lord a -- rose to -- day!
  Sweet -- ly, soft -- ly sounds the an -- them,
  For the stone is roll'd a -- way;
  Glo -- ry, hon -- our give to Je -- sus
  On this re -- sur -- rec -- tion day!

  \set stanza = "2."
  Sweet -- er far than earth -- ly mu -- sic,
  Since the Christ -- mas mel -- o -- dy,
  Is this song of Eas -- ter glo -- ry.
  This glad psalm of vic -- to -- ry.
  Sweet -- ly, soft -- ly sounds the an -- them,
  For the stone is roll'd a -- way;
  Glo -- ry, hon -- our give to Je -- sus
  On this re -- sur -- rec -- tion day!

  \set stanza = "3."
  Love's re -- deem -- ign work is fin -- ish'd,
  Fought the fight, the vic -- t'ry won;
  Glo -- ry, glo -- ry in the high -- est,
  To the Fa -- ther and the Son!
  Sweet -- ly, soft -- ly sounds the an -- them,
  For the stone is roll'd a -- way;
  Glo -- ry, hon -- our give to Je -- sus
  On this re -- sur -- rec -- tion day!
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
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
