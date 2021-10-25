\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bobby Shaftoe"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "North Country Folk Tune"
  arranger    = "Arr. W. G. Whittaker"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 2/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s2*20
  \tempo 4=90 s2*2 \tempo 4=100 % 2c++
  s2
  s4 \tempo 4=33 s4 \tempo 4=100
  s2*15
  s4 \tempo 4=50 s4 \tempo 4=100
  s2*14
  \tempo 4=50 s8. \tempo 4=100 s16 s4
  s4 \tempo 4=33 s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2*4
  \mark \markup { \box "1b" } s2*4
  \mark \markup { \box "2a" } s2*5
  \mark \markup { \box "2b" } s2*5
  \mark \markup { \box "2c" } s2*6
  \mark \markup { \box "3a" } s2*5
  \mark \markup { \box "3b" } s2*5
  \mark \markup { \box "3c" } s2*6
  \mark \markup { \box "4a" } s2*5
  \mark \markup { \box "4b" } s2*6
  \mark \markup { \box "4c" } s2*5
}

soprano = \relative {
  \global
  bes'8^\p^\markup\bold "Gaily and lightly" 8 8 ees
  d8 f d(bes)
  f8 8 8 bes
  a8 c a(f)
  bes8^\< a bes ees\! % 1b
  d8^>^\> f d(bes\!)
  c8 ees c a
  bes8 r bes4
  d8^\pp f d bes % 2a
  d8 f d4--
  c8 ees c a
  c8 ees c4--
  d8 f d bes
  d8 f d4-- % 2b
  c8 ees c a
  bes8 r bes4--
  bes8^\ppp 8 8 ees
  d8 f d(bes)
  f8 8 8 bes % 2c
  a8 c a(f)
  bes8^\markup\italic rit. a bes ees
  d8-- f d(bes)
  c8^\markup\italic "a tempo" ees c a
  bes8 r bes4\fermata \bar "||"
  R2*5 % 3a
  R2 % 3b
  c8^\mf ees c a
  bes8 r bes4
  R2
  R2
  R2*4 % 3c
  c8^\mf^\> ees c a\!
  bes8 r bes4\fermata\omit\pp^\markup{\dynamic pp \italic poco}
  d8^\f f d bes % 4a
  d8 f d4
  c8 ees c a
  c8 ees c4
  d8 f d bes
  d8 f d4 % 4b
  c8 ees c a
  bes8 r bes4
  bes8^\ff d bes d
  bes8 d f4
  a,8 c a c
  a8 c ees4 % 4c
  bes8 d bes d
  bes8 d f8. 16
  g8.\fermata ees16 c f8.
  d8 r bes4\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Bon -- ny Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair,
  Comb -- ing down his yel -- low hair,
  He's my ain for ev -- er -- mair
  Bon -- ny Bob -- by Shaf -- toe.
  
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Bon -- ny Bob -- by Shaf -- toe.

  Bon -- ny Bob -- by Shaf -- toe.
  Bon -- ny Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair,
  Comb -- ing down his yel -- low hair,
  He's my ain for ev -- er -- mair
  Bon -- ny Bob -- by Shaf -- toe.
  
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Hur -- rah for Bob -- by Shaf -- toe.
}

wordsSopMidi = \lyricmode {
  "Bob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, "
  "\nComb" "ing " "down " "his " yel "low " "hair, "
  "\nHe's " "my " "ain " "for " ev er "mair "
  "\nBon" "ny " Bob "by " Shaf "toe. "
  
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBon" "ny " Bob "by " Shaf "toe. "
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, "
  "\nComb" "ing " "down " "his " yel "low " "hair, "
  "\nHe's " "my " "ain " "for " ev er "mair "
  "\nBon" "ny " Bob "by " Shaf "toe. "
  
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nHur" "rah " "for " Bob "by " Shaf "toe. "
}

