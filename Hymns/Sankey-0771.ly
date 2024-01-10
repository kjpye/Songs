\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cast thy Bread upon the Waters."
  subtitle    = "Sankey No. 771"
  subsubtitle = "N. H. No. 86"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Anon"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*3
  \textMark \markup { \box \bold "B" } s1.*3
  \textMark \markup { \box \bold "C" } s1.*3
  \textMark \markup { \box \bold "D" } s1.*3
  \textMark \markup { \box \bold "E" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  gis'2 fis4 e2 fis4 | gis2 fis4 gis8 b4. r4 | b2 cis4 b2 gis4 |
  gis4(fis) e fis2. | gis2 fis4 e2 fis4 | gis2 fis4 gis8 b4. r4 |
  b2 cis4 b(e,) a | gis2 fis4 e2. | fis2 gis4 a2 cis4 |
  b2 a4 8 gis4. r4 | fis2 b4 dis2 b4 | cis4(b) ais b2(a4) |
  gis2 fis4 e2 fis4 | gis2 fis4 gis8 b4. r4 | e4(b) cis b(e,) a | gis2 fis4 e2. |
}

alto = \relative {
  \autoBeamOff
  e'2 dis4 e2 dis4 | e2 dis4 e8 4. r4 | e2 4 2 4 |
  e2 cis4 dis2. | e2 dis4 e2 dis4 | e2 dis4 e8 4. r4 |
  e2 4 2 4 | e2 dis4 e2. | dis2 e4 fis2 a4 |
  gis2 fis4 8 e4. r4 | dis2 4 fis2 4 | e(dis) e dis2(fis4) |
  e2 dis4 e2 dis4 | e2 dis4 e8 4. r4 | gis4(e) e4 2 4 | e2 dis4 e2. |
}

tenor = \relative {
  \autoBeamOff
  b2 a4 gis2 b4 | b2 4 8 gis4. r4 | gis2 a4 gis2 b4 |
  ais2 4 b2. | 2 a4 gis2 b4 | 2 4 8 gis4. r4 |
  gis2 a4 gis2 cis4 | b2 a4 gis2. | b2 4 2 dis4 |
  e4(b) 4 8 4. r4 | b2 4 2 4 | ais(b) cis b2. |
  b2 a4 gis2 b4 | 2 4 8 gis4. r4 | b4(gis) a gis2 cis4 | b2 a4 gis2. |
}

bass = \relative {
  \autoBeamOff
  e2 b4 cis2 b4 |e2 b4 e8 4. r4 | 2 4 2 4 |
  cis2 fis4 b,2. | e2 b4 cis2 b4 | e2 b4 e8 4. r4 |
  e2 4 4(cis) a | b2 4 e2. | b2 4 2 4 |
  b2 4 e8 4. r4 | b2 4 2 dis4 | fis2 4 b,2. |
  e2 b4 cis2 b4 | e2 b4 e8 4. r4 | e2 4 4(cis) a | b2 4 e2. |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  “Cast thy bread up -- on the wa -- ters,”
  Ye who have but scant sup -- ply;
  An -- gel eyes will watch a -- bove it,
  You shall find it by and by.
  He who in His righ -- teous bal -- ance,
  Doth each hu -- man ac -- tion weigh,
  Will your sac -- ri -- fice re -- mem -- ber,
  Will your lov -- ing deeds re -- pay,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “Cast thy bread up -- on the wa -- ters,”
  Sad and wea -- ry, worn with care;
  Oft -- en sit -- ting in the sha -- dow—
  Have you not a crumb to spare?
  Can you not to those a -- round you
  Sing some lit -- tle song of hope,
  As you look with long -- ing vis -- ion
  Thro' faith's migh -- ty tel -- es -- cope?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  “Cast thy bread up -- on the wa -- ters,”
  You who have a -- bun -- dant store;
  It may float on many a bil -- low,
  It may strand on many a shore.
  You may think it lost for ev -- er;
  But, as sure as God is true,
  In this life, or in the oth -- er,
  It will yet re -- turn to you.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“Cast " "thy " "bread " up "on " "the " wa "ters,” "
  "\nYe " "who " "have " "but " "scant " sup "ply; "
  "\nAn" "gel " "eyes " "will " "watch " a "bove " "it, "
  "\nYou " "shall " "find " "it " "by " "and " "by. "
  "\nHe " "who " "in " "His " righ "teous " bal "ance, "
  "\nDoth " "each " hu "man " ac "tion " "weigh, "
  "\nWill " "your " sac ri "fice " re mem "ber, "
  "\nWill " "your " lov "ing " "deeds " re "pay,\n"

  \set stanza = "2."
  "\n“Cast " "thy " "bread " up "on " "the " wa "ters,” "
  "\nSad " "and " wea "ry, " "worn " "with " "care; "
  "\nOft" "en " sit "ting " "in " "the " sha "dow— "
  "\nHave " "you " "not " "a " "crumb " "to " "spare? "
  "\nCan " "you " "not " "to " "those " a "round " "you "
  "\nSing " "some " lit "tle " "song " "of " "hope, "
  "\nAs " "you " "look " "with " long "ing " vis "ion "
  "\nThro' " "faith's " migh "ty " tel es "cope? "

  \set stanza = "3."
  "\n“Cast " "thy " "bread " up "on " "the " wa "ters,” "
  "\nYou " "who " "have " a bun "dant " "store; "
  "\nIt " "may " "float " "on " "many " "a " bil "low, "
  "\nIt " "may " "strand " "on " "many " "a " "shore. "
  "\nYou " "may " "think " "it " "lost " "for " ev "er; "
  "\nBut, " "as " "sure " "as " "God " "is " "true, "
  "\nIn " "this " "life, " "or " "in " "the " oth "er, "
  "\nIt " "will " "yet " re "turn " "to " "you. "
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
