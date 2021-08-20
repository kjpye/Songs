\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy Spirit, Lead us now."
  subtitle    = "Sankey No. 192"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John H. yates."
  meter       = \markup\smallCaps "7s."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
  \mark \markup { \box "C" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'2 bes4
  c2 a4
  a2 g4
  f2.
  bes2 a4
  d2 c4
  c2 b4
  c2.
  f,2 a4 % B
  c2 a4
  bes2 c4
  d2.
  c2 d4
  c2 a4
  a2 g4
  f2.
  c'2 d4 % C
  c2 a4
  c2 4
  a2.
  bes2 d4
  c2 f,4 a2 g4
  f2.
}

alto = \relative {
  \autoBeamOff
  f'2 g4
  a2 f4
  f2 e4
  f2.
  f2 4
  f2 4
  f2 4
  e2.
  f2 4 % B
  a2 f4
  f2 4
  f2.
  f2 4
  f2 4
  f2 e4
  f2.
  e2 4 % C
  f2 4
  g2 e4
  f2.
  f2 4
  f2 4
  f2 e4
  f2.
}

tenor = \relative {
  \autoBeamOff
  c'2 4
  f2 c4
  c2 bes4
  a2.
  d2 c4
  bes2 c4
  d2 g,4
  g2(bes4)
  a2 c4 % B
  f2 c4
  bes2 a4
  bes2.
  c2 bes4
  a2 c4
  c2 bes4
  a2.
  g2 bes4 % C
  a2 c4
  c2 4
  c2.
  bes2 4
  c2 a4
  c2 bes4
  a2.
}

bass = \relative {
  \autoBeamOff
  f2 4
  f2 4
  c2 4
  f2.
  f2 4
  bes2 a4
  g2 4
  c,2.
  f2 4 % B
  f2 4
  d2 c4
  bes2.
  a2 bes4
  c2 4
  c2 4
  f2.
  c2 4 % C
  f2 4
  e2 c4
  f2.
  d2 bes4
  a2 d4
  c2 4
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho -- ly Spi -- rit, lead us now
  Bold -- ly to the throne of grace;
  While our heads in prayer we bow,
  Let Thy pres -- ence fill this place;
  Ho -- ly Spi -- rit, Heav'n -- ly Guide,
  Lead us to the Cru -- ci -- fied!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  This is now our time of need,
  This is now the day of grace;
  Now our souls with man -- na feed,
  Ere we leave this sa -- cred place;
  Ho -- ly Spi -- rit, Heav'n -- ly Dove,
  Lead us to the feast of love!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  At the bles -- sed mer -- cy seat
  Peace and joy are free -- ly given;
  While we wait at Je -- sus' feet
  Make this place the gate of heaven;
  Ho -- ly Spi -- rit, Heav'n -- ly Friend,
  Now up -- on our hearts des -- cend!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Weak and sin -- ful though we be,
  Je -- sus' blood can cleanse from sin;
  At the foun -- tain full and free
  Wash and make us pure with -- in;
  Ho -- lyt Spi -- rit, Cleans -- ing Fire,
  Burn up ev -- ery base de -- sire!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho" "ly " Spi "rit, " "lead " "us " "now "
  "\nBold" "ly " "to " "the " "throne " "of " "grace; "
  "\nWhile " "our " "heads " "in " "prayer " "we " "bow, "
  "\nLet " "Thy " pres "ence " "fill " "this " "place; "
  "\nHo" "ly " Spi "rit, " Heav'n "ly " "Guide, "
  "\nLead " "us " "to " "the " Cru ci "fied! "

  \set stanza = "2."
  "\nThis " "is " "now " "our " "time " "of " "need, "
  "\nThis " "is " "now " "the " "day " "of " "grace; "
  "\nNow " "our " "souls " "with " man "na " "feed, "
  "\nEre " "we " "leave " "this " sa "cred " "place; "
  "\nHo" "ly " Spi "rit, " Heav'n "ly " "Dove, "
  "\nLead " "us " "to " "the " "feast " "of " "love! "

  \set stanza = "3."
  "\nAt " "the " bles "sed " mer "cy " "seat "
  "\nPeace " "and " "joy " "are " free "ly " "given; "
  "\nWhile " "we " "wait " "at " Je "sus' " "feet "
  "\nMake " "this " "place " "the " "gate " "of " "heaven; "
  "\nHo" "ly " Spi "rit, " Heav'n "ly " "Friend, "
  "\nNow " up "on " "our " "hearts " des "cend! "

  \set stanza = "4."
  "\nWeak " "and " sin "ful " "though " "we " "be, "
  "\nJe" "sus' " "blood " "can " "cleanse " "from " "sin; "
  "\nAt " "the " foun "tain " "full " "and " "free "
  "\nWash " "and " "make " "us " "pure " with "in; "
  "\nHo" "lyt " Spi "rit, " Cleans "ing " "Fire, "
  "\nBurn " "up " ev "ery " "base " de "sire! "
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
