\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A few More Marchings Weary."
  subtitle    = "Sankey No. 512"
  subsubtitle = "Sankey 880 No. 498"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
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

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" }    s1*4 s2
  \mark \markup { \box "C" } s2 s1*4
  \mark \markup { \box "D" }    s1*5
  \mark \markup { \box "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 | cis2 a | b4 a fis a | e4. 8 a4 cis | b2. a4 | cis2 a |
  b4 a fis a | a4. a8 cis4 b | a2. 4 | b gis fis e | cis d \bar "|" \break e a |
  b4 gis fis e | cis d e a | cis2 a | b4 a fis a |
  e4. a8 cis4 b | a2. r4 \bar "||" | d2^\markup\smallCaps Refrain. fis, | 4 e e a | b2 gis |
  gis4 fis e a | cis2 a | b4 a fis a | e4. a8 cis4 b | a2.
}

alto = \relative {
  \autoBeamOff
  e'4 | 2 2 | fis4 4 d d | cis4. 8 e4 4 | 2. 4 | 2 2 |
  fis4 4 d d | cis4. e8 4 d | cis2. e4 | d4 4 4 4 | cis4 b cis e |
  d4 4 4 4 | cis b cis cis | e2 2 | fis4 4 d d |
  cis4. e8 4 d | cis2. r4 | fis2 d | d4 cis cis cis | d2 2 |
  d4 4 cis e | 2 2 | fis4 4 d d | cis4. e8 4 d | cis2.
}

tenor = \relative {
  \autoBeamOff
  cis'4 | a2 2 | 4 4 4 4 | 4. 8 4 4 | gis2. cis4 | a2 2 |
  a4 4 4 fis | ais4. cis8 a4 gis | a2. 4 | gis4 b a gis | a e a a |
  gis4 b a gis | a e a e | a2 2 | 4 4 4 fis |
  a4. cis8 a4 gis | a2. r4 | a4 4 4 4 | 4 4 4 e | gis4 4 b b |
  b4 gis a cis | a2 2 | 4 4 4 fis | a4. cis8 a4 gis | a2.
}

bass = \relative {
  \autoBeamOff
  a,4 | 2 cis | d4 4 4 fis | a4. 8  cis,4 a | e'2. a,4 | 2 cis |
  d4 4 4 4 | e4. 8 4 4 | a,2. cis4 | e4 4 4 4 | a,4 4 4 cis |
  e4 4 4 4 | a, a a a | 2 cis | d4 4 4 4 |
  e4. 8 4 4 | a,2. r4 | d4 4 4 4 | a4 4 4 4 | e'4 4 4 4 |
  e4 4 a, a | 2 cis | d4 4 4 4 | e4. 8 4 4 | a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O'er time's rap -- id riv -- er,
  Soon we'll rest for ev -- er;
  No more march -- ings wea -- ry
  When we gath -- er home!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  O'er times rap -- id, _ _ _ _
  Soon we'll rest, we'll _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A few more mar -- chings wea -- ry,
  Then we'll gath -- er home!
  A few more storm -- clouds drea -- ry
  Then we'll gath -- er home!
  A few more days the cross to bear,
  And then with Christ a crown to wear;
  A few more mar -- chings wea -- ry,
  Then we'll gath -- er home!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A few more nights of weep -- ing,
  Then we'll gath -- er home!
  A few more watch -- es keep -- ing,
  Then we'll gath -- er home!
  A few more  vic -- t'ries o -- ver sin,
  A few more sheaves to gath -- er in,
  A few more mar -- chings wea -- ry,
  Then we'll gath -- er home!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A few more sweet links bro -- ken,
  Then we'll gath -- er home!
  A few more kind words spo -- ken,
  Then we'll gath -- er home!
  A few more part -- ings on the strand,
  And then a -- way to Ca -- naan's land:
  A few more mar -- chings wea -- ry,
  Then we'll gath -- er home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " storm "clouds " drea "ry "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " "days " "the " "cross " "to " "bear, "
  "\nAnd " "then " "with " "Christ " "a " "crown " "to " "wear; "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id " riv "er, "
  "\nSoon " "we'll " "rest " "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home!\n"

  \set stanza = "2."
  "\nA " "few " "more " "nights " "of " weep "ing, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " watch "es " keep "ing, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more "  vic "t'ries " o "ver " "sin, "
  "\nA " "few " "more " "sheaves " "to " gath "er " "in, "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id " riv "er, "
  "\nSoon " "we'll " "rest " "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home!\n"

  \set stanza = "3."
  "\nA " "few " "more " "sweet " "links " bro "ken, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " "kind " "words " spo "ken, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " part "ings " "on " "the " "strand, "
  "\nAnd " "then " a "way " "to " Ca "naan's " "land: "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id " riv "er, "
  "\nSoon " "we'll " "rest " "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "A " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " storm "clouds " drea "ry "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " "days " "the " "cross " "to " "bear, "
  "\nAnd " "then " "with " "Christ " "a " "crown " "to " "wear; "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id, " ra "pid " riv "er, "
  "\nSoon " "we'll " "rest, " "we'll " "rest " "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home!\n"

  \set stanza = "2."
  "\nA " "few " "more " "nights " "of " weep "ing, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " watch "es " keep "ing, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more "  vic "t'ries " o "ver " "sin, "
  "\nA " "few " "more " "sheaves " "to " gath "er " "in, "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id, " ra "pid " riv "er, "
  "\nSoon " "we'll " "rest, " "we'll " "rest "  "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home!\n"

  \set stanza = "3."
  "\nA " "few " "more " "sweet " "links " bro "ken, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " "kind " "words " spo "ken, "
  "\nThen " "we'll " gath "er " "home! "
  "\nA " "few " "more " part "ings " "on " "the " "strand, "
  "\nAnd " "then " a "way " "to " Ca "naan's " "land: "
  "\nA " "few " "more " mar "chings " wea "ry, "
  "\nThen " "we'll " gath "er " "home! "
  "\nO'er " "time's " rap "id, " ra "pid " riv "er, "
  "\nSoon " "we'll " "rest, " "we'll " "rest " "for " ev "er; "
  "\nNo " "more " march "ings " wea "ry "
  "\nWhen " "we " gath "er " "home! "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