alto = \relative {
  \global
  <d' f>8\omit\p^\markup{\dynamic p \italic staccato} r q r
  q8 r q r
  q8 r q r
  <c f>8 r q r
  <d f>8 r q r % 1b
  q8 r q r
  <c ees>8 r q r
  d8 r <d f> r
  <d f>8^\pp r r4 % 2a
  q8 r r4
  f8 r r4
  f8 r r4
  q8 r r4
  a8 r r4 % 2b
  <ees g>8 r <c f> r
  <d f>8 r q4--
  q8^\ppp r r4
  R2
  <ees f>8 r r4 % 2c
  R2
  <d f>8 r r4
  R2
  <c g'>4 <c f>
  <d f>8 r q4\fermata
  R2*4 % 3a
  d8^\mf f d bes
  d8 f d4 % 3b
  g4. f8
  d8 r d4
  R2
  R2
  f8^\p 8 8 bes % 3c
  a8 c a(f)
  d8^\p^\< ees f\! g
  a8^\> bes f8(d\!)
  f8^\> ees d d\!
  f8(ees) d4\fermata\omit\pp^\markup{\dynamic pp \italic poco}
  bes'8^\f d bes f % 4a
  bes8 d bes4
  g8 c g ees
  g8 c bes(a)
  bes8 d bes f
  bes8 d bes4 % 4b
  g8 c g f
  f8 r f4
  f8^\ff bes f bes
  f8 bes f4
  f8 a f a
  f8 a f4 % 4c
  f8 bes f bes
  f8 bes bes8. d16
  ees8.\fermata c16 bes8 a16(g) f8 r f4\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa
  Bob -- by Shaf -- toe.

  He's my ain for ev -- er -- mair,
  Bob -- by Shaf -- toe.

  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Bon -- ny Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair,
  Comb -- ing down his yel -- low hair,
  He's my ain for ev -- er -- mair
  Bon -- ny Bob -- by Shaf -- toe.
  
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Hur -- rah for Bob -- by Shaf -- toe.
}

wordsAltoMidi = \lyricmode {
  "Laa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa "
  "\nBob" "by " Shaf "toe. "

  "\nHe's " "my " "ain " "for " ev er "mair, "
  "\nBob" "by " Shaf "toe. "

  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, "
  "\nComb" "ing " "down " "his " yel "low " "hair, "
  "\nHe's " "my " "ain " "for " ev er "mair "
  "\nBon" "ny " Bob "by " Shaf "toe. "
  
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nHur" "rah " "for " Bob "by " Shaf "toe. "
}

tenor = \relative {
  \global
  bes8\omit\p^\markup{\dynamic p \italic staccato} r bes r
  bes8 r bes r
  bes8 r bes r
  g8 r g r
  bes8 r bes r % 1b
  bes8 r bes r
  g8 r a r
  bes8 r bes r
  bes8 r r4 % 2a
  bes8 r r4
  a8 r r4
  a8 r r4
  bes8 r r4
  bes8 r r4 % 2b
  8 r a r
  bes8 r bes4--
  bes8^\ppp r r4
  R2
  c8 r r4 % 2c
  R2
  bes8 r r4
  R2
  g4 a8(c) bes8 r bes4\fermata
  R2 % 3a
  R2
  c8^\mf^\< ees c a
  c8 ees\! c4
  R2
  R2 % 3b
  c4^\mf a8(c) bes8 r bes4
  R2
  R2
  R2 % 3c
  R2
  bes8^\mf^\< a bes ees\!
  d8^\> f d\!(bes)
  c8^\p^\> bes a c\!
  bes8 r f4\fermata\omit\pp^\markup{\dynamic pp \italic poco}
  f'8^\f bes f d % 4a
  f8 bes f4
  c8 g' ees c
  ees8 g f4
  f8 bes f d
  f8 bes f4 % 4b
  c8 g' ees c
  d8 r d4
  d8^\ff f d f
  d8 f d4
  c8 f c f
  c8 ees a,4 % 4c
  d8 f d f
  d8 f d8. bes'16
  bes8.\fermata g16 f8 c
  d8 r d4\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  Laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa
  Bob -- by Shaf -- toe.

  Comb -- ing down his yel -- low hair
  Bob -- by __ Shaf -- toe.

  He'll come back and mar -- ry me. __
  Bon -- ny Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair,

  Comb -- ing down his yel -- low hair,
  He's my ain for ev -- er -- mair
  Bon -- ny Bob -- by Shaf -- toe.
  
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Hur -- rah for Bob -- by Shaf -- toe.
}

