\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He is Able to Deliver thee."
  subtitle    = "Sankey No. 848"
  subsubtitle = "C. C. No. 271"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2.
  \textMark \markup { \box \bold "F" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  f'8. 16 | bes4 4 4 8. c16 | bes4 a a a8. bes16 |
  a4 g g g8. a16 | g4 f f f8. bes16 | d4 4 4 ees8. d16 |
  c4 g c8[bes] a[g] | f4 4 8 8 g8. a16 | c8. bes16 2
  \section \sectionLabel \markup\smallCaps Chorus.
  f8. 16 | bes2~8 d c8. bes16 | 8. a16 2 8. bes16 |
  c2~8 ees d8. c16 | 8. bes16 2 8. c16 | d4 ees4 4 \bar "|" \break
  d8. 16 | c4 g c8[bes] a[g] | f4 4 8 8 g8. a16 | c8. bes16 2
}

alto = \relative {
  \autoBeamOff
  d'8. 16 | 4 4 8[ees] f8. g16 | f4 4 4 8. 16 |
  f4 ees4 4 8. 16 | d4 4 4 8. 16 | f4 4 4 g8. f16 |
  ees4 4 g f8[ees] | d4 4 c8 8 ees8. 16 | 8. d16 2 \section
  f8. 16 | d2~8 f ees8. d16 | ees8. 16 2 8. d16 |
  ees2~8 g f8. ees16 | 8. d16 2 8. ees16 | f4 aes4 4
  f8. 16 | 4 4 g f8[ees] | d4 4 c8 8 ees8. 16 | 8. d16 2
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 | f4 4 bes4 8. ees16 | d4 c4 4 8. d16 |
  c4 4 4 a8. 16 | bes4 4 4 8. 16 | 4 4 4 8. 16 |
  g4 c ees bes | 4 4 a8 8 c8. f,16 | 8. bes16 2 \section
  f8. 16 | 8. 16 8. 16 8. 16 8. bes16 | c8. 16 2 8. bes16 |
  a8. 16 8. 16 8. 16 8. 16 | f8. bes16 2 8. 16 | 4 d d
  bes8. 16 | g4 c ees bes | 4 4 a8 8 c8. f,16 | 8. bes16 2
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 | 4 4 8[c] d8. ees16 | f4 4 4 8. 16 |
  f4 4 4 8. 16 | bes,4 4 4 8. 16 | 4 4 4 8. 16 |
  ees4 4 4 4 | f4 4 8 8 8. 16 | bes,8. 16 2 \section
  f'8. 16 | bes,8. 16 8. 16 8. 16 8. 16 | f'8. 16 2 8. 16 |
  f8. 16 8. 16 8. 16 8. 16 | bes,8. 16 2 8. 16 | 4 4 4
  bes8. 16 | ees4 4 4 4 | f4 4 8 8 8. 16 | bes,8. 16 2
}

chorus = \lyricmode {
  He is a -- ble to de -- liv -- er thee,
  He is a -- ble to de -- liv -- er thee;
  Though by sin op -- prest,
  Go to Him for rest:
  “Our God is a -- ble to de -- liv -- er thee!”
}

chorusMen = \lyricmode {
  \repeat unfold 40 \skip 1
  He is a -- ble,
  He is a -- ble to de -- liv -- er thee,
  He is a -- ble, He is a -- ble
  \repeat unfold 25 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  ‘Tis the grand -- est theme through the a -- ges rung,
  ’Tis the grand -- est theme for a mor -- tal tongue,
  ’Tis the grand -- est theme that the world e’er sung,
  “Our God is a -- ble to de -- liv -- er thee!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  ‘Tis the grand -- est theme heard on earth or main,
  ‘Tis the grand -- est theme for a  mor -- tal strain,
  ‘Tis the grand -- est theme, tell it out a -- gain,
  “Our God is a -- ble to de -- liv -- er thee!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  ‘Tis the grand -- est theme, let the tid -- ings roll
  To the guil -- ty heart, to the wea -- ry soul;
  Look to God in faith, He will make thee whole:
  “Our God is a -- ble to de -- liv -- er thee!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "‘Tis " "the " grand "est " "theme " "through " "the " a "ges " "rung, "
  "\n’Tis " "the " grand "est " "theme " "for " "a " mor "tal " "tongue, "
  "\n’Tis " "the " grand "est " "theme " "that " "the " "world " "e’er " "sung, "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!”\n"

  \set stanza = "2."
  "\n‘Tis " "the " grand "est " "theme " "heard " "on " "earth " "or " "main, "
  "\n‘Tis " "the " grand "est " "theme " "for " "a "  mor "tal " "strain, "
  "\n‘Tis " "the " grand "est " "theme, " "tell " "it " "out " a "gain, "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!”\n"

  \set stanza = "3."
  "\n‘Tis " "the " grand "est " "theme, " "let " "the " tid "ings " "roll "
  "\nTo " "the " guil "ty " "heart, " "to " "the " wea "ry " "soul; "
  "\nLook " "to " "God " "in " "faith, " "He " "will " "make " "thee " "whole: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "‘Tis " "the " grand "est " "theme " "through " "the " a "ges " "rung, "
  "\n’Tis " "the " grand "est " "theme " "for " "a " mor "tal " "tongue, "
  "\n’Tis " "the " grand "est " "theme " "that " "the " "world " "e’er " "sung, "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble, " "He " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!”\n"

  \set stanza = "2."
  "\n‘Tis " "the " grand "est " "theme " "heard " "on " "earth " "or " "main, "
  "\n‘Tis " "the " grand "est " "theme " "for " "a "  mor "tal " "strain, "
  "\n‘Tis " "the " grand "est " "theme, " "tell " "it " "out " a "gain, "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble, " "He " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!”\n"

  \set stanza = "3."
  "\n‘Tis " "the " grand "est " "theme, " "let " "the " tid "ings " "roll "
  "\nTo " "the " guil "ty " "heart, " "to " "the " wea "ry " "soul; "
  "\nLook " "to " "God " "in " "faith, " "He " "will " "make " "thee " "whole: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
  "\nHe " "is " a "ble, "
  "\nHe " "is " a "ble " "to " de liv "er " "thee, "
  "\nHe " "is " a "ble, " "He " "is " a "ble " "to " de liv "er " "thee; "
  "\nThough " "by " "sin " op "prest, "
  "\nGo " "to " "Him " "for " "rest: "
  "\n“Our " "God " "is " a "ble " "to " de liv "er " "thee!” "
}

\book {
  \paper {
    output-suffix = midi-women
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-men
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
