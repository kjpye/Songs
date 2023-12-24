\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Master's Call."
  subtitle    = "Sankey No. 756"
  subsubtitle = "Sankey 880 No. 476"
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
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'4 | c4. 8 des c bes aes | f4.(g8) aes4 f | ees4. 8 aes4 c | bes2. \bar "|" \break
  aes4 | c4. 8 des c bes aes | f4.(g8) aes4 f | ees4. 8 f4 g | aes2.
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  aes8[c] ees4. des8 f ees c bes | aes2 ees4 aes8[bes] | c4. 8 des4 c | bes2. \bar "|" \break
  aes8[c] | ees4. d8 f ees c bes | aes2 f4 aes8[bes] | c4. aes8 bes4 4 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4. 8 f ees8 8 8 | des4.(ees8) f4 des | ees4. des8 c4 ees | 2.
  c4 | ees4. 8 f ees8 8 8 | des4.(ees8) f4 des | c4. 8 des4 4 | c2. \section
  ees4 | aes4. 8 8 8 8 ees | 2 c4 ees | aes4. 8 bes4 aes | g2.
  ees4 | aes4. 8 8 8 ees des | c2 des4 ees8[f] | ees4. c8 des4 4 | c2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4. 8 8 8 g aes | 2 4 4 | 4. 8 g4 bes | aes2.
  aes4 | 4. 8 8 8 g aes | 2 4 4 | 4. 8 g4 bes | aes2. \section
  c4 | 4. b8 des c ees des | c2 aes4 c8[des] | ees4. 8 4 4 | 2.
  c4 | 4. b8 des8 c aes g | aes2 4 4 | 4. ees8 g4 4 | aes2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | aes'4. 8 aes,8 8 bes c | des2 4 4 | c4. bes8 aes4 4 | ees'2.
  aes,4 | aes'4. 8 aes,8 8 bes c | des2 4 4 | ees4. 8 4 4 | aes,2. \section
  aes'4 | 4. 8 8 8 ees8 8 | aes2 4 4 | 4. 8 g4 aes | ees2.
  aes4 | 4. 8 8 8 8 ees | f2 des4 c8[des] | ees4. 8 4 4 | aes,2.
}

chorus = \lyricmode {
  Go forth, with pa -- tience, love and kind -- ness;
  And in the Mas -- ter's name,
  The bles -- sed news of free sal -- va -- tion
  To all the world pro -- claim!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold the Mas -- ter now is call -- ing
  For reap -- ers brave and true;
  The gol -- den har -- vest fields are wait -- ing,
  But la -- bour -- ers are few.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go forth, and res -- cue those that per -- ish,
  Where sin and dark -- ness reign;
  Go, lend a help -- ing hand to save them,
  And break the temp -- ter's chain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go, bid the poor with joy and glad -- ness
  The feast of love to share;
  And He, the Bread of Life E -- ter -- nal,
  Will make them wel -- come there.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Go forth, the sum -- mer days are wa -- ning,
  Their light will soon be o'er;
  The sol -- emn hour is quick -- ly com -- ing,
  When we can work no more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold " "the " Mas "ter " "now " "is " call "ing "
  "\nFor " reap "ers " "brave " "and " "true; "
  "\nThe " gol "den " har "vest " "fields " "are " wait "ing, "
  "\nBut " la bour "ers " "are " "few. "
  "\nGo " "forth, " "with " pa "tience, " "love " "and " kind "ness; "
  "\nAnd " "in " "the " Mas "ter's " "name, "
  "\nThe " bles "sed " "news " "of " "free " sal va "tion "
  "\nTo " "all " "the " "world " pro "claim!\n"

  \set stanza = "2."
  "\nGo " "forth, " "and " res "cue " "those " "that " per "ish, "
  "\nWhere " "sin " "and " dark "ness " "reign; "
  "\nGo, " "lend " "a " help "ing " "hand " "to " "save " "them, "
  "\nAnd " "break " "the " temp "ter's " "chain. "
  "\nGo " "forth, " "with " pa "tience, " "love " "and " kind "ness; "
  "\nAnd " "in " "the " Mas "ter's " "name, "
  "\nThe " bles "sed " "news " "of " "free " sal va "tion "
  "\nTo " "all " "the " "world " pro "claim!\n"

  \set stanza = "3."
  "\nGo, " "bid " "the " "poor " "with " "joy " "and " glad "ness "
  "\nThe " "feast " "of " "love " "to " "share; "
  "\nAnd " "He, " "the " "Bread " "of " "Life " E ter "nal, "
  "\nWill " "make " "them " wel "come " "there. "
  "\nGo " "forth, " "with " pa "tience, " "love " "and " kind "ness; "
  "\nAnd " "in " "the " Mas "ter's " "name, "
  "\nThe " bles "sed " "news " "of " "free " sal va "tion "
  "\nTo " "all " "the " "world " pro "claim!\n"

  \set stanza = "4."
  "\nGo " "forth, " "the " sum "mer " "days " "are " wa "ning, "
  "\nTheir " "light " "will " "soon " "be " "o'er; "
  "\nThe " sol "emn " "hour " "is " quick "ly " com "ing, "
  "\nWhen " "we " "can " "work " "no " "more. "
  "\nGo " "forth, " "with " pa "tience, " "love " "and " kind "ness; "
  "\nAnd " "in " "the " Mas "ter's " "name, "
  "\nThe " bles "sed " "news " "of " "free " sal va "tion "
  "\nTo " "all " "the " "world " pro "claim! "
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
