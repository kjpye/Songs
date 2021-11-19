\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Silver Stars are in the Sky"
  subtitle    = "(Lullaby Carol)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "William G. James"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Wheeler"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s4
  s2.*40
  \tempo 4=90 s2.
  s2.
  \tempo 4=54 s2. \tempo 4=90
  s2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s4 s2.*5
  \mark \markup { \box "3b" }    s2.*6
  \mark \markup { \box "3c" }    s2.*4
  \mark \markup { \box "4a" }    s2.*5 s2
  \mark \markup { \box "4b" } s4 s2.*3
  \mark \markup { \box "4c" }    s2.*5 s2
  \mark \markup { \box "5a" } s4 s2.*4
  \mark \markup { \box "5b" }    s2.*4
  \mark \markup { \box "5c" }    s2.*5 s2
}

soprano = \relative {
  \autoBeamOff
  \global
  \oneVoice
  bes'4^\p^\markup "Sopranos or solo" ^\markup\bold "Very quiet and Tenderly"
  aes8 g f4 bes
  aes8 g f4. g8
  ees8 f g4 bes
  c8([bes ees d]) c4
  bes2 4
  aes2^\> g4 % 3b
  f4. ees8 f4
  ees2.\! ~
  ees4 r \voiceOne ees4^\p^\markup "Full choir"
  d8 ees^\< f4 aes4
  g8^\> f ees4.\! 8
  d8^\< ees f4 c'\! % 3c
  bes8^\> a bes4. 8\!
  a8\omit\cresc^\markup\italic "poco cresc." g f4 bes
  a8 g^\< f4 bes
  c8\! d ees^\> c bes a % 4a
  bes2\! 4^\p
  aes2 g4^\>
  f4.ees8 f4\!
  ees2.~
  ees4 r \bar "||" \break bes'4^\pp^\markup "Three voices, or soprano solo as before"
  aes8 g f4 bes % 4b
  aes8 g f4. g8
  ees8 f^\< g4 bes
  c8\!([bes ees d]) c4 % 4c
  bes2 4
  aes2 g4^\>
  f4. ees8 f4
  ees2.\! ~
  ees4 r \bar "||" \break ees4^\p
  d8^\< ees f4 aes\! % 5a
  g8^\> f ees4. 8\!
  d8^\< ees f4 c'\!
  bes8 a bes4. 8
  a8^\cresc g f4 bes % 5b
  a8 g f4 bes^\<
  c8 d\! ees c^\> bes a
  bes2\! 4^\p
  aes2 g4 % 5c
  f4.^\> ees8 f4
  ees2.\!\omit\dim^\markup\italic "molto dim. e rit." ~
  ees2.~
  ees2.\fermata^\> ~
  ees4\! r
  \bar "|."
}

words = \lyricmode {
  The sil -- ver stars are in the sky,
  The red- -- gold moon is rid -- ing high,
  O, sleep, my lit -- tle one sleep! __

  Once long a -- go a -- gainst her breast.
  A mo -- ther hush'd a babe to rest
  Who was the Prince of Heav'n a -- bove,
  The Lord of gen -- tle -- ness and love
  O, sleep, my lit -- tle one sleep. __

  The boo -- book calls a -- cross the night __
  The brown moths flut -- ter in __ the light,
  O, sleep, my lit -- tle one sleep! __

  In Beth -- le -- hem long, long a -- go
  When roads and pad -- docks gleam'd with snow;
  On this same night,
  That mo -- ther mild lull'd in -- to dreams
  Her Roy -- al Child
  So, sleep, my lit -- tle \set associatedVoice = alto one sleep!
  my lit -- tle one sleep! __
}

