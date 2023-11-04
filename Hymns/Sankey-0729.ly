\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We may not Climb the Heavenly Steeps."
  subtitle    = "Sankey No. 729"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "William V. Wallace."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John G. Whittier."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Serenity."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | 4. 8 aes g | 8. f16 4. 8 | bes4. f8 g aes | g2 \bar "|" \break
  bes4 | 4. 8 ees d | 8. c16 4. 8 | bes4. ees,8 g f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4. 8 8 8 | 8. 16 4. 8 | d4. 8 8 8 | ees2
  d4 | ees4. 8 8 f | 8. ees16 4. 8 | 4. 8 d d | ees2
}

tenor = \relative {
  \autoBeamOff
  bes4 | 4. b8 c bes | a8. 16 4. 8 | aes4. 8 g bes | 2
  aes4 | bes4. 8 8 b | bes8. c16 4. f,8 | g4. 8 bes aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 4. 8 8 8 | c8. 16 4. 8 | bes4. 8 8 8 | ees2
  f4 | g4. 8 8 8 | aes8. 16 4. aes,8 | bes4. 8 8 8 | ees2
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
  We may not climb the heaven -- ly steeps
  To bring the Lord Christ down;
  In vain we search the low -- est deeps,
  For Him no depths can drown.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  But warm, sweet, ten -- der, e -- ven yet
  A pre -- sent help is He;
  And faith has still its Ol -- i -- vet,
  And love its Gal -- i -- lee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The heal -- ing of His seam -- less dress
  Is by our beds of pain;
  We touch Him in life's throng and press,
  And we are whole a -- gain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Lord and Mas -- ter of us all,
  What -- e'er our name or sign,
  We own Thy sway, we hear Thy call,
  We test our lives by Thine!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "may " "not " "climb " "the " heaven "ly " "steeps "
  "\nTo " "bring " "the " "Lord " "Christ " "down; "
  "\nIn " "vain " "we " "search " "the " low "est " "deeps, "
  "\nFor " "Him " "no " "depths " "can " "drown.\n"

  \set stanza = "2."
  "\nBut " "warm, " "sweet, " ten "der, " e "ven " "yet "
  "\nA " pre "sent " "help " "is " "He; "
  "\nAnd " "faith " "has " "still " "its " Ol i "vet, "
  "\nAnd " "love " "its " Gal i "lee.\n"

  \set stanza = "3."
  "\nThe " heal "ing " "of " "His " seam "less " "dress "
  "\nIs " "by " "our " "beds " "of " "pain; "
  "\nWe " "touch " "Him " "in " "life's " "throng " "and " "press, "
  "\nAnd " "we " "are " "whole " a "gain.\n"

  \set stanza = "4."
  "\nO " "Lord " "and " Mas "ter " "of " "us " "all, "
  "\nWhat" "e'er " "our " "name " "or " "sign, "
  "\nWe " "own " "Thy " "sway, " "we " "hear " "Thy " "call, "
  "\nWe " "test " "our " "lives " "by " "Thine! "
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