wordsTenorMidi = \lyricmode {
  "Laa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa "
  "\nBob" "by " Shaf "toe. "

  "\nComb" "ing " "down " "his " yel "low " "hair "
  "\nBob" "by "  Shaf "toe. "

  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, "

  "\nComb" "ing " "down " "his " yel "low " "hair, "
  "\nHe's " "my " "ain " "for " ev er "mair "
  "\nBon" "ny " Bob "by " Shaf "toe. "
  
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nHur" "rah " "for " Bob "by " Shaf "toe. "
}

bass = \relative {
  \global
  <bes, f'>8\omit\p^\markup {\dynamic p \italic staccato} r q r
  q8 r q r
  q8 r q r
  q8 r q r
  q8 r q r % 1b
  q8 r q r
  q8 r q r
  q8 r q r
  q8^\pp r r4 % 2a
  \repeat unfold 5 {q8 r r4}
  ees8 r f4-- % 2b+
  q8 r q4--
  q8^\pp r r4
  R2
  <a, f'>8 r r4 % 2c
  R2 <aes f'>8 r r4
  R2
  ees'4 f
  <bes, f'>8 r q4\fermata
  d8^\mf f d bes % 3a
  d8 f d4
  f2^\< (
  g4\!) a
  bes2^\>
  bes,2\! % 3b
  ees4 f
  <bes, f'>8 r q4
  bes8^\p 8 8 ees
  d8 f d(bes)
  ees4 d % 3c
  c4 f
  bes,8^\p^\< c d ees\!
  f8^\> g a\!(bes)
  a8^\> g f ees\!
  d8(c) bes4\fermata\omit\pp^\markup{\dynamic pp \italic poco}
  bes'4^\f_\markup\italic Sustained a % 4a
  g4. f8
  ees4 d
  c4(f)
  bes4 a
  g4. f8 % 4b
  ees8 8 f4
  bes8^ff f d c
  bes8^\ff bes' bes, bes'
  bes,8 bes' bes,(bes')
  f8 f, f' f,
  f'8 f, f'(f,) % 4c
  bes8 bes' bes, bes'
  bes,8 bes' bes,8. bes'16
  ees8.\fermata ees,16 f8 g16(a)
  bes8 r bes,4\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa laa laa laa
  laa laa laa laa laa
  Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair,
  Bob -- by Shaf -- toe,
  Bob -- by Shaf -- toe.
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver Buck -- les,
  Sil -- ver buck -- les on his knee,
  Bon -- ny Bob -- by Shaf -- toe.

  Bob -- by Shaf -- toe's bright and fair, __
  Comb -- ing down his yel -- low hair,
  Bon -- ny Bob -- by,
  
  Bob -- by Shaf -- toe's gone to sea, __
  Sil -- ver buck -- les on his knee __
  He'll come back and mar -- ry me. __
  Hur -- rah for Bob -- by Shaf -- toe.
}

wordsBassMidi = \lyricmode {
  "Laa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa " "laa " "laa " "laa "
  "\nlaa " "laa " "laa " "laa " "laa "
  "\nBob" "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, "
  "\nBob" "by " Shaf "toe, "
  "\nBob" "by " Shaf "toe. "
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " Buck "les, "
  "\nSil" "ver " buck "les " "on " "his " "knee, "
  "\nBon" "ny " Bob "by " Shaf "toe. "

  "\nBob" "by " Shaf "toe's " "bright " "and " "fair, " 
  "\nComb" "ing " "down " "his " yel "low " "hair, "
  "\nBon" "ny " Bob "by, "
  
  "\nBob" "by " Shaf "toe's " "gone " "to " "sea, " 
  "\nSil" "ver " buck "les " "on " "his " "knee " 
  "\nHe'll " "come " "back " "and " mar "ry " "me. " 
  "\nHur" "rah " "for " Bob "by " Shaf "toe. "
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\partCombineChords \soprano} {\partCombineChords \alto}
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\partCombineChords \tenor} \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\partCombineChords \soprano} {\partCombineChords \alto}
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\partCombineChords \tenor} \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