wordsMidi = \lyricmode {
  "The " sil "ver " "stars " "are " "in " "the " "sky, "
  "\nThe " red- "gold " "moon " "is " rid "ing " "high, "
  "\nO, " "sleep, " "my " lit "tle " "one " "sleep! " 

  "\nOnce " "long " a "go " a "gainst " "her " "breast. "
  "\nA " mo "ther " "hush'd " "a " "babe " "to " "rest "
  "\nWho " "was " "the " "Prince " "of " "Heav'n " a "bove, "
  "\nThe " "Lord " "of " gen tle "ness " "and " "love "
  "\nO, " "sleep, " "my " lit "tle " "one " "sleep. " 

  "\nThe " boo "book " "calls " a "cross " "the " "night " 
  "\nThe " "brown " "moths " flut "ter " "in "  "the " "light, "
  "\nO, " "sleep, " "my " lit "tle " "one " "sleep! " 

  "\nIn " Beth le "hem " "long, " "long " a "go "
  "\nWhen " "roads " "and " pad "docks " "gleam'd " "with " "snow; "
  "\nOn " "this " "same " "night, "
  "\nThat " mo "ther " "mild " "lull'd " in "to " "dreams "
  "\nHer " Roy "al " "Child "
  "\nSo, " "sleep, " "my " lit "tle " \set associatedVoice = alto "one " "sleep! "
  "\nmy " lit "tle " "one " "sleep! " 
}

alto = \relative {
  \autoBeamOff
  \global
  \voiceTwo
  s4
  s2.*8
  s2 bes4\omit\p
  bes8 c^\< d4 c8([d])
  ees8^\> bes bes4. 8
  bes8\omit\< c d4 4\! % 3c
  ees8\omit\> 8 4. f8\!
  ees8\omit\cresc 8 4 d
  ees8 8\omit\< 4 d
  ees8\! f g\omit\> g ees ees % 4a
  d2\! f4\omit\p
  ees2 d4\omit\>
  c4. 8 d4
  ees2.\! ~
  ees4 s \partCombine
    \relative {
      \set Staff.aDueText = #""
      \voiceThree \tiny
      g'4\omit\pp \voiceFour \tiny
      ees8 8 4 4 % 4b
      ees8 8 c4(d8) d
      c8 d\omit\< ees4 f
      g2\! a4 % 4c
      f2 ees4
      ees2 4\omit\>
      c4. 8 d4
      \hide ees2.\! ~
      \hide ees4 s
    }
    \relative {
      \voiceFour \tiny
      ees'8\omit\pp ([d])
      c8 bes aes4 g % 4b
      c8 bes aes4(bes8) bes
      c8 bes\omit\< ees4 d
      ees8\![d] c4 f8[ees] % 4c
      d2 g,4
      c2 bes4\omit\>
      aes4. 8 bes4
      \hide ees2.\! ~
      \hide ees4 s
    }
  bes4\omit\p
  bes8\omit\< c d4 c8\!([d]) % 5a
  ees8\omit\> bes8 4. 8\!
  bes8\omit\< c d4 4\!
  ees8 8 4. f8
  ees8\omit\cresc 8 4 d % 5b
  ees8 8 4 d\omit\<
  ees8\! f g g\omit\> ees ees
  d2\! f4\omit\p
  ees2 d4 % 5c
  c4.\omit\> 8 d4
  ees2\! c4
  bes4. 8 aes4
  bes2.\fermata ~
  bes4 s
}

tenor = \relative {
  \autoBeamOff
  \global
  \oneVoice
  r4
  R2.*8
  r4 r \voiceOne g4\omit\p
  aes8 8\omit\< 4 f8([bes])
  bes8\omit\> aes g4.\! 8
  aes8\omit\< 8 4 4\! % 3c
  g8\omit\> fis g4. bes8\!
  f8\omit\cresc g a4 bes
  c8 bes\omit\< a4 bes
  g8\! b c\omit\> ees c c % 4a
  bes2\! d4\omit\p
  c2 bes4\omit\>
  aes4. 8 4
  g2.\! ~
  g4 r r
  R2.*8
  r2 g4\omit\p
  aes8 \omit\< 8 4 f8\! ([bes]) % 5a
  bes8\omit\> aes g4. 8\!
  aes8\omit\> 8 4 4\!
  g8 fis g4. bes8
  f8\omit\cresc g a4 bes % 5b
  c8 bes a4 bes\omit\<
  g8\! b c ees\omit\> c c
  bes2\! d4\omit\p
  c2 bes4 % 5c
  aes4.\omit\> 8 4
  g2\omit\dim aes4
  g4. 8 f4
  g2.\fermata \omit\> ~
  g4 r
}

