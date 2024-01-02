\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeds of Promise."
  subtitle    = "Sankey No. 768"
  subsubtitle = "N. H. No. 105"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. A. Fillmore."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jessie H. Brown."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*12
  \textMark \markup { \box \bold "B" } s4.*12
  \textMark \markup { \box \bold "C" } s2 s4.*8
  \textMark \markup { \box \bold "D" }    s4.*12
  \textMark \markup { \box \bold "E" }    s4.*10 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=105
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4. | 8[f] g aes4. bes | c4 aes8 f4. bes | aes4 g8 f4. g | aes4.(g) \bar "|" \break
  f4. | ees8[f] g aes4. bes | c4 aes8 f4. bes | aes4 g8 f4. g | aes4.~4.
  \section \sectionLabel \markup\smallCaps Chorus. \break \time 12/8 \partial 2
  ees8 8[g] bes | des4.~4.~4 g,8 aes4 c8 | ees,4.~4.~4 8 8[g] bes | \break
  des4.~4.~4. ees | c4.~4.~4 8 des4 8 | f,4.~4.~4 des'8 c4 8 | \break
  ees,4.~4.~4 8 8[aes] c | ees4.~4.~4. g, | aes4.~4.~4
}

alto = \relative {
  \autoBeamOff
  ees'4. | c4 8 4. ees | 4 8 des4. f |ees4 8 des4. 4. | c4.(ees)
  des4. | c4 8 4. ees | 4 8 des4. f | ees4 8 des4. 4. | c~c \section
  \apart r8 r4 r8 | r4 ees8 4 8 4 r8 r4 r8 | r4 ees8 4 des8 c4 r8 r4 r8 |
  r4 g'8 4 8 4 8 4 ees8 | 4 8 4 8 4 r8 r4 r8 | r4 des8 4 8 4 r8 r4 r8 |
  r4 ees8 4 des8 c4 r8 r4 r8 | r4 aes'8 4 8 g4 ees8 4 8 | 4 8 f4 8 ees4
}

tenor = \relative {
  \autoBeamOff
  ees4. | aes4 8 4. g | aes4 8 4. des | c4 bes8 4. 4. | aes4.~4.
  aes4. | 4 8 4. g | aes4 8 4. des | c4 bes8 4. 4. | aes~aes \section
  r8 r4 r8 | r4 g8 4 8 4 r8 r4 r8 | r4 aes8 4 g8 aes4 r8 r4 r8 |
  r4 bes8 4 8 4 8 4 g8 | aes4 8 4 8 4 r8 r4 r8 | r4 aes8 4 8 4 r8 r4 r8 |
  r4 aes8 4 g8 aes4 r8 r4 r8 | r4 c8 4 8 bes4 g8 bes4 des8 | c4 8 des4 8 c4
}

bass = \relative {
  \autoBeamOff
  ees4. | aes,4 8 4. ees' | aes4 c,8 des4. 4. | ees4 8 4. 4. | aes,4.~4.
  aes4. | 4 8 4. ees' | aes4 c,8 des4. bes | ees4 8 4. 4. | aes,4.~4. \section
  r8 r4 r8 | r4 ees'8 4 8 4 r8 r4 r8 | r4 c8 4 bes8 aes4 r8 r4 r8 |
  r4 ees'8 4 8 4 8 4 8 | aes4 8 4 8 4 r8 r4 r8 | r4 des,8 4 8 4 r8 r4 r8 |
  r4 c8 4 bes8 aes4 r8 r4 r8 | r4 ees'8 4 8 4. 4. | aes,4.~4.~4
}

chorus = \lyricmode {
  Then day by day a -- long your way
  The seeds of pro -- mise cast, the seeds of pro -- mise cast,
  That ri -- pen'd grain from hill and plain
  Be ga -- ther'd home at last,
  Be ga -- ther'd home at last.
}

chorusSop = \lyricmode {
  \small
  \repeat unfold 28 ""
  Then day by day __ a -- long your way __
  The seeds of pro -- mise cast, __
  That ri -- pen'd grain __ from hill and plain __
  Be ga -- ther'd home __ at last. __
}

