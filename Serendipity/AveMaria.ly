\version "2.22.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ave Maria"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Charles Gounod"
  arranger    = "Arr. Kirby Shaw"
%  opus        = "opus"

  poet        = "Traditional Latin Text"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo "Andante con moto" 4=72
  s1
  \set Score.tempoHideNote = ##t
  s1*37
  \tempo 4=65 s1*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*2
  \mark \markup { \box "2b" } s1*2
  \mark \markup { \box "3a" } s1*2
  \mark \markup { \box "3b" } s1*2
  \mark \markup { \box "3c" } s1*2
  \mark \markup { \box "4a" } s1*2
  \mark \markup { \box "4b" } s1*2
  \mark \markup { \box "4c" } s1*2
  \mark \markup { \box "5a" } s1*2
  \mark \markup { \box "5b" } s1*2
  \mark \markup { \box "5c" } s1*2
  \mark \markup { \box "6a" } s1*2
  \mark \markup { \box "6b" } s1*2
  \mark \markup { \box "6c" } s1*2
  \mark \markup { \box "7a" } s1*2
  \mark \markup { \box "7b" } s1*2
  \mark \markup { \box "7c" } s1*2
  \mark \markup { \box "8a" } s1*2
  \mark \markup { \box "8b" } s1*2
  \mark \markup { \box "8c" } s1*3
}

