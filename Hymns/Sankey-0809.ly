\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Labourers for Christ, Arise!"
  subtitle    = "Sankey No. 809"
  subsubtitle = "Sankey 880 No. 674"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. L. H. Sigourney."
  meter       = \markup\smallCaps "s.m."
  piece       = \markup\smallCaps "Huddersfield."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 | gis8 cis b4 dis | e2 4 | dis8 e dis4 cis | b2 \bar "|" \break
  gis4 | a8 b cis4 b | a8 gis fis4 dis' | e8 a, gis4 fis | e2
}

alto = \relative {
  \autoBeamOff
  e'4 | 8 8 4 fis | e2 gis4 | 8 8 fis4 8[e] | dis2
  e4 | 8 8 4 4 | fis8 e dis4 fis | e8 8 4 dis | e2
}

tenor = \relative {
  \autoBeamOff
  gis4 | b8 a gis4 a | gis2 cis4 | b8 8 4 ais | b2
  b4 | a8 gis | a4 b | 8 8 4 4 | 8 a b4 a | gis2
}

bass = \relative {
  \autoBeamOff
  e4 | 8 a, b4 4 | e2 cis4 | gis'8 e fis4 4 | b,2
  e4 | cis8 e a4 gis | dis8 e b4 a | gis8 cis b4 4 | e2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  La -- b'rers for Christ, a -- rise,
  And gird you for the toil!
  The dew of pro -- mise from the skies
  Al -- rea -- dy cheers the soil.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go where the sick re -- cline,
  Where mourn -- ing hearts de -- plore;
  And where the sons of sor -- row pine,
  Dis -- pense your hal -- lowed lore.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be faith, which looks a -- bove,
  With prayer, your con -- stant guest;
  And wrap the Sa -- viour's change -- less love
  A man -- tle round your breast.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So shall you share the wealth
  That earth may ne'er des -- poil;
  And the blest Gos -- pel's sav -- ing health
  Re -- pay your ar -- duous toil.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "La" "b'rers " "for " "Christ, " a "rise, "
  "\nAnd " "gird " "you " "for " "the " "toil! "
  "\nThe " "dew " "of " pro "mise " "from " "the " "skies "
  "\nAl" rea "dy " "cheers " "the " "soil.\n"

  \set stanza = "2."
  "\nGo " "where " "the " "sick " re "cline, "
  "\nWhere " mourn "ing " "hearts " de "plore; "
  "\nAnd " "where " "the " "sons " "of " sor "row " "pine, "
  "\nDis" "pense " "your " hal "lowed " "lore.\n"

  \set stanza = "3."
  "\nBe " "faith, " "which " "looks " a "bove, "
  "\nWith " "prayer, " "your " con "stant " "guest; "
  "\nAnd " "wrap " "the " Sa "viour's " change "less " "love "
  "\nA " man "tle " "round " "your " "breast.\n"

  \set stanza = "4."
  "\nSo " "shall " "you " "share " "the " "wealth "
  "\nThat " "earth " "may " "ne'er " des "poil; "
  "\nAnd " "the " "blest " Gos "pel's " sav "ing " "health "
  "\nRe" "pay " "your " ar "duous " "toil. "
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
