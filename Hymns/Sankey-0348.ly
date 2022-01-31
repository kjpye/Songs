\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Why Waitest thou?"
  subtitle    = "Sankey No. 348"
%  subsubtitle = "Sankey 880 No. Y"
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
  meter       = \markup\smallCaps "8.8.8.6."
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*2 s2.
  \mark \markup { \box "E" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  ees4 c' c des
  c4. bes8 4 aes
  g4 des' f, g
  f4. ees8 4 4 % B
  ees4 aes c ees
  ees4 des f, g8.[f16] \break
  ees4 c'4 4. bes8 % C
  aes2. \bar "||" c8.^\markup\smallCaps Duet. des16
  c4. aes8 ees4 \bar "||" aes8.^\markup\smallCaps Chorus. ^\markup\smallCaps Semi- bes16
  aes4. g8 4 \bar "||" des'8.^\markup\smallCaps Duet. ees16 % D
  des4. c8 bes4 \bar "||" f8.^\markup\smallCaps Semi-Chorus. g16
  f4. ees8 4 \bar "|" \break ees4^\markup\smallCaps "Full Chorus."
  ees4 aes c ees % E
  ees4 des f, g8. f16
  ees4 c'4 4. bes8
  aes2.
  
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 ees ees f
  ees4. 8 4 4
  ees4 4 des des
  c4. 8 4 4 % B
  c4 4 ees ges
  f4 4 d c
  c4 ees ees4. des8 % C
  c2. ees8. f16
  ees4. c8 4 ees8. 16
  des4. 8 4 \teeny ees4 % D
  ees2. \normalsize des8. 16
  c4. 8 4 4
  c4 4 ees ges
  d4 4 des b8. 16
  c4 ees ees4. des8
  c2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes4 4 4 4
  aes4. g8 des' 4 c
  bes4 g g bes
  aes4. 8 4 4 % B
  aes4 ees aes aes
  aes4 4 4 f8.[aes16]
  aes4 4 g4. ees8 % C
  ees2. \teeny aes,4
  aes2. \normalsize aes'8. 16
  bes4. 8 4 bes8. c16 % D
  bes4. aes8 g4 8. bes16
  aes4. 8 4 4
  aes4 ees aes aes % E
  aes4 4 4 f8. aes16
  aes4 4 g4. ees8
  ees2.
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes4 4 4 d
  ees4. 8 4 4
  ees4 4 4 4
  aes,4. 8 4 4 % B
  aes4 4 4 c
  des4 4 4 d
  ees4 4 4. 8
  aes,2. \teeny 4
  aes2. \normalsize c8. 16

  ees4. 8 4 \teeny 4 % D
  ees2. \normalsize 8. 16
  aes,4. 8 4 4
  aes4 4 4 c ^ E
  des4 4 4 d8. 16
  ees4 4 4. 8
  aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He is call -- ing thee, gen -- tly call -- ing thee;
  He is call -- ing thee, gen -- tly call -- ing thee;
  Oh, come and give Him now thy heart—
  He is call -- ing thee to -- day.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Why wait -- est thou, O bur -- dened soul,
  When Je -- sus now will make thee whole?
  Give up thy all to His con -- trol—
  The Life, the Truth, the Way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Why wait -- est thou? why not be -- lieve?
  His of -- fered grace with joy re -- ceive;
  How can you still the Spi -- rit grieve?
  Thou hast no time to stay.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Why wait -- est thou? the days are few,
  And there is work for thee to do;
  For -- sake the wrong, the right pur -- sue:
  A -- rise! no more de -- lay.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Why " wait "est " "thou, " "O " bur "dened " "soul, "
  "\nWhen " Je "sus " "now " "will " "make " "thee " "whole? "
  "\nGive " "up " "thy " "all " "to " "His " con "trol— "
  "\nThe " "Life, " "the " "Truth, " "the " "Way. "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nOh, " "come " "and " "give " "Him " "now " "thy " "heart— "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "2."
  "\nWhy " wait "est " "thou? " "why " "not " be "lieve? "
  "\nHis " of "fered " "grace " "with " "joy " re "ceive; "
  "\nHow " "can " "you " "still " "the " Spi "rit " "grieve? "
  "\nThou " "hast " "no " "time " "to " "stay. "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nOh, " "come " "and " "give " "Him " "now " "thy " "heart— "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "3."
  "\nWhy " wait "est " "thou? " "the " "days " "are " "few, "
  "\nAnd " "there " "is " "work " "for " "thee " "to " "do; "
  "\nFor" "sake " "the " "wrong, " "the " "right " pur "sue: "
  "\nA" "rise! " "no " "more " de "lay. "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nHe " "is " call "ing " "thee, " gen "tly " call "ing " "thee; "
  "\nOh, " "come " "and " "give " "Him " "now " "thy " "heart— "
  "\nHe " "is " call "ing " "thee " to "day. "
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
      \pointAndClickOff
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