bass = \relative {
  \autoBeamOff
  \global
  \voiceTwo
  s4
  s2.*8
  s2 ees4\omit\p
  bes8 8\omit\< 4 4
  ees8\omit\> 8 4\! bes
  bes8\omit\< 8 4 4\! % 3c
  ees8\omit\> 8 4. d8\!
  c8\omit\cresc 8 4 bes
  f'8 8\omit\< 4 g
  c,8\! 8 8\omit\> 8 f f % 5a
  bes,2\! 4\omit\p
  bes2 4\omit\>
  bes4. 8 4
  ees2.\! ~
  ees4 s2
  s2.*8
  s2 ees4\omit\p
  bes8\omit\< 8 4 4\! % 5a
  ees8\omit\> 8 4 bes\!
  bes8\omit\< 8 4 4
  ees8\! 8 4. d8
  c8\omit\cresc 8 4 bes % 5b
  f'8 8 4 g\omit\<
  c,8\! 8 8 8\omit\> f f
  bes,2\! 4\omit\p
  bes2 4 % 5c
  bes4.\omit\> 8 4
  ees2.\omit\dim ~
  ees2.~
  ees2.\omit\>\fermata ~
  ees4\! s
}

pianoRHone = \relative {
  \global
  <g' bes>4\omit\pp (
  aes8 g f4 bes
  aes8 g f4.) g8(
  ees8 <d f> <ees g>4 <ees bes'>
  c'8 bes ees d c4
  bes2) 4(
  aes2 g4 % 3b
  f4. ees8 f4
  <g, bes ees>2.~
  q2) q4\omit\p (
  <bes d>8\omit\< <c ees> <d f>4\! aes'4
  <ees g>8\omit\> <bes f> <bes ees>4.) ees8\!
  <bes d>8\omit\< <c ees> <d f>4 <d c'>\! % 3b
  <g bes>8 <fis a> <g bes>4.) <f bes>8
  a8\omit\cresc g f4 bes
  a8(g f4)\omit\< bes4(
  c8\! d ees\omit\> c bes a % 4a
  <d, bes'>2\!) <d f bes>4\omit\p
  <c ees aes>2 <bes d g>4\omit\>
  f'4. ees8 f4
  <g, bes ees>2.\! ~
  q4 r <g' bes>4\omit\pp (
  aes8 g f4 bes % 4b
  aes8 g f4.) g8(
  ees8 <d f>\omit\< <ees g>4 <f bes>
  c'8 bes ees d <aes c>4 % 4c
  <d, f bes>2) <ees bes'>4(
  <ees aes>2 <ees g>4
  f4. ees8 f4
  <g, bes ees>2.~
  q2) q4\omit\p(
  <bes d>8\omit\< <c ees> <d f>4 aes'\! % 5a
  <ees g>8\omit\> <bes f> <bes ees>4.) ees8\! (
  <bes d>8\omit\< <c ees> <d f>4 <d c'>
  <g bes>8\! <fis a> <g bes>4.) <f bes>8(
  a8\omit\cresc g f4 bes % 5b
  a8 g f4) bes
  c8\omit\< d ees c\! bes\omit\> a
  <d, bes'>2 <d f bes>4\omit\p(
  <c ees aes>2 <bes d g>4 % 5c
  f'4.\omit\> ees8 f4\!
  ees2.\omit\dim^\markup\italic "molto dim. e rit." ) ~
  ees2.~
  ees2.\fermata ~
  ees4\omit\ppp r
}


