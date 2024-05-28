\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ for Me!"
  subtitle    = "Sankey No. 845"
  subsubtitle = "Sankey 880 No. 275"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Geo. Halls."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderato, bold." 4=120
}

soprano = \relative {
  \autoBeamOff
  d''4 cis8. b16 a4 b | d, e fis2 | a4-. a-. b2 | cis4-. 4-. d2 |
  d4 cis8 b a4 b | d, e fis2 | a4-. 4-. b2 | cis4-. 4-. d2 |
  a4^\mf fis8. g16 a4 d | b d a2 | 4 g8 fis e4 fis8[g] | b4 a fis2 |
  fis4 8 g a4 d | b4 d a2 | a4-.^\f 4-. b2 | cis4-. 4-. d2\fermata |
}

alto = \relative {
  \autoBeamOff
  d'4 8. 16 4 4 | d cis d2 | fis4-. 4-. g2 | 4-. e-. fis2 |
  d4 8 8 4 4 | d cis d2 | fis4-. 4-. g2 | 4-. e-. fis2 |
  fis4^\mf d8. e16 fis4 4 | g g fis2 | 4 e8 d cis4 d8[e] | g4 e d2 |
  d4 8 e fis4 4 | g g fis2 | fis4-.^\mf 4-. g2 | 4-. e-. fis2\fermata |
}

tenor = \relative {
  \autoBeamOff
  fis4 a8. g16 fis4 g | a4 4 2 | d4-. 4-. 2 | a4-. 4-. 2 |
  fis4 a8 g fis4 g | a4 4 2 | d4-. 4-. 2 | a4-. 4-. 2 |
  d4\omit\mf a8. 16 d4 4 | 4 4 2 | a4 8 8 4 4 | 4 4 2 |
  a4 8 8 d4 4 | 4 4 2 | 4-.\omit\f 4-. 2 | a4-. 4-. 2_\fermata |
}

bass = \relative {
  \autoBeamOff
  d4 8. 16 4 g | fis4 e d2 | 4-. 4-. g2 | a4-. a,-. d2 |
  d4 8 8 4 g | fis e d2 | 4-. 4-. g2 a4-. a,-. d2 |
  d4 8.\omit\mf 16 4 4 | g,4 b d2 | a'4 8 8 a,4 4 | a cis d2 |
  d4 8 8 4 4 | g, b d2 | 4-.\omit\f 4-. g2 | a4-. a,-. d2_\fermata |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Whom have I, Lord, in heaven but Thee?
  None but Thee! None but Thee!
  And this my song thro’ life shall be:
  Christ for me! Christ for me!
  He hath for me the wine- press trod,
  He hath re -- deemed me “by His blood,”
  And re -- con -- ciled my soul to God:
  Christ for me! Christ for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I en -- vy not the rich their joys:
  Christ for me! Christ for me!
  I cov -- et not earth’s glitt -- ’ring toys:
  Christ for me! Christ for me!
  Earth can no last -- ing bliss be -- stow,
  “Fad -- ing” is stamped on all be -- low;
  Mine is a joy no end can know:
  Christ for me! Christ for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho’ with the poor be cast my lot:
  Christ for me! Christ for me!
  “He know -- eth best,”— I mur -- mur not:
  Christ for me! Christ for me!
  The “vine” and “fig- tree” blight as -- sail,
  The “la -- bour od the o -- live fail,”
  And death o’er flock and herd pre -- vail,
  Christ for me! Christ for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Tho’ I am now on hos -- tile ground,
  Christ for me! Christ for me!
  And sin be -- set me all a -- round,
  Christ for me! Christ for me!
  Let earth her fierc -- est bat -- tles wage,
  And foes a -- gainst my soul en -- gage,
  Strong in His strength I scorn their rage:
  Christ for me! Christ for me!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And when my life draws to its close,
  Christ for me! Christ for me!
  Safe in His arms I shall re -- pose,
  Christ for me! Christ for me!
  When sharp -- est pains my frame per -- vade,
  And all the powers of na -- ture fade,
  Still will I sing thro’ death’s cold shade,
  Christ for me! Christ for me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Whom " "have " "I, " "Lord, " "in " "heaven " "but " "Thee? "
  "\nNone " "but " "Thee! " "None " "but " "Thee! "
  "\nAnd " "this " "my " "song " "thro’ " "life " "shall " "be: "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nHe " "hath " "for " "me " "the " wine "press " "trod, "
  "\nHe " "hath " re "deemed " "me " "“by " "His " "blood,” "
  "\nAnd " re con "ciled " "my " "soul " "to " "God: "
  "\nChrist " "for " "me! " "Christ " "for " "me!\n"

  \set stanza = "2."
  "\nI " en "vy " "not " "the " "rich " "their " "joys: "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nI " cov "et " "not " "earth’s " glitt "’ring " "toys: "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nEarth " "can " "no " last "ing " "bliss " be "stow, "
  "\n“Fad" "ing” " "is " "stamped " "on " "all " be "low; "
  "\nMine " "is " "a " "joy " "no " "end " "can " "know: "
  "\nChrist " "for " "me! " "Christ " "for " "me!\n"

  \set stanza = "3."
  "\nTho’ " "with " "the " "poor " "be " "cast " "my " "lot: "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\n“He " know "eth " "best,”— " "I " mur "mur " "not: "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nThe " "“vine” " "and " “fig "tree” " "blight " as "sail, "
  "\nThe " “la "bour " "od " "the " o "live " "fail,” "
  "\nAnd " "death " "o’er " "flock " "and " "herd " pre "vail, "
  "\nChrist " "for " "me! " "Christ " "for " "me!\n"

  \set stanza = "4."
  "\nTho’ " "I " "am " "now " "on " hos "tile " "ground, "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nAnd " "sin " be "set " "me " "all " a "round, "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nLet " "earth " "her " fierc "est " bat "tles " "wage, "
  "\nAnd " "foes " a "gainst " "my " "soul " en "gage, "
  "\nStrong " "in " "His " "strength " "I " "scorn " "their " "rage: "
  "\nChrist " "for " "me! " "Christ " "for " "me!\n"

  \set stanza = "5."
  "\nAnd " "when " "my " "life " "draws " "to " "its " "close, "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nSafe " "in " "His " "arms " "I " "shall " re "pose, "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
  "\nWhen " sharp "est " "pains " "my " "frame " per "vade, "
  "\nAnd " "all " "the " "powers " "of " na "ture " "fade, "
  "\nStill " "will " "I " "sing " "thro’ " "death’s " "cold " "shade, "
  "\nChrist " "for " "me! " "Christ " "for " "me! "
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
            \new Voice { \global \repeat unfold \verses { \tenor \nl } }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses { \tenor \nl } }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

#(set-global-staff-size 20)

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
      \context {
        \Staff \RemoveAllEmptyStaves
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
