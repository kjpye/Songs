\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hold the Fort!"
  subtitle    = "Sankey No. 669"
  subsubtitle = "Sankey 880 No. 1"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*4
  \textMark \markup { \box \bold "B" } s2*4
  \textMark \markup { \box \bold "C" } s2*4
  \textMark \markup { \box \bold "D" } s2*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. b16 a8 fis | d'8. e16 d8 b | a8. b16 a8 fis | e4 r |
  a8. b16 a8 fis | d'8. e16 d8 b | cis8. d16 cis8 b | a2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d8. 16 8. 16 | 8 a fis a | b8. 16 8 d | cis4. r8 |
  d8. 16 8 8 | e d cis b | a a b8. cis16 | d4. r8 |
}

alto = \relative {
  \autoBeamOff
  fis'8. g16 fis8 d | fis8. g16 fis8 g | fis8. g16 fis8 d | cis4 r |
  fis8. g16 fis8 d | fis8. g16 fis8 8 | e8. fis16 e8 8 | cis2 | \section
  fis8. 16 8. 16 | 8 8 d fis | g8. 16 8 8 | e4. r8 |
  fis8. 16 8 8 | g g g g | fis8 8 g8. 16 | fis4. r8 |
}

tenor = \relative {
  \autoBeamOff
  d'8. 16 8 a | a8. 16 8 d | 8. 16 8 a | 4 r |
  d8. 16 8 a | 8. 16 8 b | a8. 16 8 gis | a2 | \section
  a8. 16 8. 16 | d8 8 8 8 | 8. 16 8 b | a4. r8 |
  a8. 16 8 8 | b b cis d | d d cis8. e16 | d4. r8 |
}

bass = \relative {
  \autoBeamOff
  d8. 16 8 8 | 8. 16 8 8 | 8. 16 8 8 | a'4 r |
  d,8. 16 8 8 | 8. 16 8 8 | e8. 16 8 8 | a,2 | \section
  d8. 16 8. 16 | 8 8 8 8 | g8. 16 8 8 | a4. r8 |
  d,8. 16 8 8 | g g g g | a a a8. 16 | d,4. r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Hold" the Fort, for I am com -- "ing,\""
  Je -- sus sig -- nals still;
  Wave the ans -- wer back to Hea -- ven,
  "\"By" Thy grace we "will.\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho, my com -- rades! see the sig -- nal
  Wav -- ing in the sky!
  Re -- in -- forc -- ments now ap -- pear -- ing,
  Vic -- to -- ry is nigh!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See the migh -- ty host ad -- van -- cing,
  Sa -- tan lead -- ing on:
  Migh -- ty men a -- round us fall -- ingm
  Cou -- rage al -- most gone!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  See the glo -- rious ban -- ner wav -- ing!
  Hear the trum -- pet blow!
  In our Lead -- ers' name we'll tri -- umph
  O -- ver ev -- 'ry foe!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Fierce and long the bat -- tle ra -- ges,
  But our help is near:
  On -- ward comes our great Com -- man -- der,
  Cheer, my com -- rades cheer!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho, " "my " com "rades! " "see " "the " sig "nal "
  "\nWav" "ing " "in " "the " "sky! "
  "\nRe" in forc "ments " "now " ap pear "ing, "
  "\nVic" to "ry " "is " "nigh! "
  "\n\"Hold " "the " "Fort, " "for " "I " "am " com "ing,\" "
  "\nJe" "sus " sig "nals " "still; "
  "\nWave " "the " ans "wer " "back " "to " Hea "ven, "
  "\n\"By " "Thy " "grace " "we " "will.\"\n"

  \set stanza = "2."
  "\nSee " "the " migh "ty " "host " ad van "cing, "
  "\nSa" "tan " lead "ing " "on: "
  "\nMigh" "ty " "men " a "round " "us " fall "ingm "
  "\nCou" "rage " al "most " "gone! "
  "\n\"Hold " "the " "Fort, " "for " "I " "am " com "ing,\" "
  "\nJe" "sus " sig "nals " "still; "
  "\nWave " "the " ans "wer " "back " "to " Hea "ven, "
  "\n\"By " "Thy " "grace " "we " "will.\"\n"

  \set stanza = "3."
  "\nSee " "the " glo "rious " ban "ner " wav "ing! "
  "\nHear " "the " trum "pet " "blow! "
  "\nIn " "our " Lead "ers' " "name " "we'll " tri "umph "
  "\nO" "ver " ev "'ry " "foe! "
  "\n\"Hold " "the " "Fort, " "for " "I " "am " com "ing,\" "
  "\nJe" "sus " sig "nals " "still; "
  "\nWave " "the " ans "wer " "back " "to " Hea "ven, "
  "\n\"By " "Thy " "grace " "we " "will.\"\n"

  \set stanza = "4."
  "\nFierce " "and " "long " "the " bat "tle " ra "ges, "
  "\nBut " "our " "help " "is " "near: "
  "\nOn" "ward " "comes " "our " "great " Com man "der, "
  "\nCheer, " "my " com "rades " "cheer! "
  "\n\"Hold " "the " "Fort, " "for " "I " "am " com "ing,\" "
  "\nJe" "sus " sig "nals " "still; "
  "\nWave " "the " ans "wer " "back " "to " Hea "ven, "
  "\n\"By " "Thy " "grace " "we " "will.\" "
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
