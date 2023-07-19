\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gird on the Sword and Armour!"
  subtitle    = "Sankey No. 676"
  subsubtitle = "N. H. No. 126"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. H. Mann."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 gis8. 16 a4 \tuplet 3/2 {b8[cis d]} | cis2 b4 e8.[d16] | cis4 b8[a] 4 gis | a2. \bar "|" \break
  cis4 | b a d cis | cis2 b4 e | cis4 b8[a] gis4 fis | e2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  e4 | d'4. cis8 d4 b | cis4.(d8) e4 cis | d4 d d d | cis2. \bar "|" \break
  e,4 | a b cis d | e2 8[d] a[b] | cis4. d8 cis4 b | a1 |
}

alto = \relative {
  \autoBeamOff
  e'4 d8. 16 e4 fis | e2 4 4 | 4 fis e d | cis2.
  e4 | d cis e e | 2 4 4 | 4 8[fis] e4 dis | e2.
  e4 | 4. 8 4 4 | 2 4 4 | 4 4 4 4 | 2.
  e4 | e e e fis | gis2 fis4 4 | e4. 8 4 d | cis1 |
}

tenor = \relative {
  \autoBeamOff
  cis'4 b8. 16 a4 4 | a2 gis4 b | a d cis b | a2.
  a4 | gis a b a | a2 gis4 b | a4 b8[cis] b4 a | gis2. \section
  e4 | b'4. ais8 b4 gis | a4.(b8) cis4 a | gis4 a b gis | a2.
  e4 | a4 gis a a | 2 4 4 | 4. b8 a4 gis | a1 |
}

bass = \relative {
  \autoBeamOff
  a,4 b8. 16 cis4 d | e2 4 gis | a d, e e | a,2.
  a4 | e' fis gis a | e2 4 gis | a gis8[a] b4 b, | e2. \section
  e4 | 4. 8 4 4 | a4.(b8) a4 a, | e' fis gis e | a e a,
  e'4 | cis e a fis | cis2 d4 d | e4. 8 4 4 | a,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then wave the glo -- rious ban -- ner!
  Press for -- ward in His name;
  Fear not, for soon Thy Cap -- tain
  Will vic -- to -- ry pro -- claim!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Gird on the sword and ar -- mour!
  Go, raise the ban -- ner high!
  The Cap -- tain of Sal -- va -- tion
  To thee is ev -- er nigh.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Gird on the sword and ar -- mour!
  Let faith be thy strong shield;
  His pro -- mise shall sus -- tain thee
  On ev -- 'ry bat -- tle field.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Gird on the sword and ar -- mour!
  Press on, the foe to fight;
  No en -- em -- y can harm thee,
  For God sus -- tains the right.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Gird " "on " "the " "sword " "and " ar "mour! "
  "\nGo, " "raise " "the " ban "ner " "high! "
  "\nThe " Cap "tain " "of " Sal va "tion "
  "\nTo " "thee " "is " ev "er " "nigh. "
  "\nThen " "wave " "the " glo "rious " ban "ner! "
  "\nPress " for "ward " "in " "His " "name; "
  "\nFear " "not, " "for " "soon " "Thy " Cap "tain "
  "\nWill " vic to "ry " pro "claim!\n"

  \set stanza = "2."
  "\nGird " "on " "the " "sword " "and " ar "mour! "
  "\nLet " "faith " "be " "thy " "strong " "shield; "
  "\nHis " pro "mise " "shall " sus "tain " "thee "
  "\nOn " ev "'ry " bat "tle " "field. "
  "\nThen " "wave " "the " glo "rious " ban "ner! "
  "\nPress " for "ward " "in " "His " "name; "
  "\nFear " "not, " "for " "soon " "Thy " Cap "tain "
  "\nWill " vic to "ry " pro "claim!\n"

  \set stanza = "3."
  "\nGird " "on " "the " "sword " "and " ar "mour! "
  "\nPress " "on, " "the " "foe " "to " "fight; "
  "\nNo " en em "y " "can " "harm " "thee, "
  "\nFor " "God " sus "tains " "the " "right. "
  "\nThen " "wave " "the " glo "rious " ban "ner! "
  "\nPress " for "ward " "in " "His " "name; "
  "\nFear " "not, " "for " "soon " "Thy " Cap "tain "
  "\nWill " vic to "ry " pro "claim! "
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
