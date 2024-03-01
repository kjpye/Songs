\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sunshine on the Hill."
  subtitle    = "Sankey No. 825"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. H. Gabriel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7. D."
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
  \textMark \markup { \box \bold "A" } s4.*9
  \textMark \markup { \box \bold "B" } s4.*10
  \textMark \markup { \box \bold "C" } s4.*11
  \textMark \markup { \box \bold "D" } s4.*9
  \textMark \markup { \box \bold "E" } s4.*10
  \textMark \markup { \box \bold "F" } s4.*11
  \textMark \markup { \box \bold "G" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 d8 | f4. ees aes4 bes8 | aes4. g f4 fes8 | ees4.~4 g8 \bar "|" \break
  bes4 des8 | c4.~c ees,4 d8 | f4. ees aes4 bes8 | aes4. g4. 4 aes8 |
  bes4.~4 des8 c4 bes8 | aes4.~4. 4 8 | 4. bes aes4 bes8 | c4. g \bar "|" \break
  g4 8 | aes4.~4 c8 bes4 aes8 | bes4.~4. c4 des8 | ees4.~4 f8 \bar "|" \break
  ees4 des8 | c ees4~4. aes,4 bes8 | c8^\< des4^\> ~4.\! c4 bes8 | aes4.~4. r |
  ees'4. 4. f4 ees8 | 4.~4. aes,4 bes8 | c4. 4. des4 aes8 | c4.~4. \bar "|" \break
  c4 des8 | ees4.~4 f8 ees4 des8 | c ees4~4. aes,4 bes8 | c^\< des4^\> ~4.\! c4 bes8 | aes4.~4.
}

alto = \relative {
  \autoBeamOff
  c'4 b8 | b4. c4. 4 8 | des4. 4. 4 8 | 4.~4 ees8
  ees4 8 | 4.~4. c4 b8 | 4. c4. 4 8 | des4. 4. 4 c8 |
  ees4.~4 8 4 des8 | c4.~4. 4 ges'8 | f4. 4. 4 8 | e4. 4.
  ees4 8 | f4.~4 aes8 4 f8 | g4.~g aes4 8 | 4.~4 8
  aes4 8 | 8 4~4. 4 8 | 8 g4~4. 4 ees8 | 4.~4. r |
  aes4. 4. 4 bes8 | aes4.~4. ees4 f8 | aes4. 4. 4 8 | 4.~4.
  aes4 8 | 4.~4 8 4 8 | 8 4~4. 4 8 | 8 g4~4. 4 ees8 | 4.~4.
}

tenor = \relative {
  \autoBeamOff
  aes4 8 | 4. 4. ees4 aes8 | bes4. 4. aes4 8 | g4.~4 bes8
  g4 bes8 | aes4.~4. 4 8 | 4. 4. ees4 aes8 | bes4. 4. 4 aes8 |
  g4.~4 bes8 aes4 g8 | aes4.~4. 4 8 | 4. 4. 4 f8 | g4. c
  c4 8 | 4.~4 8 d4 8 | ees4.~4. 4 bes8 | c4.~4 des8
  c4 f8 | ees c4~4. ees4 f8 | ees8 f4~4. ees4 des8 | c4.~4. r |
  c8 4~4. des4 8 | c4.~4. 4 des8 | ees8 4~4. f4 fes8 | ees4.~4.
  ees4 bes8 | c4.~4 des8 c4 f8 | ees c4~4. ees4 f8 | ees f4~4. ees4 des8 | c4.~4.
}

bass = \relative {
  \autoBeamOff
  aes,4 8 | 4. 4. 4 8 | ees'4. 4. 4 8 | 4.~4 8
  ees4 8 | aes4.~4. aes,4 8 | 4. 4. 4 8 | ees'4. 4. 4 8 |
  ees4.~4 8 4 8 | aes,4.~4. 4 c8 | des4. 4. 4 8 | c4. 4.
  c4 8 | f4.~4 8 bes,4 8 | ees4.~4. aes4 8 | aes4.~4 8
  aes4 8 | 8 4~4. c,4 des8 | ees8 4~4. 4 8 | aes,4.~4. r |
  aes'8 4~4.~4. | 8 4~4. \apart r4 r8 \auto | aes8 4~4.~4. | aes,4 8 4.
  aes'4 8 | 4.~4 8 4 8 | 8 4~4. c,4 des8 | ees8 4~4. 4 8 | aes,4.~4.
}

chorus = \lyricmode {
  “There are sha -- dows in the val -- ley,
  But 'tis sun -- shine on the hill.”
  Sun -- shine on the hill, __
  There is sun -- shine on the hill: __
  “There are sha -- dows in the val -- ley,
  But 'tis sun -- shine on the hill.”
}

