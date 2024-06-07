\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Redeemed!"
  subtitle    = "Sankey No. 864"
  subsubtitle = "C. C. No. 173"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s2.*4
  \textMark \markup { \box \bold "B" }     s2.*3 s4. \partial 4. s4.
  \textMark \markup { \box \bold "C" }     s1*3  s2 s8
  \textMark \markup { \box \bold "D" } s4. s1*3  s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \time 3/4 \partial 4.
  f'8 d f | bes4. c8 bes8. a16 | a2 g4 | a4. g8 f8. g16 | f4. 8 d f |
  bes4. c8 bes8. a16 | 2 ees'4 | d4. c8 g a | bes4.
  \section \sectionLabel \markup\smallCaps Chorus \time 4/4 \partial 4.
  f8 8 8 | c'2~8 ees d c | bes2~4 4 | 4. 8 a4 bes | c2~8 \bar "|" \break
  f,8 8 bes | d2~8 bes c d | ees2. g,4 | f4. bes8 4 a | bes2~8
}

alto = \relative {
  d'8 bes d | 4. f8 ees8. 16 | 2 4 | 4. 8 8. 16 | d4. 8 bes d |
  d4. f8 ees8. 16 | 2 g4 | f8(ees4) 8 8 8 | d4. \section f8 8 8 |
  ees2~8 g f ees | d2~4 4 | 4. 8 4 4 | f2~8
  \apart r8 r4 | r8 f d d f \auto f f f | ees2. cis4 | d4. f8 ees4 4 | d2~8
}

tenor = \relative {
  bes8 8 8 | f4. bes8 c8. 16 | 2 bes4 c4. bes8 a8. 16 | bes4. 8 8 8 |
  f4. bes8 c8. 16 | 2 a4 | 4. 8 c f, | 4. \section r8 r4 |
  r8 a8 8 8 8 r8 r4 | r8 f8 8 8 4 bes | g4. 8 fis4 g | a2~8
  r8 r4 | r8 bes f f bes d c bes | bes2. 4 | 4. d8 c4 4 | bes2~8
}

bass = \relative {
  bes,8 8 8 | 4. d8 f8. 16 | 2 4 | 4. 8 8. 16 | bes,4. 8 8 8 |
  bes4. d8 f8. 16 | 2 4 | 4. 8 8 8 | bes,4. \section r8 r4 |
  r8 f'8 8 8 8 r r4 | r8 bes,8 8 8 4 4 | g'4. 8 d4 g | f2~8
  r8 r4 | r8 bes,8 8 8 8 bes'8 a aes | g2. e4 | f4. 8 4 4 | bes,2~8
}

chorus = \lyricmode {
  I am re -- deem’d! __
  I am re -- deem’d! __
  I’ll sing it o’er and o’er;
  I am re -- deem’d! __
  Oh, praise the Lord,
  Re -- deem’d for ev -- er -- more!
}

chorusMen = \lyricmode {
  \repeat unfold 28 \skip 1
  I am re -- deem’d!
  I am re -- deem’d!
  _ _ _ _ _ _
  I am re -- deem’d!
  _ _ _ _ _ _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I am re -- deem’d, oh, praise the Lord!
  My soul from bond -- age free,
  Has found at last a rest -- ing place
  In Him who died for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I look’d, and lo, from Cal -- v’ry’s Cross
  A heal -- ing foun -- tain stream’d;
  It cleansed my heart, and now I sing,
  Praise God, I am re -- deem’d!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The debt is paid, my soul is free;
  And by His migh -- ty power,
  The blood that wash’d my sins a -- way
  Still cleans -- eth ev -- ’ry hour.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All glo -- ry be to Je -- sus’ name,
  I know that He is mine!
  For on my heart the Spi -- rit seals
  His pledge of love Di -- vine.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And when I reach that world more bright
  Than mor -- tal ev -- er dream’d,
  I’ll cast my crown at Je -- sus’ feet,
  And cry e -- deem’d, re -- deem’d!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " re "deem’d, " "oh, " "praise " "the " "Lord! "
  "\nMy " "soul " "from " bond "age " "free, "
  "\nHas " "found " "at " "last " "a " rest "ing " "place "
  "\nIn " "Him " "who " "died " "for " "me! "
  "\nI " "am " re "deem’d! " 
  "\nI " "am " re "deem’d! " 
  "\nI’ll " "sing " "it " "o’er " "and " "o’er; "
  "\nI " "am " re "deem’d! " 
  "\nOh, " "praise " "the " "Lord, "
  "\nRe" "deem’d " "for " ev er "more!\n"

  \set stanza = "2."
  "\nI " "look’d, " "and " "lo, " "from " Cal "v’ry’s " "Cross "
  "\nA " heal "ing " foun "tain " "stream’d; "
  "\nIt " "cleansed " "my " "heart, " "and " "now " "I " "sing, "
  "\nPraise " "God, " "I " "am " re "deem’d! "
  "\nI " "am " re "deem’d! " 
  "\nI " "am " re "deem’d! " 
  "\nI’ll " "sing " "it " "o’er " "and " "o’er; "
  "\nI " "am " re "deem’d! " 
  "\nOh, " "praise " "the " "Lord, "
  "\nRe" "deem’d " "for " ev er "more!\n"

  \set stanza = "3."
  "\nThe " "debt " "is " "paid, " "my " "soul " "is " "free; "
  "\nAnd " "by " "His " migh "ty " "power, "
  "\nThe " "blood " "that " "wash’d " "my " "sins " a "way "
  "\nStill " cleans "eth " ev "’ry " "hour. "
  "\nI " "am " re "deem’d! " 
  "\nI " "am " re "deem’d! " 
  "\nI’ll " "sing " "it " "o’er " "and " "o’er; "
  "\nI " "am " re "deem’d! " 
  "\nOh, " "praise " "the " "Lord, "
  "\nRe" "deem’d " "for " ev er "more!\n"

  \set stanza = "4."
  "\nAll " glo "ry " "be " "to " Je "sus’ " "name, "
  "\nI " "know " "that " "He " "is " "mine! "
  "\nFor " "on " "my " "heart " "the " Spi "rit " "seals "
  "\nHis " "pledge " "of " "love " Di "vine. "
  "\nI " "am " re "deem’d! " 
  "\nI " "am " re "deem’d! " 
  "\nI’ll " "sing " "it " "o’er " "and " "o’er; "
  "\nI " "am " re "deem’d! " 
  "\nOh, " "praise " "the " "Lord, "
  "\nRe" "deem’d " "for " ev er "more!\n"

  \set stanza = "5."
  "\nAnd " "when " "I " "reach " "that " "world " "more " "bright "
  "\nThan " mor "tal " ev "er " "dream’d, "
  "\nI’ll " "cast " "my " "crown " "at " Je "sus’ " "feet, "
  "\nAnd " "cry " e "deem’d, " re "deem’d!” "
  "\nI " "am " re "deem’d! " 
  "\nI " "am " re "deem’d! " 
  "\nI’ll " "sing " "it " "o’er " "and " "o’er; "
  "\nI " "am " re "deem’d! " 
  "\nOh, " "praise " "the " "Lord, "
  "\nRe" "deem’d " "for " ev er "more! "
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
    output-suffix = midi-alto
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
            \addlyrics \wordsMidi
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
            \addlyrics \wordsMidi
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
