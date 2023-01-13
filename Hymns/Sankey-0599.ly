\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Blessed Life!"
  subtitle    = "Sankey No. 599"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "George Hews."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. T. Matson."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  g'2 fis4 g | ees2 g | f4(g) aes(bes) | g1 | bes2 a4 bes |
  g2 4(bes) | bes(aes) aes(g) | f1 | g2 f4 4 | ees2 f |
  g4(aes) bes(c) | f,1 | g2 bes4 4 | aes2. f4 | ees2 d | ees1 |
}

alto = \relative {
  \autoBeamOff
  ees'2 4 4 | ees2 2 | d4(ees) f(d) | ees1 | 2 4 4 |
  ees2 4(g) | g(f) f(ees) | d1 | ees2 d4 4 | c2 d |
  ees4(d) ees2 | 2(d) | ees2 4 4 | 2. c4 | bes2 2 | 1 |
}

tenor = \relative {
  \autoBeamOff
  bes2 aes4 bes | g2 bes | 2 2 | 1 | g2 fis4 g |
  bes2 2 | 2 2 | 1 | 2 4 aes | g2 bes |
  bes4(aes) g(c) | bes1 | 2 des4 4 | c2. aes4 | g2 aes4(f) | g1 |
}

bass = \relative {
  \autoBeamOff
  ees2 4 4 | 2 2 | bes'2 bes, | ees1 | 2 4 4 |
  ees2 2 | d ees | bes1 | ees2 bes4 b | c2 bes |
  ees4(f) g(aes) | bes1 | ees,2 g4 4 | aes2. aes,4 | bes2 2 | ees1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O bless -- ed life! the heart at rest,
  When all with -- out tu -- mul -- tuous seems,
  That trusts a high -- er will, and deems
  That high -- er will, not mine, the best.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O bless -- ed life! the mind that sees
  What -- ev -- er change the years may bring;
  A mer -- cy still in ev -- 'ry -- thing,
  And shi -- ning through all mys -- ter -- ies.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O bless -- ed life! the soul that soars,
  When sense of mot -- tal sight is dim,
  Be -- yond the sense— be -- yond to Him
  Whose love un -- locks the heaven -- ly doors.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O bless -- ed life! heart, mind, and soul,
  From self- -- born aims and wiosh -- es free;
  In all— at one with De -- i -- ty.
  And loy -- al to the Lord's con -- trol.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O life! how bless -- ed, how Di -- vine!
  High life, the earn -- est of a higher!
  Sa -- viour, ful -- fil my deep de -- sire,
  And let this bles -- sed life be mine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " bless "ed " "life! " "the " "heart " "at " "rest, "
  "\nWhen " "all " with "out " tu mul "tuous " "seems, "
  "\nThat " "trusts " "a " high "er " "will, " "and " "deems "
  "\nThat " high "er " "will, " "not " "mine, " "the " "best.\n"

  \set stanza = "2."
  "\nO " bless "ed " "life! " "the " "mind " "that " "sees "
  "\nWhat" ev "er " "change " "the " "years " "may " "bring; "
  "\nA " mer "cy " "still " "in " ev 'ry "thing, "
  "\nAnd " shi "ning " "through " "all " mys ter "ies.\n"

  \set stanza = "3."
  "\nO " bless "ed " "life! " "the " "soul " "that " "soars, "
  "\nWhen " "sense " "of " mot "tal " "sight " "is " "dim, "
  "\nBe" "yond " "the " "sense— " be "yond " "to " "Him "
  "\nWhose " "love " un "locks " "the " heaven "ly " "doors.\n"

  \set stanza = "4."
  "\nO " bless "ed " "life! " "heart, " "mind, " "and " "soul, "
  "\nFrom " self- "born " "aims " "and " wiosh "es " "free; "
  "\nIn " "all— " "at " "one " "with " De i "ty. "
  "\nAnd " loy "al " "to " "the " "Lord's " con "trol.\n"

  \set stanza = "5."
  "\nO " "life! " "how " bless "ed, " "how " Di "vine! "
  "\nHigh " "life, " "the " earn "est " "of " "a " "higher! "
  "\nSa" "viour, " ful "fil " "my " "deep " de "sire, "
  "\nAnd " "let " "this " bles "sed " "life " "be " "mine. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
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
            \new Dynamics \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
