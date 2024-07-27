\version "2.25.18"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Hear the Words of Love."
  subtitle    = "Sankey No. 882"
  subsubtitle = "Sankey 880 No. 390"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "W. H. Havergal."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "St. Michael’s."

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
  \textMark \markup { \box \bold "A" } s4 | s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 | s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  e'4 | a cis b b | cis2. e4 | d cis b b | a2. \bar "|" \break
  a4 | gis fis e a | a b cis cis | b a a gis | a2.
}

alto = \relative {
  e'4 | fis a a gis | a2. gis4 | fis e e e | cis2.
  fis4 | e d b e | fis fis eis fis | fis e fis e | e2.
}

tenor = \relative {
  cis'4 | cis e fis e | e2. cis4 | a a a gis | a2.
  cis4 | cis a gis a | a fis gis a | d cis b b | cis2.
}

bass = \relative {
  a4 | fis cis d e | a,2. cis4 | d a e' e | a2.
  fis4 | cis d e cis | fis d cis fis | b, cis d e | a,2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I hear the words of love,
  I gaze up -- on the blood,
  I see the migh -- ty Sac -- ri -- fice,
  And I have peace with God.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  ’Tis ev -- er last -- ing peace!
  Sure as Je -- ho -- vah’s name;
  ’Tis sta -- ble as His stead -- fast throne,
  For ev -- er -- more the same.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The clouds may go and come,
  And storms may sweep my sky—
  This blood- sealed friend -- ship chan -- ges not:
  The cross is ev -- er nigh.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My love is oft- times low,
  My joy still ebbs and flows;
  But peace with Him re -- mains the same—
  No change Je -- ho -- vah knows.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I change, He chan -- ges not,
  The Christ can nev -- er die;
  His love, not mine, the rest -- ing place,
  His truth, not mine, the tie.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "hear " "the " "words " "of " "love, "
  "\nI " "gaze " up "on " "the " "blood, "
  "\nI " "see " "the " migh "ty " Sac ri "fice, "
  "\nAnd " "I " "have " "peace " "with " "God.\n"

  \set stanza = "2."
  "\n’Tis " ev "er " last "ing " "peace! "
  "\nSure " "as " Je ho "vah’s " "name; "
  "\n’Tis " sta "ble " "as " "His " stead "fast " "throne, "
  "\nFor " ev er "more " "the " "same.\n"

  \set stanza = "3."
  "\nThe " "clouds " "may " "go " "and " "come, "
  "\nAnd " "storms " "may " "sweep " "my " "sky— "
  "\nThis " blood "sealed " friend "ship " chan "ges " "not: "
  "\nThe " "cross " "is " ev "er " "nigh.\n"

  \set stanza = "4."
  "\nMy " "love " "is " oft "times " "low, "
  "\nMy " "joy " "still " "ebbs " "and " "flows; "
  "\nBut " "peace " "with " "Him " re "mains " "the " "same— "
  "\nNo " "change " Je ho "vah " "knows.\n"

  \set stanza = "5."
  "\nI " "change, " "He " chan "ges " "not, "
  "\nThe " "Christ " "can " nev "er " "die; "
  "\nHis " "love, " "not " "mine, " "the " rest "ing " "place, "
  "\nHis " "truth, " "not " "mine, " "the " "tie. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
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
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
