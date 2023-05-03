\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He is Precious"
  subtitle    = "Sankey No. 611"
  subsubtitle = "C. C. No. 265"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
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
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1   s2.
  \textMark \markup { \box \bold "B" } s4 s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2
  \textMark \markup { \box \bold "F" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  cis''8. b16 | a4 e e a8 gis | gis fis fis fis fis4 \bar "|" \break
  b8 b | a4 gis fis e | cis'2. 8. b16 | a4 e e a8 g |
  g8 fis8 8 8 4 b8 8 | a4 gis fis gis | a2. \section \sectionLabel \markup\smallCaps Chorus.
  a8 b | cis8 8 8  8 a4 d8 cis | 8  b4.~4 8 cis |
  d8 8 8 8 gis,4 e'8 d | d cis4.~4 8 d | e8 8 8 8 \bar "|" \break
  a,4 cis8 e | e d d d fis,4 cis'8 b | a4 4 gis b | a2.
}

alto = \relative {
  \autoBeamOff
  e'8. d16 | cis4 4 4 e8 8 | e d d d d4
  fis8 8 | e4 e d d | e2. 8. d16 | cis4 4 4 e8 8 |
  e8 d d d d4 fis8 8 | e4 4 d d | cis2. \section
  cis8 d | e e e e cis4 fis8 e | 8 4.~4 8 8 |
  e8 8 8 8 4 8 8 | 8 4.~4 8 8 | 8 8 8 8
  e4 8 gis | fis8 8 8 8 d4 fis8 8 | e4 4 4 4 | e2.
}

tenor = \relative {
  \autoBeamOff
  e8. 16 | 4 a a a8 8 | 8 8 8 8 4
  d8 8 | cis4 b a gis | a2. e8. 16 | 4 a a a8 8 |
  a8 8 8 8 4 d8 8 | cis4 b a e | 2.
  e8 8 | a a a a e4 a8 8 | a gis4.~4 8 a |
  b8 8 8 8 4 cis8 b | b a4.~4 8 b | cis8 8 8 8
  cis4 a8 8 | a a a a a4 e'8 d | cis4 4 b d | <a cis>2.
}

bass = \relative {
  \autoBeamOff
  a,8. 16 | 4 4 4 cis8 8 | d8 8 8 8 4
  d8 8 | e4 4 4 4 | a2. a,8. 16 | 4 4 4 cis8 8 |
  d8 8 8 8 4 8 8 | e4 4 4 4 | a,2. \section
  a8 8 | 8 8 8 8 4 8 8 | e'8 4.~4 8 8 |
  e8 8 8 8 4 8 gis | a8 4.~4 8 8 | 8 8 8 8
  a4 8 cis, | d8 8 8 8 4 8 8 | e4 4 4 4 | a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He is pre -- cious un -- to all that be -- lieve Him,
  He is pre -- cious un -- to all that re -- ceive Him.
  Oh, the bless -- ings we may  claim when we ga -- ther in is name,
  For the Lord will an -- swer prayer.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  When the heart made pure is the tem -- ple of the Lord,
  And we feel His pre -- sence there,
  Oh, the joy that comes when we ga -- ther in His name,
  At the hal -- lowed hour of prayer.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There are floods of light from His glo -- ry that de -- scend,
  When we think our pros -- pect dim;
  There are heights of love that His chil -- dren may at -- tain,
  By a clo -- ser walk with Him.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He will cheer us on when we fol -- low where He leads,
  And our hearts with glad -- ness fill;
  For we know by faith that His ev -- er -- last -- ing arms
  Are be -- neath and round us still.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Let us grow in grace and a know -- ledge of the truth,
  Let us dwell in per -- fect peace;
  Till we all clasp hands in the pal -- ace of the King,
  Where our joy shall nev -- er cease.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "the " "heart " "made " "pure " "is " "the " tem "ple " "of " "the " "Lord, "
  "\nAnd " "we " "feel " "His " pre "sence " "there, "
  "\nOh, " "the " "joy " "that " "comes " "when " "we " ga "ther " "in " "His " "name, "
  "\nAt " "the " hal "lowed " "hour " "of " "prayer. "
  "\nHe " "is " pre "cious " un "to " "all " "that " be "lieve " "Him, "
  "\nHe " "is " pre "cious " un "to " "all " "that " re "ceive " "Him. "
  "\nOh, " "the " bless "ings " "we " "may "  "claim " "when " "we " ga "ther " "in " "is " "name, "
  "\nFor " "the " "Lord " "will " an "swer " "prayer.\n"

  \set stanza = "2."
  "\nThere " "are " "floods " "of " "light " "from " "His " glo "ry " "that " de "scend, "
  "\nWhen " "we " "think " "our " pros "pect " "dim; "
  "\nThere " "are " "heights " "of " "love " "that " "His " chil "dren " "may " at "tain, "
  "\nBy " "a " clo "ser " "walk " "with " "Him. "
  "\nHe " "is " pre "cious " un "to " "all " "that " be "lieve " "Him, "
  "\nHe " "is " pre "cious " un "to " "all " "that " re "ceive " "Him. "
  "\nOh, " "the " bless "ings " "we " "may "  "claim " "when " "we " ga "ther " "in " "is " "name, "
  "\nFor " "the " "Lord " "will " an "swer " "prayer.\n"

  \set stanza = "3."
  "\nHe " "will " "cheer " "us " "on " "when " "we " fol "low " "where " "He " "leads, "
  "\nAnd " "our " "hearts " "with " glad "ness " "fill; "
  "\nFor " "we " "know " "by " "faith " "that " "His " ev er last "ing " "arms "
  "\nAre " be "neath " "and " "round " "us " "still. "
  "\nHe " "is " pre "cious " un "to " "all " "that " be "lieve " "Him, "
  "\nHe " "is " pre "cious " un "to " "all " "that " re "ceive " "Him. "
  "\nOh, " "the " bless "ings " "we " "may "  "claim " "when " "we " ga "ther " "in " "is " "name, "
  "\nFor " "the " "Lord " "will " an "swer " "prayer.\n"

  \set stanza = "4."
  "\nLet " "us " "grow " "in " "grace " "and " "a " know "ledge " "of " "the " "truth, "
  "\nLet " "us " "dwell " "in " per "fect " "peace; "
  "\nTill " "we " "all " "clasp " "hands " "in " "the " pal "ace " "of " "the " "King, "
  "\nWhere " "our " "joy " "shall " nev "er " "cease. "
  "\nHe " "is " pre "cious " un "to " "all " "that " be "lieve " "Him, "
  "\nHe " "is " pre "cious " un "to " "all " "that " re "ceive " "Him. "
  "\nOh, " "the " bless "ings " "we " "may "  "claim " "when " "we " ga "ther " "in " "is " "name, "
  "\nFor " "the " "Lord " "will " an "swer " "prayer. "
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
