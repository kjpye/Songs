\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold the Saviour of Mankind."
  subtitle    = "Sankey No. 151"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Stephen Jenks."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Wesley."
  meter       = \markup\smallCaps "c.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*6 s2
  \mark \markup { \box "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  bes2 d8[c]
  bes2 d4
  c4(bes) g
  f2 4
  bes2 d8[c] bes4.(c8) d4
  f2 \bar "|" \break f,4
  bes2 d8[c] % B
  bes2 d4
  c4(bes) g
  f2 f'4\fermata
  f4(d) bes8[c]
  d2 c4
  bes2
}

alto = \relative {
  \autoBeamOff
  d'4
  d2 f4
  f2 4
  ees2 4
  d2 f4
  f2 4
  f2 4
  f2 4
  f2 4 % B
  f2 4
  g2 ees4
  d2 f4\fermata
  bes4(f) f8[g]
  f2 ees4
  d2
}

tenor = \relative {
  \autoBeamOff
  bes4
  f2 bes8[a]
  g2 bes4
  bes2 a8[c]
  bes2 8[a]
  bes4.(a8) bes4
  a2 4
  bes2 8[a] % B
  bes2 4
  bes2 4
  bes2 4
  bes2 d4\fermata
  d4(bes) 4
  bes2 a4
  bes2
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes2 8[c]
  d2 bes4
  ees2 4
  bes2 f'8[ees]
  d2 bes8[c]
  d4.(c8) bes4
  f'2 4
  d2 bes8[c] % B
  d2 bes4
  ees2 4
  bes2 bes'4\fermata
  bes2 d,8[ees]
  f2 4
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold the Sa -- viour of man -- kind
  Nailed to the shame -- ful tree;
  How vast the love that Him in -- clined
  To bleed and die for thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hark, how He groans, while na -- ture shakes,
  And earth's strong pil -- lars bend;
  The tem -- ple's vail in sun -- der breaks,
  The sol -- id mar -- bles rend.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Tis done! the pre -- cious ran -- som's paid;
  "\"Re" -- vive My "soul!\"" He cries:
  See where He bows His sac -- red head—
  He bows His head and dies.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  But soon He'll break death's en -- vious chain,
  And in full glo -- ry shine:
  O Lamb of God, was ev -- er pain,
  Was ev -- er love, like Thine?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Be -- hold the Sa -- viour of man -- kind
  Nailed to the shame -- ful tree;
  How vast the love that Him in -- clined
  To bleed and die for thee!

  \set stanza = "2."
  Hark, how He groans, while na -- ture shakes,
  And earth's strong pil -- lars bend;
  The tem -- ple's vail in sun -- der breaks,
  The sol -- id mar -- bles rend.

  \set stanza = "3."
  'Tis done! the pre -- cious ran -- som's paid;
  "\"Re" -- vive My "soul!\"" He cries:
  See where He bows His sac -- red head—
  He bows His head and dies.

  \set stanza = "4."
  But soon He'll break death's en -- vious chain,
  And in full glo -- ry shine:
  O Lamb of God, was ev -- er pain,
  Was ev -- er love, like Thine?
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
