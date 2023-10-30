\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All, All is Well!"
  subtitle    = "Sankey No. 725"
  subsubtitle = "C. C. No. 195"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Robert Lindsay."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
  \textMark \markup { \box \bold "E" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 | gis4. 8 fis4 e | b' a gis e | gis2 fis4. e8 | fis2 r4 \bar "|" \break
  e4  | gis4. 8 fis4 e | b' a gis e | gis2 4. fis8 | e2 r4 \bar "|" \break
  gis4 | 4. fis8 4 a | 4. gis8 4 b | b ais gis ais | b2. \bar "|" \break
  a4 | gis b e4. b8 | dis4 cis b e, | gis2 fis4. e8 | b'2. \bar "|" \break
  a4 | gis b e4. b8 | dis4 cis b e, | gis2 4. fis8 | e2.
}

alto = \relative {
  \autoBeamOff
  e'4 | 4. 8 b4 4 | dis fis e e | 2 cis4. 8 | dis2 r4
  e4  | 4. 8 dis4 e4 | e e e e | 2 dis4. 8 | e2 r4
  e4 | 4. dis8 4 fis | 4. e8 4 4 | 4 4 4 4 | dis2.
  fis4 | e fis e4. 8 | 4 4 4 4 | 2 dis4. e8 | dis2.
  fis4 | e fis e4. 8 | 4 4 4 4 | 2 dis4. 8 | e2.
}

tenor = \relative {
  \autoBeamOff
  gis4 | b4. 8 a4 gis | fis b b gis | b2 ais4. 8 | b2 r4
  gis4 | b4. 8 a4 gis | b cis b gis | b2 4. a8 | gis2 r4
  b4 | 4. 8 4 4 | 4. 8 4 4 | cis4 4 b cis | b2.
  b4 | b b gis4. b8 | 4 a gis ais | b2 a4. gis8 | fis2.
  b4 | b b gis4. b8 | 4 a gis ais | b2 4. a8 | gis2.
}

bass = \relative {
  \autoBeamOff
  e4 | 4. 8 dis4 e | b b e e | 2 fis4. 8 | b,2 r4
  e4 | 4. 8 b4 cis | gis a b cis | b2 4. 8 | e2 r4
  e4 | b4. 8 4 dis | e4. 8 4 gis | fis4 4 4 4 | b,2.
  dis4 | e dis cis4. gis8 | a4 cis e cis | b2 4. 8 | 2.
  dis4 | e dis cis4. gis8 | a4 a b cis | b2 4. 8 | e2.
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
  Wher -- e'er my Fa -- ther's hand may guide me,
  All, all is well!
  With Je -- sus walk -- ing still be -- side me,
  All, all is well!
  Tho' sha -- dows gath -- er dark -- ly o'er me,
  Still His love I'll tell;
  He trod the path of tars be -- fore me:
  All, all is well!
  He trod the path of tars be -- fore me:
  All, all is well!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' what I ask He oft de -- nies me,
  All, all is well!
  With what I \markup\italic need His grace sup -- plies me,
  All, all is well!
  Thro' joy or grief, thro' pain or plea -- sure,
  Still His love I'll tell;
  He is my soul's e -- ter -- nal trea -- sure:
  All, all is well!
  He is my soul's e -- ter -- nal trea -- sure:
  All, all is well!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho' round my bark life's storms are beat -- ing,
  All, all is well!
  I hear my Sa -- viour's voice re -- peat -- ing,
  All, all is well!
  And when I come to Jor -- dan's riv -- er,
  Still His love I'll tell;
  And shout, while safe -- ly pass -- ing o -- ver,
  “All, all is well!”
  And shout, while safe -- ly pass -- ing o -- ver,
  “All, all is well!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Wher" "e'er " "my " Fa "ther's " "hand " "may " "guide " "me, "
  "\nAll, " "all " "is " "well! "
  "\nWith " Je "sus " walk "ing " "still " be "side " "me, "
  "\nAll, " "all " "is " "well! "
  "\nTho' " sha "dows " gath "er " dark "ly " "o'er " "me, "
  "\nStill " "His " "love " "I'll " "tell; "
  "\nHe " "trod " "the " "path " "of " "tars " be "fore " "me: "
  "\nAll, " "all " "is " "well! "
  "\nHe " "trod " "the " "path " "of " "tars " be "fore " "me: "
  "\nAll, " "all " "is " "well!\n"

  \set stanza = "2."
  "\nTho' " "what " "I " "ask " "He " "oft " de "nies " "me, "
  "\nAll, " "all " "is " "well! "
  "\nWith " "what " "I " "need " "His " "grace " sup "plies " "me, "
  "\nAll, " "all " "is " "well! "
  "\nThro' " "joy " "or " "grief, " "thro' " "pain " "or " plea "sure, "
  "\nStill " "His " "love " "I'll " "tell; "
  "\nHe " "is " "my " "soul's " e ter "nal " trea "sure: "
  "\nAll, " "all " "is " "well! "
  "\nHe " "is " "my " "soul's " e ter "nal " trea "sure: "
  "\nAll, " "all " "is " "well!\n"

  \set stanza = "3."
  "\nTho' " "round " "my " "bark " "life's " "storms " "are " beat "ing, "
  "\nAll, " "all " "is " "well! "
  "\nI " "hear " "my " Sa "viour's " "voice " re peat "ing, "
  "\nAll, " "all " "is " "well! "
  "\nAnd " "when " "I " "come " "to " Jor "dan's " riv "er, "
  "\nStill " "His " "love " "I'll " "tell; "
  "\nAnd " "shout, " "while " safe "ly " pass "ing " o "ver, "
  "\n“All, " "all " "is " "well!” "
  "\nAnd " "shout, " "while " safe "ly " pass "ing " o "ver, "
  "\n“All, " "all " "is " "well!” "
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

#(set-global-staff-size 20)

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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
