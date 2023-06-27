\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Resting."
  subtitle    = "Sankey No. 668"
  subsubtitle = "C. C. No. 73"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Joyful 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 e fis8 g | a4. b8 a fis | d2 e4 | f2. | e4 fis gis8 8 |
  a4. b8 cis cis | b4(fis) gis | a2. | fis4 g a8 8 | d4 a g8 fis |
  b4(e,) fis | g2. | e4 fis e8 8 | a4 fis d8 e | fis2 e4 | d2. |
}

alto = \relative {
  \autoBeamOff
  a4 cis d8 8 | 4. 8 8 cis | b4(gis) a | 2. | e'4 d e8 8 |
  e4. 8 8 g | fis2 d4 | cis2. | d4 4 8 cis | d4 4 8 8 |
  d2 dis4 | e2. | cis4 d cis8 8 | d4 4 8 8 | 2 cis4 | d2. |
}

tenor = \relative {
  \autoBeamOff
  fis4 a4 8 8 | 4. g8 a a | fis4(d) cis | d2. | a'4 4 b8 8 |
  a4. gis8 a e' | d4.(cis8) b4 | a2. | 4 4 8 g | fis4 4 g8 a |
  b2 a4 | b2. | a4 4 8 8 | 4 b4 8 bes | a2 g4 | fis2. |
}

bass = \relative {
  \autoBeamOff
  d4 a d8 e | fis4. g8 fis a, | b2 a4 | d2. | cis4 d4 8 8 |
  cis4. e8 a a | d,2 e4 | a,2. | d4 e f8 e | d4 c b8 a |
  g4(g') fis | e2. | a,4 4 g8 8 | fis4 b g8 8 | a2 4 | d2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Rest -- ing on the faith -- ful -- ness of Christ our Lord;
  Rest -- ing on the ful -- mess of His own sure word;
  Rest -- ing on His wis -- dom, on His love and power;
  Rest -- ing on His co -- ve -- nant from hour to hour.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Rest -- ing 'neath His guid -- ing hand for un -- tracked days;
  Rest -- ing 'neath His sha -- dows from the noon -- tide rays;
  Rest -- ing at the e -- ven -- tide, be -- neath His wing,
  In the fair pa -- vi -- lion of our Sa -- viour- King.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Rest -- ing in the for -- tress while the foe is nigh;
  Rest -- ing in the life -- boar while the waves roll high;
  Rest -- ing in His cha -- riot for the swift, glad race;
  Rest -- ing, al -- ways rest -- ing, in His bound -- less grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Rest -- ing in the pas -- tures, and be -- neath the Rock;
  Rest -- ing ny the wa -- ters where He leads His flock;
  Rest -- ing, while we lis -- ten at His glo -- rious feet;
  Rest -- ing in His arms of love— oh, rest com -- plete!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Rest -- ing and be -- liev -- ing, let us on -- ward press;
  Rest -- ing on Him -- self, "\"the" Lord our Righ -- teous -- "ness!\""
  Rest -- ing and re -- joic -- ing, let His saved ones sing—
  "\"Glo" -- ry, glo -- ry, glo -- ry be to Christ our "King!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Rest" "ing " "on " "the " faith ful "ness " "of " "Christ " "our " "Lord; "
  "\nRest" "ing " "on " "the " ful "mess " "of " "His " "own " "sure " "word; "
  "\nRest" "ing " "on " "His " wis "dom, " "on " "His " "love " "and " "power; "
  "\nRest" "ing " "on " "His " co ve "nant " "from " "hour " "to " "hour.\n"

  \set stanza = "2."
  "\nRest" "ing " "'neath " "His " guid "ing " "hand " "for " un "tracked " "days; "
  "\nRest" "ing " "'neath " "His " sha "dows " "from " "the " noon "tide " "rays; "
  "\nRest" "ing " "at " "the " e ven "tide, " be "neath " "His " "wing, "
  "\nIn " "the " "fair " pa vi "lion " "of " "our " Sa viour "King.\n"

  \set stanza = "3."
  "\nRest" "ing " "in " "the " for "tress " "while " "the " "foe " "is " "nigh; "
  "\nRest" "ing " "in " "the " life "boar " "while " "the " "waves " "roll " "high; "
  "\nRest" "ing " "in " "His " cha "riot " "for " "the " "swift, " "glad " "race; "
  "\nRest" "ing, " al "ways " rest "ing, " "in " "His " bound "less " "grace.\n"

  \set stanza = "4."
  "\nRest" "ing " "in " "the " pas "tures, " "and " be "neath " "the " "Rock; "
  "\nRest" "ing " "ny " "the " wa "ters " "where " "He " "leads " "His " "flock; "
  "\nRest" "ing, " "while " "we " lis "ten " "at " "His " glo "rious " "feet; "
  "\nRest" "ing " "in " "His " "arms " "of " "love— " "oh, " "rest " com "plete!\n"

  \set stanza = "5."
  "\nRest" "ing " "and " be liev "ing, " "let " "us " on "ward " "press; "
  "\nRest" "ing " "on " Him "self, " "\"the " "Lord " "our " Righ teous "ness!\" "
  "\nRest" "ing " "and " re joic "ing, " "let " "His " "saved " "ones " "sing— "
  "\n\"Glo" "ry, " glo "ry, " glo "ry " "be " "to " "Christ " "our " "King!\" "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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

#(set-global-staff-size 20)

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

#(set-global-staff-size 20)

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
