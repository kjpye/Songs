\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Standing on the Promises."
  subtitle    = "Sankey No. 877"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Kelso Carter."
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'8. 16 8. g16 f8. ees16 d8. ees16 | f4 bes4 2 | g8. 16 8. a16 bes8. 16 a8. g16 |
  g4 f4 2 | 8. 16 8. g16 f8. ees16 d8. ees16 | f4 bes4 2 | d8. 16 bes8. 16 \bar "|" \break
  c8. 16 a8. 16 | bes2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus
  d2 bes | g bes |
  c8. 16 8. 16 8. 16 bes8. c16 | d4 bes g bes | d2 bes |
  g2 ees'4.\fermata c8 | bes8. 16 8. c16 d8. 16 c8. 16 | bes1 |
}

alto = \relative {
  d'8. 16 8. ees16 d8. c16 bes8. c16 | d4 4 2 | ees8. 16 8. f16 g8. 16 f8. ees16 |
  ees4 d4 2 | 8. 16 8. ees16 d8. c16 bes8. c16 | d4 4 2 | f8. 16 d8. 16
  ees8. 16 8. 16 | d2. r4 \section | f8. 16 8. 16 d8. 16 4 | ees8. 16 8. 16 d8. 16 4 |
  f8. 16 8. 16 8. 16 8. 16 | 4 d ees d | f8. 16 8. 16 d8. 16 4 |
  ees8. 16 8. 16 g8. 16 8\fermata ees | d8. 16 8. ees16 f8. 16 ees8. 16 | d1 |
}

tenor = \relative {
  bes8. 16 8. 16 8. f16 8. 16 | bes4 4 2 | 8. 16 8. 16 ees8. 16 bes8. 16 |
  bes4 4 2 | 8. 16 8. 16 8. f16 8. 16 | bes4 f4 2 | bes8. 16 f8. 16
  g8. 16 f8. 16 | 2. r4 \section | bes8. 16 8. 16 8. 16 4 | 8. 16 8. 16 8. 16 4 |
  a8. 16 8. 16 8. 16 g8. a16 | bes4 f bes f | bes8. 16 8. 16 8. 16 4 |
  bes8. 16 8. 16 8. 16 8\fermata g | bes8. 16 8. a16 bes8. 16 a8. f16 | 1 |
}

bass = \relative {
  bes,8. 16 8. 16 8. 16 8. 16 | 4 4 2 | ees8. 16 8. 16 8. 16 8. 16 |
  bes4 4 2 | 8. 16 8. 16 8. 16 8. 16 | 4 4 2 | 8. 16 8. 16
  ees8. 16 f8. 16 | bes,2. r4 \section | 8. 16 8. 16 8. 16 4 | ees8. 16 8. 16 g8. 16 4 |
  f8. 16 8. 16 8. 16 8. 16 | bes4 bes,4 4 4 | 8. 16 8. 16 8. 16 4 |
  ees8. 16 8. 16 8. 16 8\fermata 8 | f8. 16 8. 16 8. 16 8. 16 | bes,1 |
}

chorus = \lyricmode {
  Stand -- ing, stand -- ing,
  Stand -- ing on the pro -- mis -- es of God my Sa -- viour;
  Stand -- ing, stand -- ing,
  I’m stand -- ing on the pro -- mis -- es of God.
}