pianoRHtwo = \relative {
  \global
  r4\omit\pp
  ees'2 4
  ees4 d2
  s2.
  ees2 4
  ees4(d) des
  c4 d ees % 3b
  c2 d4
  s2.
  s2.
  s2 c8 d
  s2.
  s2. % 3c
  s2.
  ees2 d4
  ees2 d4
  ees8 f g4 ees % 4a
  s2.
  s2.
  c2 d4
  s2.
  s2.
  ees2 4
  ees4 c d
  s2.
  g2 <f a>8 ees % 4c
  s2.
  s2.
  c2 d4
  s2.
  s2.
  s2 c8(d) % 5a
  s2.
  s2.
  s2.
  ees2 d4 % 5b
  ees2 d4
  ees8 f g4 ees
  s2.
  s2. % 5c
  c2 d4
  <g, bes>2(<aes c>4
  <g bes>4.( q8 <f aes>4
  <g bes>2.) ~
  q4 s
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\pp
  s2.
  s2.
  s4 s2\<
  s4 s2\!
  s2.
  s2 s4\> % 3b
  s2.
  s2.\!
  s2 s4\p
  s4\< s2\!
  s2\> s4\!
  2\< s4\! % 3c
  s2\> s8 s\!
  s2.\omit\cresc
  s4 s2\<
  s4\! s2\> % 4a
  s2\! s4\p
  s2 s4\>
  s2.
  s2.\!
  s2 s4\pp
  s2. % 4b
  s2.
  s4 s2\<
  s2.\! % 4c
  s2.
  s2 s4\>
  s2.
  s2.\!
  s2 s4\p
  s2\< s4\! % 5a
  s2\> s4\!
  s2.\<
  s2.\!
  s2.\cresc % 5b
  s2.
  s4.\< s4\! s8\>
  s2 s4\p
  s2. % 5c
  s2\> s4\!
  s2.\omit\dim
  s2.
  s2.
  s2
}

pianoLHone = \relative {
  \global
  ees'8\omit\pp (d
  c8 bes) aes4 g
  <f c'>4 bes2
  bes4~4\omit\< g(
  aes8 g c\! bes aes4)
  g4(f) <ees g>
  <f aes>2 <g bes>4\omit\> % 3b
  aes2~4
  ees,8\!( bes' g'4 bes,)
  ees,8 bes' g'4 bes,\omit\p)
  aes'4\omit\<( bes,2\!)
  ees,8\omit\>( bes' g'4 bes,\!)
  aes'4\omit\<( bes,2) % 3c
  ees,8\omit\< ( bes' g'4 ees8\! d)
  f8\omit\cresc (g a4) bes
  c8 bes a4\omit\< bes
  c,8\! (g') c4~4 % 4a
  bes4(bes,) bes\omit\p
  bes4 4 4\omit\>
  aes'2.
  ees,8\! (bes' g'4 bes,)
  ees,8(bes' g'4) ees'8\omit\pp d
  c8 bes aes4 g % 4b
  c8 bes aes4 bes
  c8 bes\omit\< ~<ees, bes'>4 <d bes'>4
  ees'8\! d c4 f, % 4c
  bes4 aes g
  <f c>2 <g bes>4\omit\>
  aes2~4
  ees,8\!( bes' g'4 bes,)
  ees,8(bes' g'4) bes,\omit\p
  aes'4\omit\< (bes,2\!) % 5a
  ees,8\omit\> (bes' g'4 bes,)
  aes'4\omit\< (bes,2)
  ees,8\! (bes' g'4 ees8 d)
  f8\omit\cresc (g a4) bes % 5b
  c8(bes a4) bes
  c,8( g' c4) ~ 4\!
  bes4(bes,) bes\omit\p
  bes4 4 4 % 5c
  aes'2\omit\> 4\!
  <ees, bes'>2.~
  q2.~
  q2.\fermata ~
  q4 r
}

pianoLHtwo = \relative {
  \global
  s4
  s2.
  s4 bes4(aes)
  g8(bes,) ees4 g
  s2.
  s2.
  s2. % 3b
  aes2(bes,4)
  s2.
  s2.
  s2.
  s2.
  s2. % 3c
  s2.
  c2 bes4
  f'2 g4
  s4 c(f,) % 4a
  s2.
  s2.
  bes,4 4 4
  s2.
  s2.
  s2. % 4b
  s2.
  s2.
  c2 f4 % 4c
  s2.
  s2.
  aes2(bes,4)
  s2.
  s2.
  s2. % 5a
  s2.
  s2.
  s2.
  c2 bes4 % 5b
  f'2 g4
  s2 f4
  s2.
  s2. % 5c
  bes,4 4 4
  s2.
  s2.
  s2.
  s2
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
            \new Voice = alto    \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
            \new Voice = alto    \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = alto    \alto
            \new Lyrics \lyricsto soprano \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
