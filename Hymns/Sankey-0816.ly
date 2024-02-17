\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Speak to them Gently."
  subtitle    = "Sankey No. 816"
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
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

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
  \textMark \markup { \box \bold "A" } s4 s2.*5
  \textMark \markup { \box \bold "B" }    s2.*5
  \textMark \markup { \box \bold "C" }    s2.*6
  \textMark \markup { \box \bold "D" }    s2.*5
  \textMark \markup { \box \bold "E" }    s2.*5
  \textMark \markup { \box \bold "F" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | g g aes | bes4 4 4 | c bes a | bes2 4 | 4 aes g |
  aes4 bes aes | 4 g f | g2 4 | 4 4 aes | bes4 4 4 |
  c4 d c | bes2 4 | ees d c | bes ees ees, | g aes f | ees2. |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c'4. 8 4 | 4 d c | bes g aes | bes2. | 4 aes4 4 |
  aes4 g f | g g aes | bes2. | c4. 8 4 | 4 d c |
  bes4 g c | bes2. | ees4 d c | bes ees, aes | g aes f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4 4 4 | 4 4 4 | 4 4 4 | 2 g4 | 4 f ees |
  f4 g f | f ees d | ees2 4 | 4 4 4 | 4 4 4 |
  ees4 4 4 | 2 4 | 4 4 4 | 4 4 4 | 4 f d | ees2. \section |
  ees4. 8 4 | 4 4 4 | 4 4 4 | 2. | g4 f f |
  f4 ees d | ees4 4 4 | 2. | 4. 8 4 | 4 4 4 |
  ees4 4 4 | 2. | 4 4 4 | 4 4 f | ees f d | ees2
}

tenor = \relative {
  bes4 | 4 4 f | g g g | aes g fis | g2 bes4 | 4 4 4 |
  bes4 4 4 | 4 4 4 | 2 4 | 4 4 f g g g |
  ees4 4 4 | g2 4 | c bes aes | g bes c | bes4 4 aes | g2. \section |
  aes4. 8 4 | 4 bes aes | g bes f | g2. | bes4 4 4 |
  bes4 4 4 | 4 4 f | g2. | aes4. 8 4 | 4 bes aes |
  g4 | bes aes | g2. | c4 bes aes | g bes c | bes4 4 aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 4 4 4 | 4 4 4 | 4 4 4 | 2 4 | bes4 4 4 |
  bes4 4 4 | 4 4 4 | ees2 4 | 4 4 4 | 4 4 4 |
  aes,4 4 4 | ees'2 4 | aes,4 4 c | ees g aes | bes4 4 bes, | ees2. \section |
  aes,4. 8 4 | 4 4 c | ees4 4 4 | 2. | bes4 4 4 |
  bes4 4 4 | ees4 4 4 | 2. | aes,4. 8 4 | 4 4 c |
  ees4 4 4 | 2. | aes,4 4 c | ees g, aes | bes4 4 4 | ees2
}

chorus = \lyricmode {
  Ten -- der -- ly, ten -- der -- ly, lov -- ing -- ly speak;
  Tell them of Je -- sus, the low -- ly and meek;
  Pa -- tient -- ly wait -- ing, He longs to re -- ceive
  All who are will -- ing on Him to be -- lieve.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Speak gen -- tly, speak gen -- tly; oh, grieve not a -- gain
  The hearts that are break -- ing with sor -- row and pain;
  We know not how bit -- ter the tri -- als they share,
  We know not how hea -- vy the bur -- dens they bear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Speak gen -- tly, speak gen -- tly; oh, pi -- ty and pray
  For those who in dark -- ness have wan -- dered a -- way;
  A word kind -- ly spo -- ken the cap -- tives may free;
  A word may re -- claim them— oh, speak it and see!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Speak gen -- tly, speak gen -- tly, wher -- ev -- er you go,
  Is tem -- pest, is sun -- shine, in sor -- row or woe;
  Speak gen -- tly, re -- pos -- ing your trust in the Lord,
  And joy with -- out mea -- sure will be your re -- ward.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Speak " gen "tly, " "speak " gen "tly; " "oh, " "grieve " "not " a "gain "
  "\nThe " "hearts " "that " "are " break "ing " "with " sor "row " "and " "pain; "
  "\nWe " "know " "not " "how " bit "ter " "the " tri "als " "they " "share, "
  "\nWe " "know " "not " "how " hea "vy " "the " bur "dens " "they " "bear. "
  "\nTen" der "ly, " ten der "ly, " lov ing "ly " "speak; "
  "\nTell " "them " "of " Je "sus, " "the " low "ly " "and " "meek; "
  "\nPa" tient "ly " wait "ing, " "He " "longs " "to " re "ceive "
  "\nAll " "who " "are " will "ing " "on " "Him " "to " be "lieve.\n"

  \set stanza = "2."
  "\nSpeak " gen "tly, " "speak " gen "tly; " "oh, " pi "ty " "and " "pray "
  "\nFor " "those " "who " "in " dark "ness " "have " wan "dered " a "way; "
  "\nA " "word " kind "ly " spo "ken " "the " cap "tives " "may " "free; "
  "\nA " "word " "may " re "claim " "them— " "oh, " "speak " "it " "and " "see! "
  "\nTen" der "ly, " ten der "ly, " lov ing "ly " "speak; "
  "\nTell " "them " "of " Je "sus, " "the " low "ly " "and " "meek; "
  "\nPa" tient "ly " wait "ing, " "He " "longs " "to " re "ceive "
  "\nAll " "who " "are " will "ing " "on " "Him " "to " be "lieve.\n"

  \set stanza = "3."
  "\nSpeak " gen "tly, " "speak " gen "tly, " wher ev "er " "you " "go, "
  "\nIs " tem "pest, " "is " sun "shine, " "in " sor "row " "or " "woe; "
  "\nSpeak " gen "tly, " re pos "ing " "your " "trust " "in " "the " "Lord, "
  "\nAnd " "joy " with "out " mea "sure " "will " "be " "your " re "ward. "
  "\nTen" der "ly, " ten der "ly, " lov ing "ly " "speak; "
  "\nTell " "them " "of " Je "sus, " "the " low "ly " "and " "meek; "
  "\nPa" tient "ly " wait "ing, " "He " "longs " "to " re "ceive "
  "\nAll " "who " "are " will "ing " "on " "Him " "to " be "lieve. "
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
