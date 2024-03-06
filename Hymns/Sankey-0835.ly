\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Spring up, O Well!"
%  subtitle    = "Sankey No. 835"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Telfer,"
  meter       = \markup\smallCaps "7.6. D."
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
  \textMark \markup { \box \bold "A" } s4 s1*4 s2
  \textMark \markup { \box \bold "B" } s2 s1*4 s2.
  \textMark \markup { \box \bold "C" } s4 s1*4 s2
  \textMark \markup { \box \bold "D" } s2 s1*4
  \textMark \markup { \box \bold "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  ees'4 | aes c bes aes | 4 g r aes | bes des c bes | c2. aes4 | c4 ees \bar "|" \break
  d4 c | bes(aes) g aes | g ees aes4. f8 | ees2. 4 | bes' a bes c | bes4 aes r \bar "|" \break
  c4 | ees aes, g aes | bes2. c4 | des c f ees | d(des) c des | c aes \bar "|" \break
  aes4 g | aes2.
  \section \sectionLabel \markup\smallCaps Chorus.
  ees4 | 4 f aes g | c4 bes aes c8. 16 | c4 c d d |
  ees2. c4 | des c f c | d des c des8. 16 | c4 aes aes g | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4 4 4 4 | 4 4 r4 4 | f des ees4 4 | 2. 4 | 4 4
  aes g | f2 ees4 4 | 4 bes d4. 8 | ees2. 4 | 4 4 4 4 | 4 4 r
  ees4 | 4 4 4 4 | 2. 4 | aes ges f aes | 4(ees) 4 f | ees c
  des4 ees8[ees] | c2. \section ees4 | des4 4 4 4 | ees des c ees8. 16 | e4  f aes f |
  g2. ees4 | aes4 4 4 8[g] | f4 ees aes4 8. 16 | 4 f8[ees] d4 des | c2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | c aes des c | c bes r aes | f bes aes g | aes2. c4 | c bes
  bes4 c | f,2 bes4 aes | bes g bes4. aes8 | g2. 4 | 4 fis g ees' | des c r
  c4 | c ees des c | g2. aes4 | 4 4 des c | bes2 aes4 4 | 4 4
  bes4 4 | aes2. \section g4 | g aes c bes | ees, f8[g] aes4 c8. 16 | 4 4 bes4 4 |
  bes2. c8[bes] | aes4 4 des c | aes bes ees f8. 16 | ees4 c bes bes | aes2.
}

bass = \relative {
  \autoBeamOff
  aes4 | 4 4 g aes | ees4 4 r c | des4 bes ees4 4 | aes2. 4 | 4 g
  f4 ees | d2 ees4 c | bes4 4 4. 8 | ees2. 4 | 4 4 4 4 | g aes r
  aes4 | 4 c bes aes | ees2. aes4 | f ees des ees | f(g) aes des, | ees f
  bes,4 ees | aes,2. \section ees'4 | 4 4 4 4 | 4 4 aes4 8. 16 | g4 aes f bes, |
  ees2. aes8[g] | f4 ees des ees | f g aes des,8. 16 | ees4 f bes, ees | aes,2.
}

chorus = \lyricmode {
  We sing the song that Is -- rael sang
  In the des -- ert long a -- go:
  “Spring up, O well, Spring up, O well;”
  Let the liv -- ing wa -- ters flow.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Spring up, O well of bless -- ing,
  Spring in our midst to -- day;
  For thirs -- ty souls are long -- ing
  To drink a -- bun -- dant -- ly.
  Come from the hid -- den foun -- tains,
  Come in a brim -- ming flood:
  Re -- fresh us in the des -- ert
  Thou pre -- cious gift of God.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Spring up, O well of bless -- ing,
  We cry to Thee to -- day;
  Break forth in migh -- ty tor -- rent,
  As now we sing and pray.
  The souls that round us per -- ish—
  The old, the young, the strong;
  To Thee, by right and ran -- som,
  The Lord of Hosts be -- long.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Spring up, O well of bless -- ing,
  We sing to Thee to -- day;
  The “prin -- ces” and the “no -- bles”
  They great com -- mand o -- bey;
  In toll -- ing and in la -- bour,
  A -- mid the burn -- ing sand,
  Spring up, flow forth and glad -- den
  The whole ex -- pec -- tant land.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Spring " "up, " "O " "well " "of " bless "ing, "
  "\nSpring " "in " "our " "midst " to "day; "
  "\nFor " thirs "ty " "souls " "are " long "ing "
  "\nTo " "drink " a bun dant "ly. "
  "\nCome " "from " "the " hid "den " foun "tains, "
  "\nCome " "in " "a " brim "ming " "flood: "
  "\nRe" "fresh " "us " "in " "the " des "ert "
  "\nThou " pre "cious " "gift " "of " "God. "
  "\nWe " "sing " "the " "song " "that " Is "rael " "sang "
  "\nIn " "the " des "ert " "long " a "go: "
  "\n“Spring " "up, " "O " "well, " "Spring " "up, " "O " "well;” "
  "\nLet " "the " liv "ing " wa "ters " "flow.\n"

  \set stanza = "2."
  "\nSpring " "up, " "O " "well " "of " bless "ing, "
  "\nWe " "cry " "to " "Thee " to "day; "
  "\nBreak " "forth " "in " migh "ty " tor "rent, "
  "\nAs " "now " "we " "sing " "and " "pray. "
  "\nThe " "souls " "that " "round " "us " per "ish— "
  "\nThe " "old, " "the " "young, " "the " "strong; "
  "\nTo " "Thee, " "by " "right " "and " ran "som, "
  "\nThe " "Lord " "of " "Hosts " be "long. "
  "\nWe " "sing " "the " "song " "that " Is "rael " "sang "
  "\nIn " "the " des "ert " "long " a "go: "
  "\n“Spring " "up, " "O " "well, " "Spring " "up, " "O " "well;” "
  "\nLet " "the " liv "ing " wa "ters " "flow.\n"

  \set stanza = "3."
  "\nSpring " "up, " "O " "well " "of " bless "ing, "
  "\nWe " "sing " "to " "Thee " to "day; "
  "\nThe " “prin "ces” " "and " "the " “no "bles” "
  "\nThey " "great " com "mand " o "bey; "
  "\nIn " toll "ing " "and " "in " la "bour, "
  "\nA" "mid " "the " burn "ing " "sand, "
  "\nSpring " "up, " "flow " "forth " "and " glad "den "
  "\nThe " "whole " ex pec "tant " "land. "
  "\nWe " "sing " "the " "song " "that " Is "rael " "sang "
  "\nIn " "the " des "ert " "long " a "go: "
  "\n“Spring " "up, " "O " "well, " "Spring " "up, " "O " "well;” "
  "\nLet " "the " liv "ing " wa "ters " "flow. "
}

wordsMidiMen = \lyricmode {
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses { \soprano \nl } \bar "|." }
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
            \new Voice { \global \repeat unfold \verses {\tenor \nl} }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses {\bass \nl} }
          >>
        >>
    \midi {}
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