chorusMen = \lyricmode {
  \repeat unfold 45 \skip 1
  \repeat unfold 15 \skip 1
  Sun -- shine, __ sun -- shine, __
  Sun -- shine __ on the hill;
  \repeat unfold 15 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  There are sha -- dows in the val -- ley
  Where our tir -- ed feet must go;
  But we hear the peace -- ful wa -- ters,
  As they mur -- mur soft and low;
  And our Shep -- herd whis -- pers gen -- tly,
  As He leads us on -- ward still:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There are sha -- dows in the val -- ley
  But we breathe the sweet per -- fume
  Of the ro -- ses on the moun -- tain,
  In their love -- ly ver -- nal bloom;
  And a -- gain our Shep -- herd whis -- pers,
  As He leads us on -- ward still:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the sha -- dows in the val -- ley
  Like a dream will pass a -- way;
  They will van -- ish at the dawn -- ing
  Of the bright and glo -- rious day!
  E -- ven now there comes an e -- cho,
  And we feel its ma -- gic thrill:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "are " sha "dows " "in " "the " val "ley "
  "\nWhere " "our " tir "ed " "feet " "must " "go; "
  "\nBut " "we " "hear " "the " peace "ful " wa "ters, "
  "\nAs " "they " mur "mur " "soft " "and " "low; "
  "\nAnd " "our " Shep "herd " whis "pers " gen "tly, "
  "\nAs " "He " "leads " "us " on "ward " "still: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine " "on " "the " "hill, " 
  "\nThere " "is " sun "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.”\n"

  \set stanza = "2."
  "\nThere " "are " sha "dows " "in " "the " val "ley "
  "\nBut " "we " "breathe " "the " "sweet " per "fume "
  "\nOf " "the " ro "ses " "on " "the " moun "tain, "
  "\nIn " "their " love "ly " ver "nal " "bloom; "
  "\nAnd " a "gain " "our " Shep "herd " whis "pers, "
  "\nAs " "He " "leads " "us " on "ward " "still: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine " "on " "the " "hill, " 
  "\nThere " "is " sun "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.”\n"

  \set stanza = "3."
  "\nOh, " "the " sha "dows " "in " "the " val "ley "
  "\nLike " "a " "dream " "will " "pass " a "way; "
  "\nThey " "will " van "ish " "at " "the " dawn "ing "
  "\nOf " "the " "bright " "and " glo "rious " "day! "
  "\nE" "ven " "now " "there " "comes " "an " e "cho, "
  "\nAnd " "we " "feel " "its " ma "gic " "thrill: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine " "on " "the " "hill, " 
  "\nThere " "is " sun "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "There " "are " sha "dows " "in " "the " val "ley "
  "\nWhere " "our " tir "ed " "feet " "must " "go; "
  "\nBut " "we " "hear " "the " peace "ful " wa "ters, "
  "\nAs " "they " mur "mur " "soft " "and " "low; "
  "\nAnd " "our " Shep "herd " whis "pers " gen "tly, "
  "\nAs " "He " "leads " "us " on "ward " "still: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine, "  sun "shine, " 
  "\nSun" "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.”\n"

  \set stanza = "2."
  "\nThere " "are " sha "dows " "in " "the " val "ley "
  "\nBut " "we " "breathe " "the " "sweet " per "fume "
  "\nOf " "the " ro "ses " "on " "the " moun "tain, "
  "\nIn " "their " love "ly " ver "nal " "bloom; "
  "\nAnd " a "gain " "our " Shep "herd " whis "pers, "
  "\nAs " "He " "leads " "us " on "ward " "still: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine, "  sun "shine, " 
  "\nSun" "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.”\n"

  \set stanza = "3."
  "\nOh, " "the " sha "dows " "in " "the " val "ley "
  "\nLike " "a " "dream " "will " "pass " a "way; "
  "\nThey " "will " van "ish " "at " "the " dawn "ing "
  "\nOf " "the " "bright " "and " glo "rious " "day! "
  "\nE" "ven " "now " "there " "comes " "an " e "cho, "
  "\nAnd " "we " "feel " "its " ma "gic " "thrill: "
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
  "\nSun" "shine, "  sun "shine, " 
  "\nSun" "shine " "on " "the " "hill: " 
  "\n“There " "are " sha "dows " "in " "the " val "ley, "
  "\nBut " "'tis " sun "shine " "on " "the " "hill.” "
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
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \chorusMen
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
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusMen }
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
