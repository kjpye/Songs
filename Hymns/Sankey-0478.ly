\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, my All!"
  subtitle    = "Sankey No. 478"
  subsubtitle = "Sankey 880 No. 340"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\italic "Arr. by" \smallCaps "T. E. Perkins."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 f g | aes4. bes8 c4 | ees,8.[aes16] f8.[aes16] g8.[bes16] | aes2. |
  ees4 f g | aes4. bes8 c4 | ees,8.[aes16] f8.[aes16] g8.[bes16] | aes2. |
  c4 4 4 | ees4. ees,8 4 | c'4 4 bes | aes4. g8 ees4 |
  ees'4 des8[c] bes[aes] | 4. bes8 c4 | ees,8.[aes16] f8.[aes16] g8.[bes16] | aes2. |
}

alto = \relative {
  \autoBeamOff
  c'4 des des | c4. des8 ees4 | c4 des des | c2. |
  c4 des des | c4. des8 ees4 | c des des | c2. |
  ees4 4 aes | g4. ees8 4 | 4 4 4 | c4. des8 c4 |
  ees4 4 des8[c] | f4. 8 ees4 | c des des | c2. |
}

tenor = \relative {
  \autoBeamOff
  aes4 4 ees | 4. 8 aes4 | 4 4 ees | 2. |
  aes4 4 ees | 4. 8 aes4 | 4 4 ees | 2. |
  aes4 4 4 | bes4. g8 4 | aes4 4 g | aes4. 8 4 |
  c4 g8[aes] g[aes] | aes4. 8 4 | 4 4 ees | 2. |
}

bass = \relative {
  \autoBeamOff
  aes,4 des bes | aes4. 8 4 | 4 des ees | aes,2. |
  aes4 des bes | aes4. 8 4 | 4 des ees | aes,2. |
  aes'4 4 4 | ees4. 8 4 | aes, c ees | f4. des8 aes4 |
  aes4 bes8[c] ees[f] | des4. 8 aes4 | 4 des ees | aes,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, at The mer -- cy -- seat
  Hum -- bly I fall;
  Plead -- ing Thy pro -- mise sweet,
  Lord, hear my call;
  Now let Thy work be -- gin;
  Oh, make me pure with -- in,
  Cleanse me from ev -- 'ry sin,
  Je -- sus, my all!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tears of re -- pen -- tant grief
  Si -- len -- tly fall;
  Help Thou mine un -- be -- lief,
  Hear Thou my call!
  Oh, how I pine for Thee!
  This all my hope, my plea:
  Je -- sus has died for me,
  Je -- sus my all!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hark! how the words of love
  Ten -- der -- ly fall;
  Ere in the realms a -- bove,
  Heard is my call:
  Now ev -- 'ry doubt has flown,
  Bro -- ken my heart of stone;
  Lord, I am Thine a -- lone:
  Je -- sus my all!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Still at Thy mer -- cy seat
  Hum -- bly I fall;
  Plead -- ing Thy pro -- mise sweet,
  Heard is my call;
  Faith wings my soul to Thee;
  This all my hope shall be—
  Je -- sus has died for me,
  Je -- sus my all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "at " "The " mer cy "seat "
  "\nHum" "bly " "I " "fall; "
  "\nPlead" "ing " "Thy " pro "mise " "sweet, "
  "\nLord, " "hear " "my " "call; "
  "\nNow " "let " "Thy " "work " be "gin; "
  "\nOh, " "make " "me " "pure " with "in, "
  "\nCleanse " "me " "from " ev "'ry " "sin, "
  "\nJe" "sus, " "my " "all!\n"

  \set stanza = "2."
  "\nTears " "of " re pen "tant " "grief "
  "\nSi" len "tly " "fall; "
  "\nHelp " "Thou " "mine " un be "lief, "
  "\nHear " "Thou " "my " "call! "
  "\nOh, " "how " "I " "pine " "for " "Thee! "
  "\nThis " "all " "my " "hope, " "my " "plea: "
  "\nJe" "sus " "has " "died " "for " "me, "
  "\nJe" "sus " "my " "all!\n"

  \set stanza = "3."
  "\nHark! " "how " "the " "words " "of " "love "
  "\nTen" der "ly " "fall; "
  "\nEre " "in " "the " "realms " a "bove, "
  "\nHeard " "is " "my " "call: "
  "\nNow " ev "'ry " "doubt " "has " "flown, "
  "\nBro" "ken " "my " "heart " "of " "stone; "
  "\nLord, " "I " "am " "Thine " a "lone: "
  "\nJe" "sus " "my " "all!\n"

  \set stanza = "4."
  "\nStill " "at " "Thy " mer "cy " "seat "
  "\nHum" "bly " "I " "fall; "
  "\nPlead" "ing " "Thy " pro "mise " "sweet, "
  "\nHeard " "is " "my " "call; "
  "\nFaith " "wings " "my " "soul " "to " "Thee; "
  "\nThis " "all " "my " "hope " "shall " "be— "
  "\nJe" "sus " "has " "died " "for " "me, "
  "\nJe" "sus " "my " "all! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
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
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
