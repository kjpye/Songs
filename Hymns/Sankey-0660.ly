\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When this Passing World."
  subtitle    = "Sankey No. 660"
  subsubtitle = "Sankey 880 No. 701"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. M. McCheyne"
  meter       = \markup\smallCaps "Six 7s."
  piece       = \markup\smallCaps "Aletta."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat unfold 2 { \textMark \markup { \box \bold "A" } s2.*8 }
  \textMark \markup { \box \bold "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 { a'4(c) f, | g2 4 | g(f) g | a2. | a4(c) f, | g2 4 | g(a) g | f2. | }
  bes2 4 a2 4 | g2 f4 | c'2. | 4(a) f | g2 4 | g(a) g | f2. |
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 { f'4(a) c, | e2 4 | 4(d) e | f2. | 4(a) c, | e2 4 | 2 c4 | 2. | }
  f2 4 | 2 4 | c2 d4 | e2. | f2 4 | e2 4 | <c e>2 4 | c2. |
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 { c'4(a) a | c2 4 | 2 4 | 2. | 4(a) a | c2 4 | bes(c) bes | a2. | }
  d2 4 | c2 4 | 2 b4 | << c2. \new Voice {\voiceOne \tiny c4 bes a}>> | a4(c) a | g2 bes4 | 4(c) bes | a2. |
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 { f2 4 | c2 4 | 2 4 | f2. | 2 4 | c2 4 | 2 4 | f2. | }
  f2 4 | 2 4 | e2 d4 | c2. | f2 4 | c2 4 | 2 4 | f2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  When this pass -- ing world is done,
  When has sunk yon ra -- diant sun,
  When the pearl -- y gate I gain,
  nev -- er to go out a -- gain;
  Then, Lord, shall I ful -- ly know—
  Not till then— how much I owe.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When I stand be -- fore the throne,
  Dressed in beau -- ty not my own;
  When I see Thee as Thou art,
  Love Thee with un -- sin -- ning heart:
  Then, Lord, shall I ful -- ly know—
  Not till then— how much I owe.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Cho -- sen, not for good in me,
  Weak -- en'd up from wrath to flee,
  Hid -- den in the Sa -- viour's side,
  By the Spi -- rit sanc -- ti -- fied:
  Teach me, Lord, on earth to show,
  By my love, how much I owe.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "this " pass "ing " "world " "is " "done, "
  "\nWhen " "has " "sunk " "yon " ra "diant " "sun, "
  "\nWhen " "the " pearl "y " "gate " "I " "gain, "
  "\nnev" "er " "to " "go " "out " a "gain; "
  "\nThen, " "Lord, " "shall " "I " ful "ly " "know— "
  "\nNot " "till " "then— " "how " "much " "I " "owe.\n"

  \set stanza = "2."
  "\nWhen " "I " "stand " be "fore " "the " "throne, "
  "\nDressed " "in " beau "ty " "not " "my " "own; "
  "\nWhen " "I " "see " "Thee " "as " "Thou " "art, "
  "\nLove " "Thee " "with " un sin "ning " "heart: "
  "\nThen, " "Lord, " "shall " "I " ful "ly " "know— "
  "\nNot " "till " "then— " "how " "much " "I " "owe.\n"

  \set stanza = "3."
  "\nCho" "sen, " "not " "for " "good " "in " "me, "
  "\nWeak" "en'd " "up " "from " "wrath " "to " "flee, "
  "\nHid" "den " "in " "the " Sa "viour's " "side, "
  "\nBy " "the " Spi "rit " sanc ti "fied: "
  "\nTeach " "me, " "Lord, " "on " "earth " "to " "show, "
  "\nBy " "my " "love, " "how " "much " "I " "owe. "
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

#(set-global-staff-size 20)

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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
