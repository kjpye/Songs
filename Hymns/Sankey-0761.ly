\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ho! Reapers of Life's Harvest."
  subtitle    = "Sankey No. 761"
  subsubtitle = "Sankey 880 No. 101"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. B. Woodbury."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "7.6.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic "Spirited." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | c4. 8 b4 a | g4 2 4 | c4. 8 a4 c | g2 r4 \bar "|" \break
  g4 | c4. 8 b4 a | g4 2 4 | a4. d8 c4 b | c2 r4 \bar "|" \break
  g4 | d'4. 8 c4 d | e c2 g4 | d'4. 8 c4 d | e2. \bar "|" \break
  g,4 | c4. 8 b4 a | g4 2 4 | a4. d8 c4 b | c2.
}

alto = \relative {
  \autoBeamOff
  e'4 | 4. 8 g4 f | e4 2 4 | 4. 8 f4 4 | e2 r4
  e4 | 4. 8 g4 f | e4 2 c4 | f4. 8 e4 d | e2 r4
  e4 | r4. 8 e4 g | 4 e2 4 | f4. 8 e4 g | 2.
  e4 | 4. 8 g4 f | e4 2 c4 | f4. 8 e4 d | e2.
}

tenor = \relative {
  \autoBeamOff
  c'4 | g4. 8 c4 4 | 4 2 4 | 4. 8 4 a | c2 r4
  c4 g4. 8 c4 4 | 4 2 4 | 4. a8 g4 4 | 2 r4
  c4 | b4. 8 c4 b4 | c4 2 4 | b4. 8 c4 b | c2.
  c4 | g4. 8 c4 c | 4 2 4 | c4. a8 g4 4 | 2.
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 4 4 | 4 2 4 | 4. 8 4 4 | 2 r4
  c4 | 4. 8 4 4 | 4 2 e4 | f4. 8 g4 4 | c,2 r4
  g'4 | 4. 8 4 4 | c4 2 g4 | 4. 8 4 4 | c2.
  c,4 | 4. 8 4 4 | 4 2 e4 | f4. 8 g4 4 | c,2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho! reap -- ers of life's har -- vest,
  Why stand with rust -- ed blade.
  Un -- til the night draws round you,
  And day be -- gins to fade?
  Why stand ye i -- dle wait -- ing
  For reap -- ers more to come?
  The gold -- en morn is pass -- ing—
  Why sit ye i -- dle, dumb?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thrust in your sharp -- ened sic -- kle,
  And ga -- ther in the grain,
  The night is fast ap -- proach -- ing,
  And soon will come a -- gain.
  The Mas -- ter calls for reap -- ers,
  And shall He call in vain?
  Shall sheaves lie there un -- ga -- thered,
  And waste up -- on the plain?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come down from hill and moun -- tain
  In morn -- ing's rud -- dy glow,
  Nor wait un -- til the di -- al
  Points to the noon be -- low;
  And come with the strong sin -- ew,
  Nor faint in heat or cold;
  And pause not till the ev -- 'ning
  Draws round its wealth of gold.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Mount up the heights of Wis -- dom,
  And crush each er -- ror low;
  Keep back no words of know -- ledge
  That hu -- man hearts should know.
  Be faith -- ful to thy mis -- sion,
  In ser -- vice of they Lord;
  And then a gold -- en chap -- let
  Shall be thy just re -- ward.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho! " reap "ers " "of " "life's " har "vest, "
  "\nWhy " "stand " "with " rust "ed " "blade. "
  "\nUn" "til " "the " "night " "draws " "round " "you, "
  "\nAnd " "day " be "gins " "to " "fade? "
  "\nWhy " "stand " "ye " i "dle " wait "ing "
  "\nFor " reap "ers " "more " "to " "come? "
  "\nThe " gold "en " "morn " "is " pass "ing— "
  "\nWhy " "sit " "ye " i "dle, " "dumb?\n"

  \set stanza = "2."
  "\nThrust " "in " "your " sharp "ened " sic "kle, "
  "\nAnd " ga "ther " "in " "the " "grain, "
  "\nThe " "night " "is " "fast " ap proach "ing, "
  "\nAnd " "soon " "will " "come " a "gain. "
  "\nThe " Mas "ter " "calls " "for " reap "ers, "
  "\nAnd " "shall " "He " "call " "in " "vain? "
  "\nShall " "sheaves " "lie " "there " un ga "thered, "
  "\nAnd " "waste " up "on " "the " "plain?\n"

  \set stanza = "3."
  "\nCome " "down " "from " "hill " "and " moun "tain "
  "\nIn " morn "ing's " rud "dy " "glow, "
  "\nNor " "wait " un "til " "the " di "al "
  "\nPoints " "to " "the " "noon " be "low; "
  "\nAnd " "come " "with " "the " "strong " sin "ew, "
  "\nNor " "faint " "in " "heat " "or " "cold; "
  "\nAnd " "pause " "not " "till " "the " ev "'ning "
  "\nDraws " "round " "its " "wealth " "of " "gold.\n"

  \set stanza = "4."
  "\nMount " "up " "the " "heights " "of " Wis "dom, "
  "\nAnd " "crush " "each " er "ror " "low; "
  "\nKeep " "back " "no " "words " "of " know "ledge "
  "\nThat " hu "man " "hearts " "should " "know. "
  "\nBe " faith "ful " "to " "thy " mis "sion, "
  "\nIn " ser "vice " "of " "they " "Lord; "
  "\nAnd " "then " "a " gold "en " chap "let "
  "\nShall " "be " "thy " "just " re "ward. "
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