chorusBass = \lyricmode {
  \small
  \repeat unfold 28 ""
  \repeat unfold 28 ""
  Be ga -- ther'd home at last. __
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, scat -- ter seeds of lov -- ing deeds
  A -- long the fer -- tile field;
  For grain will grow from what you sow,
  And fruit -- ful har -- vest yield.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' sown in tears thro' wea -- ry years.
  The seed will sure -- ly live;
  Tho' great the cost, it is not lost,
  For God will fruit -- age give.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The har -- vest- home of God will come;
  And af -- ter toil and care,
  With joy un -- told your sheaves of gold
  Will all be gar -- nered there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " scat "ter " "seeds " "of " lov "ing " "deeds "
  "\nA" "long " "the " fer "tile " "field; "
  "\nFor " "grain " "will " "grow " "from " "what " "you " "sow, "
  "\nAnd " fruit "ful " har "vest " "yield. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last, "
  "\nBe " ga "ther'd " "home " "at " "last.\n"

  \set stanza = "2."
  "\nTho' " "sown " "in " "tears " "thro' " wea "ry " "years. "
  "\nThe " "seed " "will " sure "ly " "live; "
  "\nTho' " "great " "the " "cost, " "it " "is " "not " "lost, "
  "\nFor " "God " "will " fruit "age " "give. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last, "
  "\nBe " ga "ther'd " "home " "at " "last.\n"

  \set stanza = "3."
  "\nThe " har vest "home " "of " "God " "will " "come; "
  "\nAnd " af "ter " "toil " "and " "care, "
  "\nWith " "joy " un "told " "your " "sheaves " "of " "gold "
  "\nWill " "all " "be " gar "nered " "there. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last, "
  "\nBe " ga "ther'd " "home " "at " "last. "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Oh, " scat "ter " "seeds " "of " lov "ing " "deeds "
  "\nA" "long " "the " fer "tile " "field; "
  "\nFor " "grain " "will " "grow " "from " "what " "you " "sow, "
  "\nAnd " fruit "ful " har "vest " "yield. "
  "\nThen " "day " "by " "day "  a "long " "your " "way " 
  "\nThe " "seeds " "of " pro "mise " "cast, " 
  "\nThat " ri "pen'd " "grain "  "from " "hill " "and " "plain " 
  "\nBe " ga "ther'd " "home "  "at " "last.\n" 

  \set stanza = "2."
  "\nTho' " "sown " "in " "tears " "thro' " wea "ry " "years. "
  "\nThe " "seed " "will " sure "ly " "live; "
  "\nTho' " "great " "the " "cost, " "it " "is " "not " "lost, "
  "\nFor " "God " "will " fruit "age " "give. "
  "\nThen " "day " "by " "day "  a "long " "your " "way " 
  "\nThe " "seeds " "of " pro "mise " "cast, " 
  "\nThat " ri "pen'd " "grain "  "from " "hill " "and " "plain " 
  "\nBe " ga "ther'd " "home "  "at " "last.\n" 

  \set stanza = "3."
  "\nThe " har vest "home " "of " "God " "will " "come; "
  "\nAnd " af "ter " "toil " "and " "care, "
  "\nWith " "joy " un "told " "your " "sheaves " "of " "gold "
  "\nWill " "all " "be " gar "nered " "there. "
  "\nThen " "day " "by " "day "  a "long " "your " "way " 
  "\nThe " "seeds " "of " pro "mise " "cast, " 
  "\nThat " ri "pen'd " "grain "  "from " "hill " "and " "plain " 
  "\nBe " ga "ther'd " "home "  "at " "last. " 
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Oh, " scat "ter " "seeds " "of " lov "ing " "deeds "
  "\nA" "long " "the " fer "tile " "field; "
  "\nFor " "grain " "will " "grow " "from " "what " "you " "sow, "
  "\nAnd " fruit "ful " har "vest " "yield. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last.\n"

  \set stanza = "2."
  "\nTho' " "sown " "in " "tears " "thro' " wea "ry " "years. "
  "\nThe " "seed " "will " sure "ly " "live; "
  "\nTho' " "great " "the " "cost, " "it " "is " "not " "lost, "
  "\nFor " "God " "will " fruit "age " "give. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last.\n"

  \set stanza = "3."
  "\nThe " har vest "home " "of " "God " "will " "come; "
  "\nAnd " af "ter " "toil " "and " "care, "
  "\nWith " "joy " un "told " "your " "sheaves " "of " "gold "
  "\nWill " "all " "be " gar "nered " "there. "
  "\nThen " "day " "by " "day " a "long " "your " "way "
  "\nThe " "seeds " "of " pro "mise " "cast, " "the " "seeds " "of " pro "mise " "cast, "
  "\nThat " ri "pen'd " "grain " "from " "hill " "and " "plain "
  "\nBe " ga "ther'd " "home " "at " "last. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiMen
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner"  \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \chorusBass
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
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner"  { \repeat unfold \verses \alto    }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSop }
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
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusBass }
        >>
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 19)

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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
