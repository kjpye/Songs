\version "2.25.28"

\include "../../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Meet Me in St Louis"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
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
  \key c \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=150
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

sopranoA = \relative {
  R2. | c'2 d4 | e2 f4 | g e' e c g2 | a c4 | b2 a4 |
  g2.~ | 2 r4 | c,2 d4 | e2 4 | g2 e'4 | c g2 | % 2a
  a2 d4 | 2 e4 | d2. | r4 d dis | e2 d4 | c2 b4 |
  \tag #'dash {\slurDashed e 4( \slurSolid a,2)~ |} % 3a
  \tag #'v1   {            e'4             a,2 ~ |}
  \tag #'v2   {            e'4(            a,2)~ |}
  4 gis a | d2 c4 | b2 a4 |
  \tag #'dash {\slurDashed d 4(\slurSolid g,2) |}
  \tag #'v1   {            d'4            g,2  |}
  \tag #'v2   {            d'4(           g,2) |}
  f4 e d | c2 d4 | e2 f4 | g e' e | c g2 | a c4 | d2 c4 \time 4/4 |
  <c g'>1~ | q~ | q | R |
}

soprano = {
  \global
  R2.*7 |
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoA
  }
}

sopranoSingle = {
  \global
  R2.*7 |
  \keepWithTag #'v1 \sopranoA
  \keepWithTag #'v2 \sopranoA
}

wordsOne = \lyricmode {
  Meet me in St. Lou -- is, St. Lou -- is,
  Meet me at the Fair. __
  You will see the lights are shin -- ing
  ev -- ’ry -- where in there.
  You can dance the Hoo -- chie \nom Coo -- \yesm chie,
  with your lit -- tle toots -- ie \nom woots -- ie. \yesm
  Why don’t you
  Meet me in St Lou -- is, St. Lou -- is,
  Meet me at the Fair! __
}

