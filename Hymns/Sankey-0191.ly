\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Our Blest Redeemer, ere He Breathed."
  subtitle    = "Sankey No. 191"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. J. B. Dykes."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Harriet Auber."
  meter       = \markup\smallCaps "8.6.8.4."
  piece       = \markup\smallCaps "St. Cuthbert."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
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
  ees'4
  ees4. 8 f4 g
  aes4. 8 g4 bes
  ees4 g, g a
  bes2. \bar "|" \break aes4
  g4. 8 aes4 bes % B
  c4 4 bes g
  bes2. aes4
  g2.
}

alto = \relative {
  \autoBeamOff
  bes4
  bes4. ees8 4 4
  ees4. 8 4 ees8[d]
  ees4 4 4 4
  d2. 4
  bes4. ees8 4 des % B
  c4 d ees ees
  ees2 d
  ees2.
}

tenor = \relative {
  \autoBeamOff
  g4
  g4. 8 aes4 bes
  c4 4 bes g8[aes]
  bes4 4 4 c
  bes2. f4
  g4. bes8 c4 g % B
  aes4 4 bes bes
  g2 f4(bes)
  bes2.
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4. 8 4 4
  aes,4 4 ees' ees8[f]
  g4 ees c f
  bes,2. 4
  ees4. 8 4 4 % B
  aes4 f g ees
  bes2 2
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Our blest Re -- deem -- er, ere He breathed
  His ten -- der, last fare -- well,
  A Guide, a Com -- fort -- er be -- queath'd
  With us to dwell.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He came in sem -- blance of a dove,
  With shel -- t'ring wings out -- spread,
  The ho -- ly balm of peace and loev
  On earth to shed.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He came in tongues of liv -- ing flame,
  To teach, con -- vince, sub -- due;
  All- power -- ful as the wind He came—
  As view -- less too.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He comes sweet in -- fluence to im -- part,
  A gra -- cious, will -- ing Guest,
  While He can find one hum -- ble heart
  Where -- in to rest.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And His that gen -- tle voice we hear,
  Soft as the breath of even,
  That checks each fault, that calms each fear,
  And speaks of heaven.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  And ev -- ery vir -- tue we poss -- ess,
  And ev -- ery vic -- tory won,
  And ev -- ery thought of ho -- li -- ness,
  Are His a -- lone.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Spi -- rit of pur -- i -- ty and grace,
  Our weak -- ness pit -- ying see;
  Oh, make our hearts Thy dwell -- ing place,
  And Worth -- ier Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Our " "blest " Re deem "er, " "ere " "He " "breathed "
  "\nHis " ten "der, " "last " fare "well, "
  "\nA " "Guide, " "a " Com fort "er " be "queath'd "
  "\nWith " "us " "to " "dwell. "

  \set stanza = "2."
  "\nHe " "came " "in " sem "blance " "of " "a " "dove, "
  "\nWith " shel "t'ring " "wings " out "spread, "
  "\nThe " ho "ly " "balm " "of " "peace " "and " "loev "
  "\nOn " "earth " "to " "shed. "

  \set stanza = "3."
  "\nHe " "came " "in " "tongues " "of " liv "ing " "flame, "
  "\nTo " "teach, " con "vince, " sub "due; "
  "\nAll" power "ful " "as " "the " "wind " "He " "came— "
  "\nAs " view "less " "too. "

  \set stanza = "4."
  "\nHe " "comes " "sweet " in "fluence " "to " im "part, "
  "\nA " gra "cious, " will "ing " "Guest, "
  "\nWhile " "He " "can " "find " "one " hum "ble " "heart "
  "\nWhere" "in " "to " "rest. "

  \set stanza = "5."
  "\nAnd " "His " "that " gen "tle " "voice " "we " "hear, "
  "\nSoft " "as " "the " "breath " "of " "even, "
  "\nThat " "checks " "each " "fault, " "that " "calms " "each " "fear, "
  "\nAnd " "speaks " "of " "heaven. "

  \set stanza = "6."
  "\nAnd " ev "ery " vir "tue " "we " poss "ess, "
  "\nAnd " ev "ery " vic "tory " "won, "
  "\nAnd " ev "ery " "thought " "of " ho li "ness, "
  "\nAre " "His " a "lone. "

  \set stanza = "7."
  "\nSpi" "rit " "of " pur i "ty " "and " "grace, "
  "\nOur " weak "ness " pit "ying " "see; "
  "\nOh, " "make " "our " "hearts " "Thy " dwell "ing " "place, "
  "\nAnd " Worth "ier " "Thee. "
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
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass }
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass }
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
