\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bless Me Now."
  subtitle    = "Sankey No. 491"
  subsubtitle = "Sankey 880 No. 120"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alexander Clark, D. D."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 f8 bes4 a8 | g4 f8 g4. | a4 bes8 c4 a8 | bes4 a8 g4. |
  a4 g8 f4 8 | g4 a8 bes4. | a4 f8 bes4 a8 | a4 g8 f4. |
  a4^\markup\smallCaps Refrain. bes8 c4. | g4 a8 bes4. | a4 g8 c4 a8 | a4 g8 f4. |
}

alto = \relative {
  \autoBeamOff
  f'4 c8 f4 8 | c4 d8 e4. | f4 e8 f4 8 | g4 f8 e4. |
  f4 e8 f4 8 | e4 f8 4. | 4 c8 f4 8 | 4 e8 f4. |
  f4 e8 f4. | e4 f8 e4. | f4 g8 a4 f8 | 4 e8 f4. |
}

tenor = \relative {
  \autoBeamOff
  c'4 a8 d4 c8 | c4 b8 c4. | c4 8 4 8 | 4 8 4. |
  c4 bes8 a4 8 | c4 8 d4. | c4 a8 d4 c8 | c4 bes8 a4. |
  c4 8 4. | 4 8 4. | 4 8 f4 c8 | c4 bes 8 a4. |
}

bass = \relative {
  \autoBeamOff
  f4 8 4 8 | e4 d8 c4. | f4 g8 a4 f8 | e4 f8 c4. |
  f4 c8 d4 8 | c4 f8 bes,4. | f'4 8 4 8 | c4 8 f4. |
  f4 g8 a4. | bes4 a8 g4. | f4 8 4 8 | c4 8 f4. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Bless me now! bless me now!
  Heaven -- ly Fa -- ther, bless me now!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Heaven -- ly Fa -- ther, bless me now,
  At the cross of Christ I bow;
  Take my guilt and grief a -- way,
  Hear and heal me now, I pray.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now, O Lrd, this ve -- ry hour,
  Send Thy grace and show Thy power;
  While I rest up -- on Thy word,
  Come and bless me now, O Lord!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now, just now, for Je -- sus' sake,
  Lift the clouds, the fet -- ters break;
  While I look, and as I cry,
  Touch and cleanse me ere I die.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Nev -- er did I so a -- dore
  Je -- sus Christ, Thy son, be -- fore;
  Now the time! and this the place!
  Gra -- cious Fa -- ther, show Thy grace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Heaven" "ly " Fa "ther, " "bless " "me " "now, "
  "\nAt " "the " "cross " "of " "Christ " "I " "bow; "
  "\nTake " "my " "guilt " "and " "grief " a "way, "
  "\nHear " "and " "heal " "me " "now, " "I " "pray. "
  "\nBless " "me " "now! " "bless " "me " "now! "
  "\nHeaven" "ly " Fa "ther, " "bless " "me " "now!\n"

  \set stanza = "2."
  "\nNow, " "O " "Lrd, " "this " ve "ry " "hour, "
  "\nSend " "Thy " "grace " "and " "show " "Thy " "power; "
  "\nWhile " "I " "rest " up "on " "Thy " "word, "
  "\nCome " "and " "bless " "me " "now, " "O " "Lord! "
  "\nBless " "me " "now! " "bless " "me " "now! "
  "\nHeaven" "ly " Fa "ther, " "bless " "me " "now!\n"

  \set stanza = "3."
  "\nNow, " "just " "now, " "for " Je "sus' " "sake, "
  "\nLift " "the " "clouds, " "the " fet "ters " "break; "
  "\nWhile " "I " "look, " "and " "as " "I " "cry, "
  "\nTouch " "and " "cleanse " "me " "ere " "I " "die. "
  "\nBless " "me " "now! " "bless " "me " "now! "
  "\nHeaven" "ly " Fa "ther, " "bless " "me " "now!\n"

  \set stanza = "4."
  "\nNev" "er " "did " "I " "so " a "dore "
  "\nJe" "sus " "Christ, " "Thy " "son, " be "fore; "
  "\nNow " "the " "time! " "and " "this " "the " "place! "
  "\nGra" "cious " Fa "ther, " "show " "Thy " "grace. "
  "\nBless " "me " "now! " "bless " "me " "now! "
  "\nHeaven" "ly " Fa "ther, " "bless " "me " "now! "
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
