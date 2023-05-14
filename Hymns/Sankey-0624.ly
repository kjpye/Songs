\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, the Bitter Shame and Sorrow!"
  subtitle    = "Sankey No. 624"
  subsubtitle = "Sankey 880 No. 716"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. Vincent."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Th. Monod."
  meter       = \markup\smallCaps "8.7.8.8.7."
  piece       = \markup\smallCaps "St. Jude."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*3
  \textMark \markup { \box \bold "B" } s1*3
  \textMark \markup { \box \bold "C" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4. g8 a4 bes | c4. bes8 4 a | c4. f,8 4 fis |
  g4 ees d2 | g4. a8 bes4 c | d ees ees d |
  d4. a8 c4 bes | 4. f8 aes4 g | 4. 8 f4. 8 | g4 a bes2 |
}

alto = \relative {
  \autoBeamOff
  f'4. 8 4 4 | 4. 8 4 4 | 4. e8 4 4 |
  ees4 c bes2 | d4. g8 4 4 | 4 4 a a |
  a4. 8 4 g | f4. 8 4 ees | cis4. 8 d4. f8 | e4 ees d2 |
}

tenor = \relative {
  \autoBeamOff
  d'4. 8 4 4 | 4. 8 ees4 4 | 4. c8 4 4 |
  a4 4 bes2 | 4. c8 d4 ees | bes c c a |
  d4. ees8 4 d | bes4. 8 4 4 | 4. 8 4. d8 | des4 c bes2 |
}

bass = \relative {
  \autoBeamOff
  bes4. 8 4 4 | 4. 8 c4 4 | a4. 8 4 4 |
  f4 4 bes2 | g4. 8 4 4 | 4 4 fis fis |
  fis4. g8 4 4 | d4. 8 ees4 4 | e4. 8 f4. 8 | 4 4 bes,2 |
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
  Oh, the bit -- ter shame and sor -- row,
  That a time could ev -- er be,
  When O let the Sa -- viour's pi -- ty
  Plead in vain; and proud -- ly an -- swer'd,
  "\"All" of self, and none of "Thee.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yet, He found me; I be -- held Him
  Bleed -- ing on th'ac -- curs -- ed tree:
  Heard Him pray, "\"For" -- give them, Fa -- "ther!\""
  And my wist -- ful heart said faint -- ly,
  "\"Some" of self, and some of "Thee.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Day by day His ten -- der mer -- cy,
  Heal -- ing, help -- ingm full and free,
  Sweet and string, and ah! so pa -- tient,
  Brought me low -- er, while I whis -- pered,
  "\"Less" of self, and more of "Thee.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  High -- er than the high -- est hea -- vens.
  Deep -- er than the deep -- est sea,
  Lord, Thy love at last hath con -- quered;
  Grant me now my sup -- plic -- a -- tion.
  "\"None" of self and all of "Thee.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "the " bit "ter " "shame " "and " sor "row, "
  "\nThat " "a " "time " "could " ev "er " "be, "
  "\nWhen " "O " "let " "the " Sa "viour's " pi "ty "
  "\nPlead " "in " "vain; " "and " proud "ly " an "swer'd, "
  "\n\"All " "of " "self, " "and " "none " "of " "Thee.\"\n"

  \set stanza = "2."
  "\nYet, " "He " "found " "me; " "I " be "held " "Him "
  "\nBleed" "ing " "on " th'ac curs "ed " "tree: "
  "\nHeard " "Him " "pray, " "\"For" "give " "them, " Fa "ther!\" "
  "\nAnd " "my " wist "ful " "heart " "said " faint "ly, "
  "\n\"Some " "of " "self, " "and " "some " "of " "Thee.\"\n"

  \set stanza = "3."
  "\nDay " "by " "day " "His " ten "der " mer "cy, "
  "\nHeal" "ing, " help "ingm " "full " "and " "free, "
  "\nSweet " "and " "string, " "and " "ah! " "so " pa "tient, "
  "\nBrought " "me " low "er, " "while " "I " whis "pered, "
  "\n\"Less " "of " "self, " "and " "more " "of " "Thee.\"\n"

  \set stanza = "4."
  "\nHigh" "er " "than " "the " high "est " hea "vens. "
  "\nDeep" "er " "than " "the " deep "est " "sea, "
  "\nLord, " "Thy " "love " "at " "last " "hath " con "quered; "
  "\nGrant " "me " "now " "my " sup plic a "tion. "
  "\n\"None " "of " "self " "and " "all " "of " "Thee.\" "
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
      #(layout-set-staff-size 20)
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
