\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Aura Lee"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Southern Folk Song"
  arranger    = "Arr. Ruth Artman"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Gently 4=104
  s1*21
  \set Score.tempoHideNote = ##t
  \tempo 4=100 s1 \tempo 4=104 % 5a
  s1*8
  \tempo 4=100 s1 \tempo 4=104 % 6a+++
  s1*6
  \tempo 4=52 s2 \tempo 4=104 s % 7a++
  s1*5
  \tempo 4=52 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "6a" } s1*4
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "7a" } s1*4
  \mark \markup { \box "7b" } s1*5
}

flute = \relative {
  r2 r4 d''\mp\< (
  e a a c
  e2) c4( e
  d2\> d,\!)
  R1 % 2b
  r2 c'8(b a g
  d'4. 8 e d d4)
  g8(d d b d4 c
  b2) r4 d( % 3a
  c4.\startTrillSpan d8\stopTrillSpan e2)
  d4. \( (e8 d c b a
         g4) d'8 b g4 \) r4 % 3b
  R1*5
  r2 r4 r8 cis8( % 4a++
  d8 a d a d c b a % 4b
  g2.) g8( a
  b4. g8 d'4 b
  e4) r8 e8(d c g a % 5a
  b2) r
  R1*8 \key a \major
  a4.(8 2 % 6b
  gis4. eis8 gis2) \breathe
  a4(gis fis2
  eis4 fis gis b)
  cis4(4 d cis % 7a
  b2 dis~
  dis2\fermata) r
  e8(b e b e b e d
  cis4 b cis d % 7b
  e2) r
  e,2.(e4--
  a2) r4 cis4-- (
  a2.\fermata) r4
}

sopranoOne = \relative {
  \global
  R1*4
  d'4^\mp g fis g % 2b
  a4 e a2
  g4 fis e fis
  g2(d)
  d4 g fis g % 3a
  a4 e a2
  g4 fis e fis
  g1 % 3b
  b4.^\mf 8 2
  b4. fis8 b2
  b4 a g a
  b1 % 4a
  b4 4 c b
  a4 e a4. g8
  g4 fis b4. a8 % 4b
  g1
  R1
  R1^\markup\italic "poco rit." % 5a
  r2^\markup\italic "a tempo" r4 g8^\mp g
  a4 b c8(b) c4
  d4 r8 d8 c4 4 % 5b
  b4 4 a d8(c
  b2 d
  c8 d e2.) % 6a
  d4 4 c c
  b4^\<( d e2\!)
  R1^\markup\italic "poco rit" \bar "||" \key a \major
  cis4.\omit\mf^\markup{\dynamic mf \italic "a tempo"} 8 cis2 % 6b
  cis4. gis8 cis2
  cis4 b a b
  cis1
  cis4 4 d cis % 7a
  b4 dis fis2~
  fis2\fermata r4 a,^\mp
  a4^\markup\italic "a tempo" g cis4. b8
  a4^\< (b cis d % 7b
  e2^\mf) r
  e,2.\omit\mp^\markup{\dynamic mp \italic morendo} e4--
  e1~
  e2.\fermata r4
  \bar "|."
}

wordsSop = \lyricmode {
  As the black -- bird in the spring,
  'neath the wil -- low tree, __
  Sat and piped I heard him sing,
  sing -- ing Au -- ra Lee.
  Au -- ra Lee, Au -- ra Lee,
  maid of gold -- en hair!
  Sun -- shine came a -- long with thee,
  and swal -- lows in the air.

  On her cheek the rose __ was born,
  sweet mu -- sic when she spoke,
  Ah __
  Rays in splen -- dor broke. __
  Au -- ra Lee, Au -- ra Lee,
  Maid of gold -- en hair!
  Sun -- shine came a -- long with thee,
  And swal -- lows in the air.
  Au -- ra Lee. __y
}

wordsSopMidi = \lyricmode {
  "As " "the " black "bird " "in " "the " "spring, "
  "\n'neath " "the " wil "low " "tree, " 
  "\nSat " "and " "piped " "I " "heard " "him " "sing, "
  "\nsing" "ing " Au "ra " "Lee. "
  "\nAu" "ra " "Lee, " Au "ra " "Lee, "
  "\nmaid " "of " gold "en " "hair! "
  "\nSun" "shine " "came " a "long " "with " "thee, "
  "\nand " swal "lows " "in " "the " "air. "

  "\nOn " "her " "cheek " "the " "rose "  "was " "born, "
  "\nsweet " mu "sic " "when " "she " "spoke, "
  "\nAh " 
  "\nRays " "in " splen "dor " "broke. " 
  "\nAu" "ra " "Lee, " Au "ra " "Lee, "
  "\nMaid " "of " gold "en " "hair! "
  "\nSun" "shine " "came " a "long " "with " "thee, "
  "\nAnd " swal "lows " "in " "the " "air. "
  "\nAu" "ra " "Lee. " "__y "
}

sopranoTwo = \relative {
  \global
  R1*4
  d'4^\mp g fis g % 2b
  a4 e a2
  g4 fis e fis
  g2(d4 c)
  b4 b c d % 3a
  e4 c e2
  e4 d c d
  d1 % 3b
  g4.^\mf 8 2
  fis4. dis8 fis2
  g4 fis e e
  dis4(e fis2) % 4a
  gis4 4 4 4
  e4 cis cis4. e8
  d4 4 fis4. 8 % 4b
  d1
  R1
  R1 % 5a
  r2^\markup\italic "a tempo" r4 g8^\mp 8
  a4 gis a8(b) a4
  a4 r8 a8 4 4 % 5b
  g4 d g fis(
  g2 b2
  a8 b c2.) % 6a
  a4 4 4 4
  g4^\<(b2.)
  R1\!^\markup\italic "poco rit." \bar "||" \key a \major
  cis4.\omit\mf^\markup{\dynamic mf \italic "a tempo"} 8 2 % 6b
  gis4. eis8 gis2
  a4 fis fis gis
  eis4(fis gis b)
  ais4 4 4 4 % 7a
  fis4 b dis2~
  dis2\fermata r4 a^\mp
  a4^\markup\italic "a tempo" gis4 4. 8
  e4^\<(fis gis a % 7b
  cis2^\mf) r2
  e,4\omit\mp^\markup{\dynamic mp \italic morendo} (d cis) d
  cis1~
  cis2.\fermata r4
  \bar "|."
}

alto = \relative {
  \global
  R1*4
  d'4^\mp g fis g % 2b
  a4 e a2
  g4 fis e fis
  g2(d4 c)
  b4 g a b % 3a
  c4 4 cis2
  c4 b a c
  b1 % 3b
  d4.^\mf 8 2
  dis4. b8 dis2
  e4 d c c
  b4(cis dis2) % 4a
  e4 4 d d
  cis4 a a4. 8
  a4 4 d4. c8 % 4b
  b1
  R1
  R1^\markup\italic "poco rit." % 5a
  d4^\markup\italic "a tempo" g fis g
  a4 e a2 \breathe
  g4 fis e fis % 5b
  g2(d)
  d4 g fis g
  a4 e a2 % 6a
  g4 fis e fis
  g2^\< (fis\!)
  R1^\markup\italic "poco rit." \bar "||" \key a \major
  e4.\omit\mf^\markup{\dynamic mf \italic "a tempo"} 8 2 % 6b
  eis4. cis8 eis2
  fis4 e d b
  cis4(dis eis gis)
  fis4 4 e e % 7a
  dis4 fis a2~
  a2\fermata r4 a4^\mp
  a4^\markup\italic "a tempo" gis e4. d8
  cis4^\<(d e fis % 7b
  a2^\mf) r
  e4\omit\mp^\markup{\dynamic mp \italic morendo} (d cis)b
  a1~
  a2.\fermata r4
  \bar "|."
}

wordsAlto = \lyricmode {
  As the black -- bird in the spring,
  'neath the wil -- low tree, __
  Sat and piped I heard him sing,
  sing -- ing Au -- ra Lee.
  Au -- ra Lee, Au -- ra Lee,
  maid of gold -- en hair!
  Sun -- shine came a -- long with thee,
  and swal -- lows in the air.

  On her cheek the rose __ was born,
  mu -- sic when she spoke,
  In her eyes the rays of morn
  in -- to splen -- dor broke. __
  Au -- ra Lee, Au -- ra Lee,
  Maid of gold -- en hair!
  Sun -- shine came a -- long with thee,
  And swal -- lows in the air.
  Au -- ra Lee. __
}

wordsAltoMidi = \lyricmode {
  "As " "the " black "bird " "in " "the " "spring, "
  "\n'neath " "the " wil "low " "tree, " 
  "\nSat " "and " "piped " "I " "heard " "him " "sing, "
  "\nsing" "ing " Au "ra " "Lee. "
  "\nAu" "ra " "Lee, " Au "ra " "Lee, "
  "\nmaid " "of " gold "en " "hair! "
  "\nSun" "shine " "came " a "long " "with " "thee, "
  "\nand " swal "lows " "in " "the " "air. "

  "\nOn " "her " "cheek " "the " "rose "  "was " "born, "
  "\nmu" "sic " "when " "she " "spoke, "
  "\nIn " "her " "eyes " "the " "rays " "of " "morn "
  "\nin" "to " splen "dor " "broke. " 
  "\nAu" "ra " "Lee, " Au "ra " "Lee, "
  "\nMaid " "of " gold "en " "hair! "
  "\nSun" "shine " "came " a "long " "with " "thee, "
  "\nAnd " swal "lows " "in " "the " "air. "
  "\nAu" "ra " "Lee. " 
}

pianoRHone = \relative {
  \global \voiceOne
  d'4 g fis g
  a2 \oneVoice <e g a c>4 <g a c e>
  <a c e g>4 <g a c e> q <a c e g> \voiceOne
  <e' fis a d>2 d
  b,2. 4 % 2b
  <a c>1
  d2. 4
  <b d>2 <g b>4 <a c>
  <b d>4 <d g> <d fis> <d g> % 3a
  <g a>8 e q e e' e, a e'
  <e fis> c q c q c q c
  g'8 d d' b g4 g,8 a % 3b
  <d, g b>4 <g b d>2 4
  <dis fis b dis>4 <fis b dis fis>2 4
  <g b e g>4 <fis a d fis> \voiceOne <e c' e>2 \oneVoice
  <dis fis b dis>4 r \voiceOne fis'(b) \oneVoice % 4a
  r4 r8 \voiceOne s c4(b)
  a4 e a8 e a cis \oneVoice
  <fis, d'>8 <e a> <fis d'> <e a> <fis d'> <e a> <fis d'> <e a> % 4b
  g8 d d' b g4 g,8 a
  b4 r8 d, d' b g d
  r4 r8 e d' c g a % 5a
  b4 r8 d, d' b g d
  r4 r8 e a e a c
  \voiceOne d4. 8 <a c>2 % 5b
  \oneVoice b8 g a b <e, g a>4 <d fis d'>
  b'8 g b d g b, d g
  e8 c e g \voiceOne a4. g8 % 6a
  fis8 d fis a d c b a
  <g b>4~<g d'> <e gis e'>2--
  e'2 2 \bar "||" \key a \major \voiceOne
  <e,, a cis>4 <a cis e>2 4 % 6b
  <eis gis cis eis>4 <gis cis eis gis>2 4
  <fis' a cis>4 <e gis b> <d fis a> <d fis b>
  cis'1
  <fis, ais cis>4. fis8 fis'4(e) % 7a
  \oneVoice <fis, b dis>2 r4 b~
  <b b'>2\fermata r
  \voiceOne <gis e'>8 <fis b> <gis e'> <fis b> <gis e'>8 <fis b> <gis e'> <fis b>
  <e e'>4 <d d'> <cis cis'> <a d a'> % 7b
  \oneVoice <gis cis gis'>2 \voiceOne e2~
  e2. e4--~
  e8 cis e a~<a cis gis'>4 r
  <a' cis gis'>2\fermata\arpeggio r2\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r4 b2 4
  r4 <c e> s2
  s1
  s1
  g1 % 2b
  s1
  <a c>1
  s1*7
  s2 g'4(a) % 3b+++
  s2 <b dis> % 4a
  s4. e8~<e gis>2
  e1
  s1*6
  <e, g a>2 <e g>4(<d fis>) % 5b
  s1*2
  s2 r4 cis' % 6a
  s1*7
  s2 <fis ais>2 % 7a
  s1*5
  <a,, b d>1 % 7b++
  s1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mp s2.\<
  s1
  s2. s4\!
  s1\<
  s1\mp % 2b
  s1*7
  s1\mf % 3b+
  s1*8
  s1-\markup\italic "poco rit." % 5a
  s1\omit\mp-\markup{\dynamic mp \italic "a tempo"}
  s1*7
  s1-\markup\italic "poco rit." % 6a+++
  s1\omit\mf-\markup{\dynamic mf \italic "a tempo"} % 6b
  s1*6
  s1\omit\mp-\markup{\dynamic mp \italic "a tempo"} % 7a+++
  s2.\< s4\! % 7b
  s2\mf s\mp
  s1\omit\>-\markup\italic morendo
  s1
  s2. s4\omit\ppp
}

pianoLHone = \relative {
  \global \voiceOne
  r4 <d g>2 q4
  r4 <e a> <a c> <c e> \oneVoice
  \showStaffSwitch
  <e g>4 <c e> <c e> <e g> \voiceTwo \change Staff = pianorh
  <d a' c>2 d \change Staff = pianolh \voiceOne
  r4 d,2 4 % 2b
  r4 e2 4
  r4 fis2 4
  r4 g4 d e
  <g, d'>4 <g' b> <a c> b % 3a
  c2 <a cis> \change Staff = pianorh \voiceTwo
  d8 a' d, a' d, a' d, a'
  <g b>2. \change Staff = pianolh \oneVoice r4 % 3b
  <g,, d' g>4 <g' b d>2 4
  <b, fis' b>4 <fis' b dis>2 4
  <e b' e>4 <d a' d> \voiceOne g(a) \oneVoice
  <b, fis' b>4 r \clef treble <b' fis'>2 % 4a
  \voiceOne r8 b'~<b d>2. \oneVoice
  <a cis>2. r4
  <d, a'>8 c' q c q c q c % 4b
  <g b>2. r4 \clef bass
  \voiceOne r8 d, b'2.
  r8 e, c'2. % 5a
  r8 d, b'2.
  r8 e,8 b'4 c2
  \oneVoice d4 d, d' d, \voiceOne % 5b
  d'8 b c d c2 \oneVoice
  g8 b d b b d g d
  c8 e g e \voiceOne r4 <c fis> \change Staff = pianorh \voiceTwo % 6a
  d8 fis a c d, fis a c
  <g d'>4~<g b> <e b' d>2--
  e'2 e, \change Staff = pianolh \key a \major \oneVoice
  <a,, e' a>4 <a' cis e>2 4 % 6b
  <cis, gis' cis>4 <gis' cis eis>2 4 \change Staff = pianorh \voiceTwo
  <fis' a cis> <e gis b> <d fis a> <b fis' b> \change Staff = pianolh \clef treble \voiceOne
  gis'2. 4
  r8 cis~<cis e>2. % 7a
  \oneVoice <b dis>2 r
  <a cis dis fis>2\fermata \voiceTwo \change Staff = pianorh s
  <e b'>8 d' q d q d q d
  <a cis>4 <fis a> <e gis> <b fis'> \change Staff = pianolh \clef bass % 7b
  \oneVoice <a e'>2 s
  <a, fis'>1
  a8 e' a cis e4 \change Staff = pianorh \voiceTwo s
  <a cis e>2\fermata\arpeggio \change Staff = pianolh a,,,4\fermata r
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  g,1
  a1
  s1
  s1
  g1 % 2b
  g1
  g1
  g1
  s1*6
  s2 <c c'> % 3b+++
  s1 % 4a
  e'1
  s1
  s1 % 4b
  s1
  g,,1
  g1 % 5a
  g1
  a1
  s1 % 5b
  g'2 a4(d,)
  s1
  s2 a' % 6a
  s1*6
  cis4 dis eis gis % 6b+++
  fis1 % 7a
  s1*8
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = flute
  }
  \score {
    <<
      <<
        \new Staff = flute 
        <<
          \new Voice \flute
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"Fl"
        }
        <<
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSop
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \new Voice \sopranoTwo
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
        >>
        \new PianoStaff = piano \with {
            connectArpeggios = ##t
            instrumentName = "Piano"
          }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
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
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
        }
        <<
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSop
          >>
                                % Single soprano II staff
          \new Staff = alto \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \new Voice \sopranoTwo
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
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Piano"
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop1"
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
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSop
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Piano"
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop2"
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
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \new Voice \sopranoTwo
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Piano"
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
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
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoTwo
            \addlyrics {\tiny \wordsSop}
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
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Piano"
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
          midiInstrument = #"flute"
        }
        <<
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano 1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
            \addlyrics \wordsSopMidi
          >>
                                % Single soprano II staff
          \new Staff = "soprano 2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff = piano \with {
            connectArpeggios = ##t
          }
        <<
          \new Staff = piano \with {
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
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = flute \with {
          instrumentName = #"Flute"
          shortInstrumentName = #"F"
          midiInstrument = #"flute"
        }
        <<
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano 1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoOne
          >>
                                % Single soprano II staff
          \new Staff = "soprano 2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new PianoStaff = piano \with {
            connectArpeggios = ##t
          }
        <<
          \new Staff = piano \with {
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
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