chorusMen = \lyricmode {
  \repeat unfold 42 \skip 1
  Stand -- ing on the pro -- mis -- es,
  stand -- ing on the pro -- mis -- es,
  _ _ _ _ _ _ _ _ _ _ _ _
  Stand -- ing on the pro -- mis -- es,
  stand -- ing on the pro -- mis -- es,
  _ _ _ _ _ _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Stand -- ing on the pro -- mis -- es of Christ my King,
  Thro’ e -- ter -- nal a -- ges let His prais -- es ring;
  Glo -- ry in the high -- est, I will shout and sing,
  Stand -- ing on the pro -- mis -- es of God.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Stand -- ing on the pro -- mis -- es that can -- not fail,
  When the how -- ling storms of doubt and fear as -- sail,
  By the liv -- ing Word of God I shall pre -- vail,
  Stand -- ing on the pro -- mis -- es of God.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Stand -- ing on the pro -- mis -- es I now can see
  Per -- fect, pres -- ent cleans -- ing in the blood for me;
  Stand -- ing in the lib -- er -- ty where Christ makes free,
  Stand -- ing on the pro -- mis -- es of God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Stand -- ing on the pro -- mis -- es of Christ the Lord,
  Bound to Him e -- ter -- nal -- ly by love’s strong cord,
  O -- ver -- com -- ing dai -- ly with the Spi -- rit’s sword,
  Stand -- ing on the pro -- mis -- es of God.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Stand -- ing on the pro -- mis -- es I can -- not fail,
  List -- ’ning ev -- ’ry mo -- ment to the Spi -- rit’s call,
  Rest -- ing in my Sa -- viour as my All in all.
  Stand -- ing on the pro -- mis -- es of God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Stand" "ing " "on " "the " pro mis "es " "of " "Christ " "my " "King, "
  "\nThro’ " e ter "nal " a "ges " "let " "His " prais "es " "ring; "
  "\nGlo" "ry " "in " "the " high "est, " "I " "will " "shout " "and " "sing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing, " stand "ing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing, " stand "ing, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "2."
  "\nStand" "ing " "on " "the " pro mis "es " "that " can "not " "fail, "
  "\nWhen " "the " how "ling " "storms " "of " "doubt " "and " "fear " as "sail, "
  "\nBy " "the " liv "ing " "Word " "of " "God " "I " "shall " pre "vail, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing, " stand "ing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing, " stand "ing, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "3."
  "\nStand" "ing " "on " "the " pro mis "es " "I " "now " "can " "see "
  "\nPer" "fect, " pres "ent " cleans "ing " "in " "the " "blood " "for " "me; "
  "\nStand" "ing " "in " "the " lib er "ty " "where " "Christ " "makes " "free, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing, " stand "ing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing, " stand "ing, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "4."
  "\nStand" "ing " "on " "the " pro mis "es " "of " "Christ " "the " "Lord, "
  "\nBound " "to " "Him " e ter nal "ly " "by " "love’s " "strong " "cord, "
  "\nO" ver com "ing " dai "ly " "with " "the " Spi "rit’s " "sword, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing, " stand "ing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing, " stand "ing, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "5."
  "\nStand" "ing " "on " "the " pro mis "es " "I " can "not " "fail, "
  "\nList" "’ning " ev "’ry " mo "ment " "to " "the " Spi "rit’s " "call, "
  "\nRest" "ing " "in " "my " Sa "viour " "as " "my " "All " "in " "all. "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing, " stand "ing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing, " stand "ing, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Stand" "ing " "on " "the " pro mis "es " "of " "Christ " "my " "King, "
  "\nThro’ " e ter "nal " a "ges " "let " "His " prais "es " "ring; "
  "\nGlo" "ry " "in " "the " high "est, " "I " "will " "shout " "and " "sing, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "2."
  "\nStand" "ing " "on " "the " pro mis "es " "that " can "not " "fail, "
  "\nWhen " "the " how "ling " "storms " "of " "doubt " "and " "fear " as "sail, "
  "\nBy " "the " liv "ing " "Word " "of " "God " "I " "shall " pre "vail, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "3."
  "\nStand" "ing " "on " "the " pro mis "es " "I " "now " "can " "see "
  "\nPer" "fect, " pres "ent " cleans "ing " "in " "the " "blood " "for " "me; "
  "\nStand" "ing " "in " "the " lib er "ty " "where " "Christ " "makes " "free, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "4."
  "\nStand" "ing " "on " "the " pro mis "es " "of " "Christ " "the " "Lord, "
  "\nBound " "to " "Him " e ter nal "ly " "by " "love’s " "strong " "cord, "
  "\nO" ver com "ing " dai "ly " "with " "the " Spi "rit’s " "sword, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God.\n"

  \set stanza = "5."
  "\nStand" "ing " "on " "the " pro mis "es " "I " can "not " "fail, "
  "\nList" "’ning " ev "’ry " mo "ment " "to " "the " Spi "rit’s " "call, "
  "\nRest" "ing " "in " "my " Sa "viour " "as " "my " "All " "in " "all. "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God. "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nStand" "ing " "on " "the " pro mis "es " "of " "God " "my " Sa "viour; "
  "\nStand" "ing " "on " "the " pro mis "es, "
  "\nstand" "ing " "on " "the " pro mis "es, "
  "\nI’m " stand "ing " "on " "the " pro mis "es " "of " "God. "
}

\book {
  \paper {
    output-suffix = midi-sop
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
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

\book {
  \paper {
    output-suffix = midi
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
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 19)

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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
