\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Pass Me Not!"
  subtitle    = "Sankey No. 488"
  subsubtitle = "Sankey 880 No. 63"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4. bes8 aes8. g16 aes8. f16 | ees2 aes | bes4. 8 aes4 bes | c2. r4 |
  c4. bes8 aes8. g16 aes8. f16 | ees2 aes | bes4. aes8 c4-! bes-! | aes2. r4 \break |
  ees'2^\markup\smallCaps Chorus. c | bes4.(aes8) f2 | ees4 aes c aes | bes2. r4 |
  c4. bes8 aes8. g16 aes8. f16 | ees2 aes | bes4. aes8 c4-! bes-! | aes2. r4 |
  
}

alto = \relative {
  \autoBeamOff
  ees'4. 8 f8. e16 f8. des16 | c2 ees | 4. 8 4 4 | 2. r4 |
  ees4. 8 f8. e16 f8. des16 | c2 ees | 4. 8 4-! des-! | c2. r4 |
  aes'2 2 | f2 des | c4 4 ees ees | 2. r4 |
  ees4. 8 f8. e16 f8. des16 | c2 ees | 4. 8 4-! des-! | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes4. 8 8. 16 des8. aes16 | 2 c | des4. c8 aes4-! g-! | aes2. r4 |
  aes4. 8 8. 16 d8. aes16 | aes2 c | des4. c8 aes4-! g-! | aes2. r4 |
  c2 ees | des aes | 4 4 4 4 | g2. r4 |
  aes4. 8 8. 16 des8. aes16 | 2 c | des4. c8 aes4-! g-! | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,4. c8 des8. 16 8. 16 | aes2 2 | ees'4. 8 4 4 | aes,2. r4 |
  aes4. c8 des8. 16 8. 16 | aes2 2 | ees'4. 8 4-! 4-! | aes,2. r4 |
  aes'2 2 | des, des | aes4 4 4 c | ees2. r4 |
  aes,4. c8 des8. 16 8. 16 | aes2 2 | ees'4. 8 4-! 4-! | aes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sa -- viour, Sa -- viour, hear my hum -- ble cry;
  And while o -- thers Thou art call -- ing
  Do not pass me by.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Pass me not, O gen -- tle Sa -- viour,
  Hear my hum -- ble cry;
  While on o -- thers Thou art call -- ing,
  Do not pass me by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let me at a throne of mer -- cy
  Find a sweet re -- lief;
  Kneel -- ing there in deep con -- tri -- tion,
  Help me un -- be -- lief. 
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trust -- ing on -- ly in Thy me -- rit,
  Would I seek Thy face;
  Heal my woun -- ded, bro -- ken spi -- rit,
  Save me by Thy grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou the spring of all my com -- fort,
  More than life to me;
  Whom have I on earth be -- side Thee?
  Whom in heaven but Thee?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pass " "me " "not, " "O " gen "tle " Sa "viour, "
  "\nHear " "my " hum "ble " "cry; "
  "\nWhile " "on " o "thers " "Thou " "art " call "ing, "
  "\nDo " "not " "pass " "me " "by. "
  "\nSa" "viour, " Sa "viour, " "hear " "my " hum "ble " "cry; "
  "\nAnd " "while " o "thers " "Thou " "art " call "ing "
  "\nDo " "not " "pass " "me " "by.\n"

  \set stanza = "2."
  "\nLet " "me " "at " "a " "throne " "of " mer "cy "
  "\nFind " "a " "sweet " re "lief; "
  "\nKneel" "ing " "there " "in " "deep " con tri "tion, "
  "\nHelp " "me " un be "lief. " 
  "\nSa" "viour, " Sa "viour, " "hear " "my " hum "ble " "cry; "
  "\nAnd " "while " o "thers " "Thou " "art " call "ing "
  "\nDo " "not " "pass " "me " "by.\n"

  \set stanza = "3."
  "\nTrust" "ing " on "ly " "in " "Thy " me "rit, "
  "\nWould " "I " "seek " "Thy " "face; "
  "\nHeal " "my " woun "ded, " bro "ken " spi "rit, "
  "\nSave " "me " "by " "Thy " "grace. "
  "\nSa" "viour, " Sa "viour, " "hear " "my " hum "ble " "cry; "
  "\nAnd " "while " o "thers " "Thou " "art " call "ing "
  "\nDo " "not " "pass " "me " "by.\n"

  \set stanza = "4."
  "\nThou " "the " "spring " "of " "all " "my " com "fort, "
  "\nMore " "than " "life " "to " "me; "
  "\nWhom " "have " "I " "on " "earth " be "side " "Thee? "
  "\nWhom " "in " "heaven " "but " "Thee? "
  "\nSa" "viour, " Sa "viour, " "hear " "my " hum "ble " "cry; "
  "\nAnd " "while " o "thers " "Thou " "art " call "ing "
  "\nDo " "not " "pass " "me " "by. "
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
