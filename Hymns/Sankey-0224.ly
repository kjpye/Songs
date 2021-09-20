\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rejoice and be Glad!"
  subtitle    = "Sankey No. 224"
  subsubtitle = "Sankey 880 No. 73"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "English Air."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar. D.D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  g4 4 4
  g2 8 a
  b4 4 4
  b2 g8[b]
  d4 4 4
  e4 d b % B
  b4 a a
  a2 \bar "||" d8^\markup\smallCaps Chorus. 8
  e4 d b8 a
  g4 4 d'
  e4 d b % C
  a2 d8 8
  e4 d b8 a
  g4 4 b
  c4 b a
  g2
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 4 4
  d2 8 8
  d4 4 4
  d2 4
  g4 4 4
  g4 4 d % B
  d4 4 4
  d2 g8 8
  c,4 d4 8 8
  g,4 4 g'
  c,4 d d % C
  d2 g8 8
  c,4 d4 8 8
  g,4 4 4
  c4 d d
  g,2
}

tenor = \relative {
  \autoBeamOff
  b4
  b4 4 4
  b2 e8 c
  b4 g g
  g2 b4
  b4 4 4
  c4 b b % B
  g4 fis fis
  fis2 b8 8
  c4 b g8 8
  b4 4 4
  c4 b g % C
  fis2 b8 8
  c4 b g8 a
  b4 4 4
  a4 b c
  b2
}

bass = \relative {
  \autoBeamOff
  g4
  g4 d b
  g2 b'8 a
  g4 d b
  g2 g'4
  g4 4 4
  g4 4 4 % B
  d4 4 4
  d2 g8 8
  c,4 d4 8 8
  g,4 4 g'
  c,4 d d % C
  d2 g8 8
  c,4 d4 8 8
  g,4 4 4
  c4 d d
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sound His prais -- es, tell the sto -- ry of Him who was slain!
  Sound His prais -- es, tell with glad -- ness He liv -- eth a -- gain!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- joice and be glad! the Re -- deem -- er has come!
  Go look on His cra -- dle, His cross, and His tomb.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- joice and be glad! it is sun -- shine at last!
  The clouds have de -- part -- ed, the sha -- dows are past.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- joice and be glad! for the blood hath been shed;
  Re -- demp -- tion is fin -- ished, the price hath been paid.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- joice and be glad! now the par -- don is free!
  The Just for the un -- just has died on the tree.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Re -- joice and be glad! for the Lamb that was salin
  O'er death is tru -- um -- phant, and liv -- eth a -- gain.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Re -- joice and be glad! For our King is on high;
  He plead -- eth for us on His throne in the sky.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Re -- joice and be glad! for He com -- eth a -- gain;
  He com -- eth in glo -- ry, the Lamb that was slain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "joice " "and " "be " "glad! " "the " Re deem "er " "has " "come! "
  "\nGo " "look " "on " "His " cra "dle, " "His " "cross, " "and " "His " "tomb. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "2."
  "\nRe" "joice " "and " "be " "glad! " "it " "is " sun "shine " "at " "last! "
  "\nThe " "clouds " "have " de part "ed, " "the " sha "dows " "are " "past. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "3."
  "\nRe" "joice " "and " "be " "glad! " "for " "the " "blood " "hath " "been " "shed; "
  "\nRe" demp "tion " "is " fin "ished, " "the " "price " "hath " "been " "paid. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "4."
  "\nRe" "joice " "and " "be " "glad! " "now " "the " par "don " "is " "free! "
  "\nThe " "Just " "for " "the " un "just " "has " "died " "on " "the " "tree. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "5."
  "\nRe" "joice " "and " "be " "glad! " "for " "the " "Lamb " "that " "was " "salin "
  "\nO'er " "death " "is " tru um "phant, " "and " liv "eth " a "gain. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "6."
  "\nRe" "joice " "and " "be " "glad! " "For " "our " "King " "is " "on " "high; "
  "\nHe " plead "eth " "for " "us " "on " "His " "throne " "in " "the " "sky. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "

  \set stanza = "7."
  "\nRe" "joice " "and " "be " "glad! " "for " "He " com "eth " a "gain; "
  "\nHe " com "eth " "in " glo "ry, " "the " "Lamb " "that " "was " "slain. "
  "\nSound " "His " prais "es, " "tell " "the " sto "ry " "of " "Him " "who " "was " "slain! "
  "\nSound " "His " prais "es, " "tell " "with " glad "ness " "He " liv "eth " a "gain! "
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
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