sopranoI = \relative {
  \global
  R1*4
  fis'1^\p % 3a
  g2. r8 g
  a2.(e4) % 3b
  fis2. r4
  b2~8 (b,^\markup Unis. ) cis d % 3c
  e4.(fis8) e4 r
  a2~8 (a,^\markup Unis. ) b cis % 4a
  d4.(e8) fis4 r
  d'2^\< ~(d8 d,) e(fis) % 4b
  gis4.^\> (fis8 e4) b^\p
  cis2 r4 e % 4c
  fis2~8 8(g a)
  b4. b,8 b4 r % 5a
  e2~8 8(fis) g
  a2 a,4^\markup Unis. r % 5b
  d2~8 8(e fis)
  g2~8 8(a b) % 5c
  cis4. b8 a4(e)
  fis2. r4 % 6a
  a2 fis4 r8. 16
  b2 b,4 r % 6b
  b'2\omit\cresc^\markup\italic "molto cresc." d,4 r8. b'16
  d2 f,4 r8. d'16^\f % 6c
  d2 fis,4^\markup Unis. r
  e2^\p ~8 8(d) cis % 7a
  a'4.(fis8) d4 r
  g2\omit\cresc^\markup{Unis \italic cresc} ~8 8 fis e % 7b
  e'4. cis8 a4 r
  b2~8 8(cis) d % 7c
  fis2^\f~ (8 d) a fis
  e2~(8 b') cis(b) % 8a
  a8^\> (e') cis(a) g(e) cis(a) \break
  fis'1^\mp % 8b
  g2. r4
  a1^\>^\markup\italic mel. ^\markup\italic rit.
  a1^\p
  R1
  \bar "|."
}

sopranoII = \relative {
  \global
  R1*4
  d'1^\p % 3a
  e2. r8 e
  e1 % 3b
  d2. r4
  fis2~(8 b,) cis d % 3c
  e4.(fis8) e4 r
  e2~(8 a,) b cis % 4a
  d4.(e8) d4 r
  a'2^\< ~(8 d,) e(fis) % 4b
  e2.^\> b4^\p
  cis2 r4 4 % 4c
  dis2~8 4.
  e4. b8 4 r % 5a
  d2~8 4 8
  d2 a4 r % 5b
  d2~8 8(e fis)
  d2~8 4(g8) % 5c
  g4. e8 4(cis)
  d2. r4 % 6a
  fis2 4 r8. 16
  fis2 b,4 r % 6b
  fis'2\omit\cresc^\markup\italic "molto cresc." d4 r8. fis16
  a2 f4 r8. a16^\f % 6c
  g2 e4 r
  e2^\p~8 8(d) cis % 7a
  fis2 d4 r
  g2\omit\cresc ~8 8 fis e % 7b
  g4. 8 4 r
  f2~8 8(b) b % 7c
  d2^\f~(8 a) fis8 8
  e2~(8 g) 4 % 8a
  e8^>(cis') a(e) e4 cis8(a)
  cis1^mp % 8b
  b2. r4
  e1^\> % 8c
  fis1^\p
  R1
  \bar "|."
}

words = \lyricmode {
  A -- ve Ma -- ri -- a,
  gra -- ti -- a ple -- na,
  do -- mi -- nus te -- cum.
  be -- ne -- dic -- ta
  tu in mu -- li -- e -- ri -- bus
  et __ be -- ne -- dic -- tus
  fruc -- tus __ ven -- tris __
  tu -- i Je -- sus.
  Sanc -- ta Ma -- ri -- a,
  Sanc -- ta Ma -- ri -- a, Ma -- ri -- a,
  o -- ra __ pro no -- bis,
  no -- bis pec -- ca -- to -- ri -- bus,
  nunc __ et __ in ho -- ra,
  in ho -- ra __ mor -- tis __ nos -- trae, __
  A -- men! A -- men!
}

wordsMidi = \lyricmode {
  "A" "ve " Ma ri "a, "
  "\ngra" ti "a " ple "na, "
  "\ndo" mi "nus " te "cum. "
  "\nbe" ne dic "ta "
  "\ntu " "in " mu li e ri "bus "
  "\net "  be ne dic "tus "
  "\nfruc" "tus "  ven "tris " 
  "\ntu" "i " Je "sus. "
  "\nSanc" "ta " Ma ri "a, "
  "\nSanc" "ta " Ma ri "a, " Ma ri "a, "
  "\no" "ra "  "pro " no "bis, "
  "\nno" "bis " pec ca to ri "bus, "
  "\nnunc "  "et "  "in " ho "ra, "
  "\nin " ho "ra "  mor "tis "  nos "trae, " 
  "\nA" "men! " A "men! "
}

alto = \relative {
  \global
  R1*4
  a1^\p % 3a
  b2. r8 b
  a1 % 3b
  a2. r4
  b2. cis8 d % 3c
  e4.(fis8) e4 r
  a,2. b8 cis % 4a
  d4.(e8) d4 r
  fis2^\< ~(8 b,) cis(d) % 4b
  b2.^\> 4^\p
  a2 r4 a % 4c
  c2~8 4.
  b4. 8 4 r % 5a
  bes2~8 4 8
  a2 4 r % 5b
  d2~8 8(e fis)
  b,2~8 4(d8) % 5c
  e4. cis8 4(a)
  a2. r4 % 6a
  c2 4 r8. 16
  d2 b4 r % 6b
  d2\omit\cresc^\markup\italic "molto cresc." 4 r8. 16
  f2 4 r8. 16^\f % 6c
  e2 4 r
  cis2^\p ~8 8(b) cis % 7a
  d2 4 r
  d2^\cresc ~8 8 8 8 % 7b
  cis4. e8 cis4 r
  d2~8 8(f) gis % 7c
  a2^\f~(8 fis) d d
  e2~(8 d) 4 % 8a
  cis8(a') e(cis) 4 8(a)
  c1 % 8b
  b2. r4
  e1^\> % 8c
  d1\^\p
  R1
  \bar "|."
}

wordsAlto = \lyricmode {

}

pianoRH = \relative {
  \global
  r16 fis(a d fis a, d fis) r fis,(a d fis a, d fis)
  r16 e,( b' e g b, e g) r e,(b' e g b, e g)
  r16 e,(a e' g a, e' g) r e,(a e' g a, e' g) % 2b
  r16 fis,( a d fis a, d fis) r fis,(a d fis a, d fis)
  r16 fis,( a d fis a, d fis) r fis,(a d fis a, d fis) % 3a
  r16 e,(b' e g b, e g) r e,(b' e g b, e g)
  r16 e,(a e' g a, e' g) r e,(a e' g a, e' g) % 3b
  r16 fis,(a d fis a, d fis) r fis,(a d fis a, d fis)
  r16 fis,(b fis' b b, fis' b) r16 fis,(b fis' b b, fis' b) % 3c
  r16 e,,(gis b e gis, b e) r16 e,(gis b e gis, b e)
  r16 e,(a e' a a, e' a) r16 e,(a e' a a, e' a) % 4a
  r16 d,(fis a d fis, a d) r16 d,(fis a d fis, a d)
  r16 d,(fis a d fis, a d) r16 d,(fis a d fis, a d) % 4b
  r16 b,(e gis d' e, gis d') r16 b,(e gis d' e, gis d')
  r16 cis,( e a e' g, cis e) r16 cis,( e a e' g, cis e) % 4c
  r16 c,(fis a dis fis, a dis) r16 c,(fis a dis fis, a dis)
  r16 b,(e b' e e, b' e) r16 b,(e b' e e, b' e) % 5a
  r16 bes,(e g cis e, g cis) r16 bes,(e g cis e, g cis)
  r16 a,(d a' d d, a' d) r16 a,(d a' d d, a' d) % 5b
  r16 g,,(b d g b, d g) r16 g,(b d g b, d g)
  r16 g,(b d g b, d g) r16 g,(b d g b, d g) % 5c
  r16 g,(a cis g' a, cis g') r16 g,(a cis g' a, cis g')
  r16 fis,(a d fis a, d fis) r16 fis,(a d fis a, d fis) % 6a
  r16 a,(c d fis c d fis) r16 a,(c d fis c d fis)
  r16 g,(b d fis b, d fis) r16 g,(b d fis b, d fis) % 6b
  r16 d,(b' d f b, d f) r16 d,(b' d f b, d f)
  r16 f,(cis' d f c d f) r16 f,(cis' d f c d f) % 6c
  r16 g,(cis d e c d e) r16 g,(cis d e c d e)
  r16 g,(a cis e a, cis e) r16 g,(a cis e a, cis e) % 7a
  r16 fis,(a d fis a, d fis) r16 fis,(a d fis a, d fis)
  r16 e,(a d g a, d g) r16 e,(a d g a, d g) % 7b
  r16 e,(a cis g' a, cis g') r16 e,(a cis g' a, cis g')
  r16 f,(b d gis b, d gis) r16 f,(b d gis b, d gis) % 7c
  r16 fis,(a d a' a, d a') r16 fis,(a d a' a, d a')
  r16 e,(a d g a, d g) r16 e,(a d g a, d g) % 8a
  r16 e,(a cis g' a, cis g') r16 e,(a cis g' a, cis g')
  r16 d,(a' c fis a, c fis) r16 d,(a' c fis a, c fis) % 8b
  r16 d,(g b d b d g d b d b g b g d)
  r16 cis(a' cis e g e cis e cis a cis e, g \tuplet 3/2 {fis32 g fis} e16) % 8c
  \repeat tremolo 16 {<fis a>32 d'}
  <fis, a d>4-- r r2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1*11
  s1^\< % 4b
  s1\>
  s1\p % 4c
  s1*10
  s1\omit\cresc-\markup\italic "molto cresc"
  s1 % 6c
  s1\f
  s1\p % 7a
  s1
  s1\cresc % 7b
  s1
  s1 % 7c
  s1\f
  s1 % 8a
  s1\>
  s1\mp % 8b
  s1
  s1\> -\markup\italic rit. % 8c
  s2\p\< s\>
  s1\!
}

pianoLH = \relative {
  \global
  d,2 2
  d2 2
  d2 2 % 2b
  d2 2
  d2 2 % 3a
  d2 2
  cis2 2 % 3b
  d2 2
  d2 2 % 3c
  d2 2
  cis2 2 % 4a
  cis2 2
  b2 2 % 4b
  e2 2
  a,2 2 % 4c
  a2 2
  e2 g' % 5a
  e,2 g'
  fis2 fis, % 5b
  fis'2 fis,4 fis'
  e2 2 % 5c
  a,2 a'
  b,2 b % 6a
  b2 2
  g'2 2 % 6b
  gis2 gis,
  a2 a' % 6c
  bes2 bes,
  a2 a' % 7a
  a,2 a'
  a,2 a' % 7b
  a,2 a'
  a,2 a' % 7c
  a,2 a'
  a,2 a' % 8a
  a,2 a'
  d,2 d' % 8b
  d,2 2
  d2 2 % 8c
  \repeat tremolo 16 {d32 a'}
  <d, a'>4-- r r2
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint sop1&2 staff
          \new Staff \with {
            instrumentName = #"SopI/SopII"
            shortInstrumentName = #"Sop"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice \sopranoI
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"Alto" } <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "single-bass"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint sop1&2 staff
          \new Staff \with {
            instrumentName = #"SopI/SopII"
            shortInstrumentName = #"Sop"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice \sopranoI
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"Bass" } <<
            \clef bass
            \new Voice \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint sop1&2 staff
          \new Staff \with {
            instrumentName = #"SopI/SopII"
            shortInstrumentName = #"Sop"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice \sopranoI
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"Alto" } <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint sop1&2 staff
          \new Staff \with {
            instrumentName = #"SopI/SopII"
            shortInstrumentName = #"Sop"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice \sopranoI
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"Bass" } <<
            \clef "bass"
            \new Voice \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
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
                                % Soprano I staff
          \new Staff = "soprano I"
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsMidi
          >>
                                % Soprano II staff
          \new Staff = "Soprano II"
          <<
            \new Voice \sopranoII
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
