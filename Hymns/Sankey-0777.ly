\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bury thy Sorrow."
  subtitle    = "Sankey No. 777"
  subsubtitle = "Sankey 880 No. 5"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary A. Bachelor."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 12/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*2
  \textMark \markup { \box \bold "B" } s1.*2
  \textMark \markup { \box \bold "C" } s1.*2
  \textMark \markup { \box \bold "D" } s1.*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4. 8 a g8 4. f | ees4. 8 g f | d4.~4. |
  bes'4. 8 a g g4. f | e4. 8 f g f4.~4. |
  a4. 8 bes c c4. f, | 4. 8 bes c d4.~4. |
  d4. 8 c a bes4. g | f4.^\markup\italic rit. 8 8 8 4.~4. |
}

alto = \relative {
  \autoBeamOff
  d'4. 8 f ees ees4. d | c4. 8 ees d bes4.~4. |
  d4. 8 f e e4. d | c4. 8 8 8 4.~4. |
  c4. 8 d ees ees4. ees | d4. 8 8 ees f4.~4. |
  fis4. 8 8 8 g4(d8) ees4. | d4. c8 d ees d4.~4. |
}

tenor = \relative {
  \autoBeamOff
  bes4. 8 8 8 4. 4. | f4. 8 8 8 4.~4. |
  bes4. 8 8 8 4. 4. | g4. 8 a bes a4.~4. |
  c4. 8 bes a8 4. c | bes4. 8 8 8 4.~4. |
  a4. 8 8 c bes4. 4. | 4. a8 bes c bes4.~4. |
}

bass = \relative {
  \autoBeamOff
  bes,4. 8 8 8 4. 4. | f'4. 8 8 8 bes,4.~4. |
  bes4. 8 8 8 4. 4. | c4. 8 8 8 f4.~4. |
  f4. 8 8 8 4. 4. | bes,4. 8 8 8 4.~4. |
  d4. 8 8 8 g4. ees | f4. 8 8 8 bes,4.~4. |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Go bu -- ry thy sor -- row, the world hath its share;
  Go bu -- ry it deep -- ly, go hide it with care;
  Go think of it calm -- ly, when cur -- tained by night;
  Go tell it to Je -- sus, and all will be right.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go tell it to Je -- sus, He know -- eth thy grief;
  Go tell it to Je -- sus, He'll send thee re -- lief;
  Go ga -- ther the sun -- shine He sheds on the way;
  He'll light -- en thy bur -- den— go, wea -- ry one, pray.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hearts grow -- ing a -- wea -- ry with hea -- vi -- er woe
  Now droop 'mid the dark -- ness— go, com -- fort them, go!
  Go bu -- ry thy sor -- row, let o -- thers be blest;
  Go give them the sun -- shine, tell Je -- sus the rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Go " bu "ry " "thy " sor "row, " "the " "world " "hath " "its " "share; "
  "\nGo " bu "ry " "it " deep "ly, " "go " "hide " "it " "with " "care; "
  "\nGo " "think " "of " "it " calm "ly, " "when " cur "tained " "by " "night; "
  "\nGo " "tell " "it " "to " Je "sus, " "and " "all " "will " "be " "right.\n"

  \set stanza = "2."
  "\nGo " "tell " "it " "to " Je "sus, " "He " know "eth " "thy " "grief; "
  "\nGo " "tell " "it " "to " Je "sus, " "He'll " "send " "thee " re "lief; "
  "\nGo " ga "ther " "the " sun "shine " "He " "sheds " "on " "the " "way; "
  "\nHe'll " light "en " "thy " bur "den— " "go, " wea "ry " "one, " "pray.\n"

  \set stanza = "3."
  "\nHearts " grow "ing " a wea "ry " "with " hea vi "er " "woe "
  "\nNow " "droop " "'mid " "the " dark "ness— " "go, " com "fort " "them, " "go! "
  "\nGo " bu "ry " "thy " sor "row, " "let " o "thers " "be " "blest; "
  "\nGo " "give " "them " "the " sun "shine, " "tell " Je "sus " "the " "rest. "
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
