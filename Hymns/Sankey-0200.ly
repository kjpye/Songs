\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Descend, O Flame!"
  subtitle    = "Sankey No. 200"
  subsubtitle = "C.C. No. 128"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "l.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key aes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8 bes c
  aes4. g8 f aes
  ees4. aes8 g aes
  bes4. 8 aes bes
  c4. \bar "|" \break c8 bes c
  aes4. g8 f aes % B
  ees4. 8 f g
  aes8 des c4 bes
  aes4.
}

alto = \relative {
  \autoBeamOff
  ees'8 des ees
  c4. ees8 des des
  c4. ees8 8 8
  g4. 8 aes ees
  ees4. 8 des ees
  c4. ees8 des des % B
  c4. 8 des ees
  ees8 f ees4 des
  c4.
}

tenor = \relative {
  \autoBeamOff
  aes8 8 8
  aes4. g8 f aes
  aes4. c8 des c
  ees4. des8 c g
  aes4. 8 8 8
  ees4. aes8 8 8 % B
  aes4. 8 8 bes
  aes8 8 4 g
  aes4.
}

bass = \relative {
  \autoBeamOff
  aes,8 8 8
  aes4. c8 des f
  aes4. 8 bes aes
  ees4. 8 8 8
  aes,4. 8 8 8
  aes4. c8 des f % B
  aes4. aes,8 des des
  c8 des ees4 4
  aes,4.

}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  De -- scend, O Flame of sa -- cred fire;
  Now may we feel Thy quick -- 'ning power;
  To pur -- est love each heart in -- spire,
  And keep us in each try -- ing hour.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come like a rush -- ing wind, we pray,
  And let Thy pre -- sence fill this place;
  Oh, take our un -- be -- lief a -- way,
  Bap -- tize us with Thy bound -- less grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come down from heav'n, O quench -- less Flame,
  Thro' Christ, the Ev -- er -- last -- ing Son;
  The rich -- es of His love pro -- claim,
  And melt our ev -- 'ry heart in one.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "De" "scend, " "O " "Flame " "of " sa "cred " "fire; "
  "\nNow " "may " "we " "feel " "Thy " quick "'ning " "power; "
  "\nTo " pur "est " "love " "each " "heart " in "spire, "
  "\nAnd " "keep " "us " "in " "each " try "ing " "hour. "

  \set stanza = "2."
  "\nCome " "like " "a " rush "ing " "wind, " "we " "pray, "
  "\nAnd " "let " "Thy " pre "sence " "fill " "this " "place; "
  "\nOh, " "take " "our " un be "lief " a "way, "
  "\nBap" "tize " "us " "with " "Thy " bound "less " "grace. "

  \set stanza = "3."
  "\nCome " "down " "from " "heav'n, " "O " quench "less " "Flame, "
  "\nThro' " "Christ, " "the " Ev er last "ing " "Son; "
  "\nThe " rich "es " "of " "His " "love " pro "claim, "
  "\nAnd " "melt " "our " ev "'ry " "heart " "in " "one. "
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
    system-system-spacing.basic-distance = #15
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
          \new Staff = alto
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