wordsTwo = \lyricmode {
  See her in St. Lou -- is, St. Lou -- is,
  See her at the Fair. __
  You won’t hear her glo -- rious sing -- ing,
  an -- y -- place but there.
  She’s the queen of Er -- in song,
  with tra -- dit -- ion run -- ning strong.
%  Why don’t you
%  Meet me in St. Lou -- is, St, Lou -- is,
%  Meet me at the Fair! __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Meet me in St. Lou -- is, St. Lou -- is,
  Meet me at the Fair. __
  You will see the lights are shin -- ing
  ev -- ’ry -- where in there.
  You can dance the Hoo -- chie Coo -- chie,
  with your lit -- tle toots -- ie woots -- ie.
  Why don’t you
  Meet me in St Lou -- is, St. Lou -- is,
  Meet me at the Fair! __

  \set stanza = "2."
  See her in St. Lou -- is, St. Lou -- is,
  See her at the Fair. __
  You won’t hear her glo -- rious sing -- ing,
  an -- y -- place but there.
  She’s the queen of Er -- in song,
  with tra -- dit -- ion run -- ning strong.
  Why don’t you
  Meet me in St. Lou -- is, St, Lou -- is,
  Meet me at the Fair! __
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Meet " "me " "in " "St. " Lou "is, " "St. " Lou "is, "
  "\nMeet " "me " "at " "the " "Fair. " 
  "\nYou " "will " "see " "the " "lights " "are " shin "ing "
  "\nev" ’ry "where " "in " "there. "
  "\nYou " "can " "dance " "the " Hoo "chie " Coo "chie, "
  "\nwith " "your " lit "tle " toots "ie " woots "ie. "
  "\nWhy " "don’t " "you "
  "\nMeet " "me " "in " "St " Lou "is, " "St. " Lou "is, "
  "\nMeet " "me " "at " "the " "Fair!\n" 

  \set stanza = "2."
  "\nSee " "her " "in " "St. " Lou "is, " "St. " Lou "is, "
  "\nSee " "her " "at " "the " "Fair. " 
  "\nYou " "won’t " "hear " "her " glo "rious " sing "ing, "
  "\nan" y "place " "but " "there. "
  "\nShe’s " "the " "queen " "of " Er "in " "song, "
  "\nwith " tra dit "ion " run "ning " "strong. "
  "\nWhy " "don’t " "you "
  "\nMeet " "me " "in " "St. " Lou "is, " "St, " Lou "is, "
  "\nMeet " "me " "at " "the " "Fair! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

altoA = \relative {
  R2. | c'2 b4 | c2 d4 | e g g | e c2 | f a4 | g2 f4 |
  e2.( | d2) r4 | c2 b4 | c2 d4 | e r g | e c2 | % 2a
  fis2 4 | 2 4 | f2. | r4 d dis | e2 fis4 | g2 gis4 |
  \tag #'dash {\slurDashed a4(\slurSolid e2)~ |} % 3a
  \tag #'v1   {            a4            e2 ~ |}
  \tag #'v2   {            a4(           e2)~ |}
  4 gis a | d,2 e4 | f2 fis4 |
  \tag #'dash {\slurDashed g4(\slurSolid d2) |}
  \tag #'v1   {            g4            d2  |}
  \tag #'v2   {            g4(           d2) |}
  f4 e d | c2 b4 | c2 4 | e g g | e c2 | fis2 4 | f2 a4 \time 4/4 |
  c1~ | c~ | c~ | 8 r r4 r2 |
}

alto = {
  \global
  R2.*7 |
  \repeat volta 2 {
    \keepWithTag #'dash \altoA
  }
}

altoSingle = {
  \global
  R2.*7 |
  \keepWithTag #'v1 \altoA
  \keepWithTag #'v2 \altoA
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenorA = \relative {
  R2. | c'2 d4 | c2 b4 | c c c | g g2 | c f4 | 2 b,4 |
  c2.( | b2) r4 | c2 d4 | c2 b4 | c r c | g4 2 | % 2a
  c2 b4 | a2 c4 | b2. | r4 d dis | e2 d4 | c2 b4 |
  \tag #'dash {\slurDashed cis 4(\slurSolid g'2)~ |} % 3a
  \tag #'v1   {            cis,4            g'2 ~ |} % 3a
  \tag #'v2   {            cis,4(           g'2)~ |} % 3a
  4 gis, a | d2 c4 | b2 a4 |
  \tag #'dash {\slurDashed b 4(\slurSolid f'2) |}
  \tag #'v1   {            b,4            f'2  |}
  \tag #'v2   {            b,4(           f'2) |}
  f4 e d | c2 d4 | c2 4 | c c c | g g2 | c2 d4 | b2 g'4 \time 4/4 |
  <e g>1~ | q~ | q~ | 8 r r4 r2 |
}

tenor = {
  \global
  R2.*7 |
  \repeat volta 2 {
    \keepWithTag #'dash \tenorA
  }
}

tenorSingle = {
  \global
  R2.*7 |
  \keepWithTag #'v1 \tenorA
  \keepWithTag #'v2 \tenorA
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bassA = \relative {
  R2. | c'2 b4 | a2 aes4 | g g g | e4 2 | f2 4 | g2 4 |
  g2.~ | 2 r4 | c2 b4 | a2 aes4 | g r g | e4 2 | % 2a
  d2 4 | 2 4 | g2. | r4 d dis | e2 fis4 | g2 gis4 |
  \tag #'dash {\slurDashed a4(\slurSolid cis2)( |} % 3a
  \tag #'v1   {            a4            cis2 ( |}
  \tag #'v2   {            a4(           cis2)( |}
  c4) gis a | d,2 e4 | f2 fis4 |
  \tag #'dash {\slurDashed g4(\slurSolid b2) |}
  \tag #'v1   {            g4            b2  |}
  \tag #'v2   {            g4(           b2) |}
  f4 e d | c2 b'4 | a2 aes4 | g g g | e4 2 | d2 a'4 | g2 4 \time 4/4 |
  c1~ | c~ | c~ | 8 r r4 r2 |
}

bass = {
  \global
  R2.*7 |
  \repeat volta 2 {
    \keepWithTag #'dash \bassA
  }
}

bassSingle = {
  \global
  R2.*7 |
  \keepWithTag #'v1 \bassA
  \keepWithTag #'v2 \bassA
}

pianoRHoneA = \relative {
  <c' c'>2(<d d'>4 | <e e'>2) <f f'>4( | <g g'> <e' e'>2 |
  <c, c'>4 <g g'>2) | <a a'>2(<c' c'>4 <b b'>2 <a a'>4) | g2. |
}

pianoRHoneB = \relative {
  \time 3/4
  <f a f'>4->( <e g e'> <d f d'>-.) | <c c'>2(<d d'>4 | % 1b
  <e e'>2) <f f'>4( | <g g'> <e' e'>2 | <c c'>4 <g g'>2) |
  <a a'>2( <c c'>4 | <b b'>2 <a a'>4) |
  g2. | <f a f'>4->(<e g e'> <d f d'>-.) | \vo c'2 d4 | e2 f4 | % 2a
  g2 <e e'>4 | <c c'> <g g'>2 |
  \ov <a a'>2 <d d'>4 | 2 <e e'>4 | <d d'>2.~ | \vo 4 q(<dis dis'> | % 2b
  <e e'>2 <d d'>4) | <c c'>2 b'4 |
  <e, e'>4(a2)~ | 4 gis( a | <d, d'>2 <c c'>4 | % 3a
  <b b'>2) a'4 | <d, d'>4 g2 |
  <f, g b f'>4(<e g c e> <d f g d'>) | <c c'>2-- <d e g d'>4 | % 3b
  <e e'>2-- <f aes c f>4-- | \ov <g c e g>-- <e' g c e>2-- |
  <c e g c>4-- <g c e g>2 | <a c fis a>2 <c f a c>4 | <d f b d>2 <c f a c>4 \time 4/4 |
  \vo \repeat tremolo 16 <c' e>32( \repeat tremolo 16 e, | % 4a
  \repeat tremolo 12 <c' e g>32) \repeat tremolo 12 e,32 r4 |
  \ov \clef bass c,,,4 \clef treble r <c''' d e g c>2->~ | 8 r r4 r2 |
}

pianoRHone = {
  \global
  \pianoRHoneA
  \repeat volta 2 {
    \pianoRHoneB
  }
}

pianoRHoneSingle = {
  \global
  \pianoRHoneA
  \pianoRHoneB
  \pianoRHoneB
  \bar "|."
}

pianoRHtwoA = \relative {
  s2.*7 |
  s2.*2 | r4 <e' g> q | r q <f b> | r <e c'> r | r r r | % 2a
  s2.*3 | <b d>4 r r | r <d' gis b> <g b> | r <c, e>(<b d>) |
  r4 <a cis g'> q | r <gis c e> <a c e> | r <c fis a>-. q | r <b d>(<a c>) | r <g b f'> q | % 3a
  s2. r4 <e g> r |  r <a c> r | s2.*4 \time 4/4 |
  r4 <c, c'>8 q <g' g'>2-.-> | r4 <c, c'>8 8 <g' g'>4 <c, e f a c> | s1*2 | % 4a
}

pianoRHtwo = {
  \global \vt
  s2.*7 |
  \repeat volta 2 {
    \pianoRHtwoA
  }
}

pianoRHtwoSingle = {
  \global \vt
  s2.*7 |
  \pianoRHtwoA
  \pianoRHtwoA
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHoneA = \relative {
  c,4 <e' g> q | g, <e' g c> <aes b d> | <c,, c'> <e' g c> <g c e> |
  g,4 <e' g c> <g c e> | f, <f' a c> <a c e> | g, <f' g d'> q |
  <c, c'> <e' g c> <g c e> |
}

pianoLHoneB = \relative {
  \vo g2.-> | \ov c,,4 <e' g> q | g, <e' g c> <aes b d> | % 1b
  <c,, c'>4 <e' g c> <g c e> | g, <e' g c> <g c e> |
  f,4 <f' a c> <a c f> | f, <f' g d'> q |
  <c, c'>4 <e' g c> <g c e> | \vo g2.-> | c2 b4 | a2 aes4 | g2. | e | % 2a
  fis2. | fis | f~ | 4 r r | e2(fis4) | g2 gis4 |
  a4(cis a) | e2. | d2 e4 | f2 fis4 | g2. | % 3a
  \ov <g, g'>4(<a a'> <b b'>) | <c c'>2 <b b'>4 | <a a'>2 <aes aes'>4 | % 3b
  <g g'>2 <g' c e>4 | <a, a'>2 <a' c e>4 | \vo r <fis c' d> q |
  r <f b d> <g,, g'> \time 4/4 |
  \ov <c c'>2.-> <bes bes'>4-- -> | <aes aes'>2. <g g'>4-- -> | % 4a
  \repeat tremolo 16 c32 \repeat tremolo 16 c'32 | <c,, c'>8 r r4 r2 |
}

pianoLHone = {
  \global
  \pianoLHoneA
  \repeat volta 2 {
    \pianoLHoneB
  }
}

pianoLHoneSingle = {
  \global
  \pianoLHoneA
  \repeat unfold 2 \pianoLHoneB
}

pianoLHtwoB = \relative {
  g,4->(a) b | s2.*6 |
  s2. | g4(a) b | c r r |g r r | c r <e c'> | g, r <g' c e> | % 2a
  d4 <c' d> q | d,, q q | g <b' d> q | <g,, g'> <f'' g a> q | e r r | e, r r |
  a4 r r | a, r r | d'(r r | d,) r r | g r r | % 3a
  s2.*5 | <d d'>2. | <g, g'>2 r4 \time 4/4 |
  s1*4 |
}

pianoLHtwo = \relative {
  \global \vt
  s2.*7 |
  \repeat volta 2 {
    \pianoLHtwoB
  }
}

pianoLHtwoSingle = \relative {
  \global \vt
  s2.*7 |
  \repeat unfold 2 {
    \pianoLHtwoB
  }
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
