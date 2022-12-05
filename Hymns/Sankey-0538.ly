\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lead us, Heavenly Father."
  subtitle    = "Sankey No. 538"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Edmeston."
  meter       = \markup\smallCaps "8.7.8.7.8.7."
  piece       = \markup\smallCaps "Lynsters."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 a a gis | gis fis fis e | fis a4 4. gis8 | fis4 e dis2 |
  e4 fis fis gis | gis ais ais b | b bis dis4. cis8 | gis4 ais b2 |
  cis4. b8 e4 b | a4. gis8 cis4 fis, | gis4. fis8 a4 gis | cis, dis e2 |
}

alto = \relative {
  \autoBeamOff
  e'4 4 4 4 | dis4 4 4 e | cis cis bis4. cis8 | dis4 cis cis(bis) |
  cis4 dis dis e | gis fisis fisis gis | 4 4 4. 8 | e4 4 4(dis) |
  fis4. 8 e4 4 | cis4. 8 4 4 | 4. 8 c4 b | 4 4 2 |
}

tenor = \relative {
  \autoBeamOff
  gis4 cis c b | 4 a a gis | fis4. e8 dis4. e8 | fis4 fisis gis2 |
  gis4 a a gis | b cis cis b | dis dis bis4. cis8 | 4 4 b2 |
  dis4. 8 b4 4 | cis4. b8 a4 4 | eis4. fis8 dis4 e | b'4 a gis2 |
}

bass = \relative {
  \autoBeamOff
  e4 4 4 4 | b4 4 bis cis | a fis gis4. 8 | 4 4 2 |
  cis4 b b e | dis dis dis gis |
  gis fis fis4. e8 | cis4 fis b,2 |
  a'4. 8 gis4 4 | eis4. 8 fis4 4 | b,4. a8 fis4 gis | a b e,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Lead us, Heaven -- ly Fa -- ther, lead us,
  O'er the world's tem -- pes -- tuous sea;
  Guide us, guard us, keep us, feed us,
  For we have no help but Thee;
  Yet pos -- sess -- ing ev -- 'ry bless -- ing,
  If our God our Fa -- ther be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sa -- viour, breathe for -- give -- ness o'er us,
  All our weak -- ness Thou dost knowl
  Thou didst tread the earth be -- fore usm
  Thou didst feel its keen -- est woe;
  Lone and drea -- ry, faint and wea -- ry,
  Thro' the des -- ert Thou didst go.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Spi -- rit of our God des -- cend -- ing,
  Fill our hearts with heaven -- ly joy;
  Love with ev -- 'ry feel -- ing blend -- ing,
  Plea -- sures that can nev -- er cloy;
  Thus pro -- vi -- ded, par -- doned, gui -- ded,
  No -- thing can our peace de -- stroy.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lead " "us, " Heaven "ly " Fa "ther, " "lead " "us, "
  "\nO'er " "the " "world's " tem pes "tuous " "sea; "
  "\nGuide " "us, " "guard " "us, " "keep " "us, " "feed " "us, "
  "\nFor " "we " "have " "no " "help " "but " "Thee; "
  "\nYet " pos sess "ing " ev "'ry " bless "ing, "
  "\nIf " "our " "God " "our " Fa "ther " "be.\n"

  \set stanza = "2."
  "\nSa" "viour, " "breathe " for give "ness " "o'er " "us, "
  "\nAll " "our " weak "ness " "Thou " "dost " "knowl "
  "\nThou " "didst " "tread " "the " "earth " be "fore " "usm "
  "\nThou " "didst " "feel " "its " keen "est " "woe; "
  "\nLone " "and " drea "ry, " "faint " "and " wea "ry, "
  "\nThro' " "the " des "ert " "Thou " "didst " "go.\n"

  \set stanza = "3."
  "\nSpi" "rit " "of " "our " "God " des cend "ing, "
  "\nFill " "our " "hearts " "with " heaven "ly " "joy; "
  "\nLove " "with " ev "'ry " feel "ing " blend "ing, "
  "\nPlea" "sures " "that " "can " nev "er " "cloy; "
  "\nThus " pro vi "ded, " par "doned, " gui "ded, "
  "\nNo" "thing " "can " "our " "peace " de "stroy. "
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
