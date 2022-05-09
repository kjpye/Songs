\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ Receiveth Sinful Men."
  subtitle    = "Sankey No. 390"
  subsubtitle = "Sankey 880 No. 477"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{ "Arr. from" \smallCaps Neumeister "(tr." \smallCaps "Mrs. Bevan)."}
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" }    s4.*9
  \mark \markup { \box "D" }    s4.*11
  \mark \markup { \box "E" }    s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  fis'8. g16
  a4. b8 fis8. b16
  a2 8. d16
  cis4. b8 a8. g16
  fis2 \bar "|" \break fis8. g16
  a4. b8 fis8. b16 % B
  a2 8. d16
  cis4. a8 b8. cis16
  d2 \bar "|" \break \time 12/8 \partial 4. fis,8^\markup\smallCaps Refrain. [g] a8
  b2.~8 [d] d d[cis] b % C
  a2.~4. 8[b] fis
  a2.~4 8 8[b] fis % D
  a2.~4. fis8[g] a
  b2.~8 [d] d \bar "|" \break d8[cis] b
  a2.~4. d4 8 % E
  e4.~4 8 d4. cis
  d2.~4.
}

alto = \relative {
  \autoBeamOff
  d'8. e16
  fis4. g8 d8. g16
  fis2 8. 16
  e4. g8 fis8. e16
  d2 8. e16
  fis4. g8 d8. g16 % B
  fis2 8. 16
  e4. fis8 g8. 16
  fis2 d8 [e]fis
  g2.~8[b] b b[a] g % C
  fis2.~4. 4 8
  g4 8 4 8 fis4. 4 8 % D
  e4 fis8 g4 8 fis4. d8[e] fis
  g2.~8[b] b b[a] g
  fis2.~4. a4 8
  g4.~4 8 fis4. e4(g8) fis2.~4.
}

tenor = \relative {
  \autoBeamOff
  a8. 16
  d4. 8 8. 16
  d2 8. a16
  a4. 8 8. 16
  a2 8. 16
  d4. 8 8. 16 % B
  d2 8. a16
  a4. 8 8. 16
  a2 r4 r8
  d4 8 4 8 4 r8 r4 r8 % C
  d4 8 4 8 4. 4 8
  cis4 8 4 8 d4. 4 8 % D
  cis4 d8 e4 8 d4. r4 r8
  d4 8 4 8 4. r4 r8
  d4 8 4 8 4. c4 8 % E
  b4. 4. a a
  a2.~4.
}

bass = \relative {
  \autoBeamOff
  d8. 16
  d4. 8 8. 16
  d2 8. 16
  a4. 8 8. 16
  d2 8. 16
  d4. 8 8. 16 % B
  d2 8. 16
  a4. 8 8. 16
  d2 r4 r8
  g4 8 4 8 4 r8 r4 r8 % C
  d4 8 4 8 4. 4 8
  e4 8 a,4 8 d4. 4 8 % D
  a4 8 4 8 d4. r4 r8
  g4 8 4 8 4. r4 r8
  d4 8 4 8 4. fis4 8 % E
  g4. e a a,
  d2.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men; __
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Sing it o'er a -- gain,
  Sing it o'er a -- gain:
  Christ re -- ceiv -- eth sin -- ful men.
  Christ re -- ceiv -- eth sin -- ful men.
  Make the mes -- sage plain,
  Make the mes -- sage plain,
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sin -- ners Je -- sus will re -- ceive;
  Sound this word of grace to all
  Who the heav'n -- ly path -- way leave.
  All who lin -- ger, all who fall!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come: and He will give you rest;
  Trust Him: for His word is okain:
  He will take the sin -- ful -- est;
  Christ re -- ceiv -- eth sin -- ful men.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now my heart con -- demns me not,
  Pure be -- fore the law I stand;
  He who cleans'd me from all spot,
  Sat -- is -- fied its last de -- mand.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Christ re -- ceiv -- eth sin -- ful men,
  E -- ven me with all my sin;
  Purg'd from ev -- 'ry spot and stain,
  Heav'n with Him I en -- ter in.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  Sin -- ners Je -- sus will re -- ceive;
  Sound this word of grace to all
  Who the heav'n -- ly path -- way leave.
  All who lin -- ger, all who fall!
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men; __
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "2."
  Come: and He will give you rest;
  Trust Him: for His word is okain:
  He will take the sin -- ful -- est;
  Christ re -- ceiv -- eth sin -- ful men.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men; __
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "3."
  Now my heart con -- demns me not,
  Pure be -- fore the law I stand;
  He who cleans'd me from all spot,
  Sat -- is -- fied its last de -- mand.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men; __
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "4."
  Christ re -- ceiv -- eth sin -- ful men,
  E -- ven me with all my sin;
  Purg'd from ev -- 'ry spot and stain,
  Heav'n with Him I en -- ter in.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men; __
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  Sin -- ners Je -- sus will re -- ceive;
  Sound this word of grace to all
  Who the heav'n -- ly path -- way leave.
  All who lin -- ger, all who fall!
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "2."
  Come: and He will give you rest;
  Trust Him: for His word is okain:
  He will take the sin -- ful -- est;
  Christ re -- ceiv -- eth sin -- ful men.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "3."
  Now my heart con -- demns me not,
  Pure be -- fore the law I stand;
  He who cleans'd me from all spot,
  Sat -- is -- fied its last de -- mand.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "4."
  Christ re -- ceiv -- eth sin -- ful men,
  E -- ven me with all my sin;
  Purg'd from ev -- 'ry spot and stain,
  Heav'n with Him I en -- ter in.
  Sing it o'er __ and o'er a -- gain: __
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage clear and plain: __
  Christ re -- ceiv -- eth sin -- ful men.
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  Sin -- ners Je -- sus will re -- ceive;
  Sound this word of grace to all
  Who the heav'n -- ly path -- way leave.
  All who lin -- ger, all who fall!
  Sing it o'er a -- gain:
  Sing it o'er a -- gain:
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage plain:
  Make the mes -- sage plain:
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "2."
  Come: and He will give you rest;
  Trust Him: for His word is okain:
  He will take the sin -- ful -- est;
  Christ re -- ceiv -- eth sin -- ful men.
  Sing it o'er a -- gain:
  Sing it o'er a -- gain:
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage plain:
  Make the mes -- sage plain:
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "3."
  Now my heart con -- demns me not,
  Pure be -- fore the law I stand;
  He who cleans'd me from all spot,
  Sat -- is -- fied its last de -- mand.
  Sing it o'er a -- gain:
  Sing it o'er a -- gain:
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage plain:
  Make the mes -- sage plain:
  Christ re -- ceiv -- eth sin -- ful men.

  \set stanza = "4."
  Christ re -- ceiv -- eth sin -- ful men,
  E -- ven me with all my sin;
  Purg'd from ev -- 'ry spot and stain,
  Heav'n with Him I en -- ter in.
  Sing it o'er a -- gain:
  Sing it o'er a -- gain:
  Christ re -- ceiv -- eth sin -- ful men;
  Christ re -- ceiv -- eth sin -- ful men;
  Make the mes -- sage plain:
  Make the mes -- sage plain:
  Christ re -- ceiv -- eth sin -- ful men.
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
