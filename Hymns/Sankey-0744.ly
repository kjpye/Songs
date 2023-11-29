\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "At the Cross there's Room!"
  subtitle    = "Sankey No. 744"
  subsubtitle = "Sankey 880 No. 90"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
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

global = {
  \key aes \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*7
  \textMark \markup { \box \bold "B" } s2.*7
  \textMark \markup { \box \bold "C" } s2.*8
  \textMark \markup { \box \bold "D" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 bes4 | aes2 g4 | f(des') f, | ees2. | g2 aes4 | bes2 c4 | bes2. |
  c2 bes4 | aes2 g4 | f(des') f, | ees2. | g2 aes4 | bes2 c4 | aes2. |
  bes2 aes4 | g2 ees4 | des'2 c4 | bes2. | c2 bes4 | aes2 bes4 | c2 ees4 | bes2. |
  c2 des4 | ees2 c4 | bes2 c4 | des2. | aes2 g4 | c2 bes4 | aes2. |
}

alto = \relative {
  \autoBeamOff
  ees'2 des4 | c2 ees4 | des4(f) des | c2. | des2 c4 | ees2 4 | 2. |
  ees2 des4 | c2 ees4 | des(f) des | c2. | des2 c4 | des2 ees4 | c2. |
  des2 c4 | ees2 4 | 2 4 | 2. | 2 des4 | c2 ees4 | 2 4 | 2. |
  ees2 4 | 2 4 | des2 f4 | 2. | ees2 4 | 2 des4 | c2. |
}

tenor = \relative {
  \autoBeamOff
  aes2 4 | 2 4 | 2 4 | 2. | bes2 aes4 | g2 aes4 | g2. |
  aes2 4 | 2 4 | 2 4 | 2. | bes2 aes4 | g2 4 | aes2. |
  g2 aes4 | bes2 g4 | bes2 aes4 | g2. | aes2 g4 | aes2 g4 | aes2 4 | g2. |
  aes2 bes4 | c2 aes4 | f2 a4 | bes2. | c2 bes4 | aes2 g4 | aes2. |
}

bass = \relative {
  \autoBeamOff
  aes,2 4 | 2 c4 | des2 4 | aes2. | ees'2 4 | 2 4 | 2. |
  aes,2 4 | 2 c4 | des2 4 | aes2. | ees'2 4 | 2 4 | aes,2. |
  ees'2 4 | 2 4 | 2 4 | 2. | aes2 ees4 | f2 ees4 | aes,2 c4 | ees2. |
  aes2 4 | 2 aes,4 | des2 c4 | bes2. | ees2 4 | 2 4 | aes,2. |
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
  Mourn -- er, where -- so -- e'er thou art,
  At the cross there's room!
  Tell the bur -- den of thy heart;
  At the cross there's room!
  Tell it in thy Sa -- viour's ear,
  Cast a -- way thine ev -- 'ry fear.
  On -- ly speak, and He will hear;
  At the cross there's room!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Haste thee, wan -- d'rer, tar -- ry not,
  At the cross there's room!
  Seek that con -- se -- cra -- ted spot;
  At the cross there's room!
  Hea -- vy la -- den, sore op -- pressed,
  Love can soothe thy trou -- bled breast;
  In the Sa -- viour find thy rest:
  At the cross there's room!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thought -- less sin -- ner, come to -- day,
  At the cross there's room!
  Hark! the bride and Spi -- rit say,
  At the cross there's room!
  Now a liv -- ing foun -- tain see,
  O -- pend ethere for you and me—
  Rich and poor, for bond and free
  At the cross there's room!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bles -- séd thought! for ev -- 'ry one
  At the cross there's room!
  Love's a -- ton -- ing work is done;
  At the cross there's room!
  Streams of bound -- less mer -- cy flow,
  Free to all who thi -- ther go;
  Oh that all the world might know
  At the cross there's room!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Mourn" "er, " where so "e'er " "thou " "art, "
  "\nAt " "the " "cross " "there's " "room! "
  "\nTell " "the " bur "den " "of " "thy " "heart; "
  "\nAt " "the " "cross " "there's " "room! "
  "\nTell " "it " "in " "thy " Sa "viour's " "ear, "
  "\nCast " a "way " "thine " ev "'ry " "fear. "
  "\nOn" "ly " "speak, " "and " "He " "will " "hear; "
  "\nAt " "the " "cross " "there's " "room!\n"

  \set stanza = "2."
  "\nHaste " "thee, " wan "d'rer, " tar "ry " "not, "
  "\nAt " "the " "cross " "there's " "room! "
  "\nSeek " "that " con se cra "ted " "spot; "
  "\nAt " "the " "cross " "there's " "room! "
  "\nHea" "vy " la "den, " "sore " op "pressed, "
  "\nLove " "can " "soothe " "thy " trou "bled " "breast; "
  "\nIn " "the " Sa "viour " "find " "thy " "rest: "
  "\nAt " "the " "cross " "there's " "room!\n"

  \set stanza = "3."
  "\nThought" "less " sin "ner, " "come " to "day, "
  "\nAt " "the " "cross " "there's " "room! "
  "\nHark! " "the " "bride " "and " Spi "rit " "say, "
  "\nAt " "the " "cross " "there's " "room! "
  "\nNow " "a " liv "ing " foun "tain " "see, "
  "\nO" "pend " "ethere " "for " "you " "and " "me— "
  "\nRich " "and " "poor, " "for " "bond " "and " "free "
  "\nAt " "the " "cross " "there's " "room!\n"

  \set stanza = "4."
  "\nBles" "séd " "thought! " "for " ev "'ry " "one "
  "\nAt " "the " "cross " "there's " "room! "
  "\nLove's " a ton "ing " "work " "is " "done; "
  "\nAt " "the " "cross " "there's " "room! "
  "\nStreams " "of " bound "less " mer "cy " "flow, "
  "\nFree " "to " "all " "who " thi "ther " "go; "
  "\nOh " "that " "all " "the " "world " "might " "know "
  "\nAt " "the " "cross " "there's " "room! "
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
