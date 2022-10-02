\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, I'm Coming Home."
  subtitle    = "Sankey No. 471"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
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

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'4 | c' c aes4. 8 | f8(aes4) f8 ees4. r8 | aes4 4 c8 4. | bes2. \bar "|" \break ees,4 |
  c'4 4 aes4. 8 | f8(aes4) f8 ees4. r8 | aes4 4 bes8 4. | aes2. r4 |
  c8^\markup\smallCaps Chorus. 4. aes2 | 8 4. f2 | ees4 c' c aes | bes2. r4 |
  c4 4 aes4. 8 | f8(aes4) f8 ees4. r8 | aes4 4 bes8 4. | aes2. 
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | ees ees c4. ees8 | des8(f4) des8 c4. r8 | c4 4 ees8 4. | 2. 4 |
  ees4 4 c4. ees8 | des8(f4) d8 c4. r8 | 4 4 des8 4. | c2. r4 |
  ees8 4. c2 | f8 4. des2 | c4 ees ees ees | ees2. r4 |
  ees4 4 c4. ees8 | des8(f4) des8 c4. r8 | c4 4 des8 4. | c2.
}

tenor = \relative {
  \autoBeamOff \partial 4
  aes4 | 4 4 ees4. aes8 | 4. 8 4. r8 | ees4 4 aes8 4. | g2. 4 |
  aes4 4 ees4. aes8 | 4. 8 4. r8 | 4 4 g8 4. | aes2. r4 |
  aes8 4. 2 | 8 4. 2 | 4 4 4 4 | g2. r4 |
  aes4 4 ees4. aes8 | 4. 8 4. r8 | 4 4 g8 4. | aes2.
}

bass = \relative {
  \autoBeamOff
  aes4 | aes,4 4 4. c8 | des4. 8 aes4. r8 | 4 4 aes'8 4. | ees2. 4 |
  aes,4 4 4. c8 | des4. 8 aes4. r8 | f'4 4 ees8 4. | aes,2. r4 |
  aes8 4. 2 | des8 4. 2 | aes4 4 4 c | ees2. r4 |
  aes,4 4 4. c8 | des4. 8 aes4. r8 | f'4 4 ees8 4. | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Com -- ing home, com -- ing home,
  Nev -- er -- more to roam;
  By Thy grace I will be Thine:
  Lord, I'm com -- ing home.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I've wan -- dered far a -- way from God:
  Now I'm com -- ing home;
  The paths of sin too long I've trod:
  Lord, I'm com -- ing home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I've was -- ted ma -- ny pre -- cious years:
  Now I'm com -- ing home;
  I now re -- pent with bit -- ter teas:
  Lord, I'm com -- ing home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I'm tired of sin and stray -- ing, Lord:
  Now I'm com -- ing home;
  I'll trust Thy love, be -- lieve Thy word:
  Lord, I'm com -- ing home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My soul is sick, my heart is sore:
  Now I'm com -- ing home;
  My strength re -- new, my hope re -- store:
  Lord, I'm com -- ing home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " wan "dered " "far " a "way " "from " "God: "
  "\nNow " "I'm " com "ing " "home; "
  "\nThe " "paths " "of " "sin " "too " "long " "I've " "trod: "
  "\nLord, " "I'm " com "ing " "home. "
  "\nCom" "ing " "home, " com "ing " "home, "
  "\nNev" er "more " "to " "roam; "
  "\nBy " "Thy " "grace " "I " "will " "be " "Thine: "
  "\nLord, " "I'm " com "ing " "home.\n"

  \set stanza = "2."
  "\nI've " was "ted " ma "ny " pre "cious " "years: "
  "\nNow " "I'm " com "ing " "home; "
  "\nI " "now " re "pent " "with " bit "ter " "teas: "
  "\nLord, " "I'm " com "ing " "home. "
  "\nCom" "ing " "home, " com "ing " "home, "
  "\nNev" er "more " "to " "roam; "
  "\nBy " "Thy " "grace " "I " "will " "be " "Thine: "
  "\nLord, " "I'm " com "ing " "home.\n"

  \set stanza = "3."
  "\nI'm " "tired " "of " "sin " "and " stray "ing, " "Lord: "
  "\nNow " "I'm " com "ing " "home; "
  "\nI'll " "trust " "Thy " "love, " be "lieve " "Thy " "word: "
  "\nLord, " "I'm " com "ing " "home. "
  "\nCom" "ing " "home, " com "ing " "home, "
  "\nNev" er "more " "to " "roam; "
  "\nBy " "Thy " "grace " "I " "will " "be " "Thine: "
  "\nLord, " "I'm " com "ing " "home.\n"

  \set stanza = "4."
  "\nMy " "soul " "is " "sick, " "my " "heart " "is " "sore: "
  "\nNow " "I'm " com "ing " "home; "
  "\nMy " "strength " re "new, " "my " "hope " re "store: "
  "\nLord, " "I'm " com "ing " "home. "
  "\nCom" "ing " "home, " com "ing " "home, "
  "\nNev" er "more " "to " "roam; "
  "\nBy " "Thy " "grace " "I " "will " "be " "Thine: "
  "\nLord, " "I'm " com "ing " "home. "
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
