\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Leaning on a Lamppost"
  subtitle    = "TTB"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Noel Gay"
  arranger    = "Arr. John Leavitt"
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
  \time 4/4
}

TempoTrack = {
  \tempo \markup {Moderately ( \rhythm{8[8]} = \rhythm {\tuplet 3/2 {4 8}} ) } 4=96
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*2
  \repeat volta 2 {
    s1 |
    \textMark \markup { \box "3c" } s1*2
    \textMark \markup { \box "4a" } s1*3
    \textMark \markup { \box "4b" } s1*2
    \textMark \markup { \box "4c" } s1*2
    \textMark \markup { \box "5a" } s1*3
    \textMark \markup { \box "5b" } s1*3
    \textMark \markup { \box "5c" } s1*3
    \textMark \markup { \box "6a" } s1*3
    \textMark \markup { \box "6b" } s1*2
    \textMark \markup { \box "6c" } s1*2
    \textMark \markup { \box "7a" } s1*2
    \textMark \markup { \box "7b" } s1*2
    \textMark \markup { \box "7c" } s1
    \alternative { {s1} {s1} }
  }
}

dynamicsTenor = {
  s1*5
  \repeat volta 2 {
    s1*8 |
    s1\mp | s | % 4b
    s1*7 | s2. s4\mf | s1 | % 5
    s1*5 | s1\mp | s |
    s1 | s | s2. s4\mf | s1 | s
    \alternative { {s1} {s1} }
  }
}

tenorOne = \relative {
  \global
  R1*5
  \repeat volta 2 {
    R1*8 |
    e'1^\markup "TENOR I & II" ( | c~ | 2 b | a2.) r4 | r f' d r | % 5a
    r4 g e2 | d2^\markup\italic "unis." (c | b2.) r4 |
    R1 | r2 r4 d | e,4 8 f g4 8 a |
    b4 c r c | fis,4 8 g a4 8 b | c4 d r2 | % 6a
    f1^\markup\italic "sotto voce" ~ | f |
    e1^\markup\italic "div." ( | c~ |
    c2 b | a2.) r4 | % 7a
    \oneVoice r2 r4^\markup\italic "unis." g8 g | a a b b c c d d |
    e8 d c e d c b4 |
    \alternative {
      { c2 r }
      { c2 r }
    }
  }
  \bar "|."
}

tenorTwo = \relative {
  \global
  R1*5
  \repeat volta 2 {
    R1*8 |
    c'1( | a~ | % 4c
    a2 gis | a2.) r4 | r a b r | % 5a
    r4 b c2 | s1*8 |
    a2(aes | g1) | % 6b
    c1( | a~ |
    a2 gis | a2.) r4 | % 7a
    s1*3
    \alternative {
      { s1 }
      { s1 }
    }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  \repeat volta 2 {
    Oo __
    Oh me, oh my, Oo __
    but this one I'd break an -- y date for.
    I won't have to ask what she's late for.
    Ah __ Oo __
    at the cor -- ner of the street,
    in case a cer -- tain lit -- tle la -- dy comes
    \alternative { { by. } { by. } }
  }
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s2. s4\mf |
  \repeat volta 2 {
    s1*31 |
    \alternative { {s1} {s1} }
  }
}

bass = \relative {
  \global
  R1*4 |
  r2 r4 g
  \repeat volta 2 {
    c8 g g g g a a a |
    a8 e e e e g g g | g d d d d dis e4 |
    c2. e4 | d2 r4 a' | g2 r4 c | % 4a
    b8 d b g a g fis4 | g2. 4 |
    c8 g g g g a a a | a e e e e g g g |
    g8 d d d d dis e4 | c2. 4 | d2 r4 a' | % 5a
    g2 r4 c | b8 d b g a g fis4 | g2. a4^\markup\italic "(as is to end on repeat)" |
    d,4 8 e f4 8 g | a4 b r2 | R1 |
    r2 r4 c | fis,4 8 g a4 8 b | c4 d r d | % 6a
    d8 d d d d d d d | d4 g, d' r8 g, |
    c8 g g g g a a a | a e e e e g g g |
    g8 d d d d dis e4 | c2. e4 | % 7a
    d8 d e e f f g g | f f e e a a aes aes |
    g8 f e g f f f4
    \alternative {
      { e2. r4 }
      { e2 r2 }
    }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  I'm
  \repeat volta 2 {
    lean -- ing on a lamp -- post at the cor -- ner of the street,
    in case a cer -- tain lit -- tle la -- dy comes by.
    Oh me, oh my.
    I hope the lit -- tle la -- dy comes by.
    I don't know if she'll get a -- way,
    she does -- n't al -- ways get a -- way,
    but an -- y -- way I know that she'll try.
    Oh me, oh my.
    I hope the lit -- tle la -- dy comes by.
    There's no oth -- er girl I could wait for,
    
    I won't have to ask what she's late for.
    She'd nev -- er leave me flat; she's not a girl like that.
    She's ab -- so -- lute -- ly won -- der -- ful
    and mar -- vel -- ous and beau -- ti -- ful,
    and an -- y -- one can un -- der -- stand why
    I'm lean -- ing in a lamp -- post at the cor -- ner of the street,
    in case a cer -- tain lit -- tle la -- dy comes
    \alternative { { by.} { by. } }
  }
}

wordsMidi = \lyricmode {
  "I'm "
  \repeat volta 2 {
    "lean" "ing " "on " "a " lamp "post "
    "\nat " "the " cor "ner " "of " "the " "street, "
    "\nin " "case " "a " cer "tain " lit "tle " la "dy " "comes " "by. "
    "\nOh " "me, " "oh " "my. "
    "\nI " "hope " "the " lit "tle " la "dy " "comes " "by. "
    "\nI " "don't " "know " "if " "she'll " "get " a "way, "
    "\nshe " does "n't " al "ways " "get " a "way, "
    "\nbut " an y "way " "I " "know " "that " "she'll " "try. "
    "\nOh " "me, " "oh " "my. "
    "\nI " "hope " "the " lit "tle " la "dy " "comes " "by. "
    "\nThere's " "no " oth "er " "girl " "I " "could " "wait " \set associatedVoice = alignerT "for, "
    "\nbut " "this " "one " "I'd " "break " an "y " "date " \set associatedVoice = alignerB "for "
    "\nI " "won't " "have " "to " "ask " "what " "she's " "late " "for. "
    "\nShe'd " nev "er " "leave " "me " "flat; " "she's " "not " "a " "girl " "like " "that. "
    "\nShe's " ab so lute "ly " won der "ful "
    "\nand " mar vel "ous " "and " beau ti "ful, "
    "\nand " an y "one " "can " un der "stand " "why "
    "\nI'm " lean "ing " "in " "a " lamp "post " "at " "the " cor "ner " "of " "the " "street, "
    "\nin " "case " "a " cer "tain " lit "tle " la "dy " "comes "
    \alternative { { "by. " } { "by. " } }
  }
}

pianoRH = \relative {
  \global
  r2 r4 <g c e> |
  <a c d>8 d <g, c e> e' <a, c f> f' <c e g> g' |
  <c, f a>8 a' <d, gis b> b' <e, a c> c' <fis, c' d> d' |
  <g, c e>8 d' <g, c> e' <f, d'> c' <f, b>4 | % 3b
  <e g c>4 <g e' g> <ges ees' ges> <f d' f> |
  \repeat volta 2 {
    <c' e g c>8 g' <g, c e g> q <g b e g> <a a'> q q |
    <a c e a>8 <g c e> q q q <g g'> q q | % 3c
    q8 <f c' d> q q <f b d> dis' <g, b e>4 |
    <e c'>4 \tuplet 3/2 {g8 a g} e4 <g c e> | % 4a
    <<{\voiceOne d'2. \oneVoice <a b d a'>4 | \voiceOne <g g'>2. \oneVoice <c e g c>4}
      \new Voice {\voiceTwo r4 <a c> <g b> s | r <b d> <a c> s}
    >>
    \oneVoice <d g b>8 d' b g <c, a'> g' fis4 | % 4b
    g4 \tuplet 3/2 {<g,, b>8 <a c> <ais cis>} <b d>4 <g' g'> |
    <c e g c>8 g' <g, c e g> q <g b e g> <a a'> q q | % 4c
    <a c e a>8 <g c e> q q q <g g'> q q |
    <g g'>8 <f c' d> q q <e b' d> dis' <gis, b e>4 | % 5a
    <e c'>4 \tuplet 3/2 {g8 a g} e4 <g c e> |
    <<
      { \voiceOne d'2. \oneVoice <a b d a'>4 | \voiceOne <g g'>2. \oneVoice <c e g c>4 }
    \new Voice { \voiceTwo r4 <a c> <g b> s | r <b d> <a c> s }
    >>
    \oneVoice <d g b>8 d' b g <c, a'> g' fis4 | % 5b+
    <g, b d g>2. a4^\markup\italic "(loco on repeat)" |
    d,4 8 e f4 8 g | % 5c
    <c, f a>4 <d f b>2 <dis g b>4 |
    e4 8 f <e g>4 g8 a |
    <d, gis b>4 <e a c>2 4 | % 6a
    fis4 8 g <fis a>4 8 b |
    <e, a c>4 <fis a d>2 4 |
    <f a d>2 <f' aes c d f>\arpeggio | % 6b
    <f g b d g>4-.\arpeggio r r r8 <g,g'> |
    <c e g c>8 g' <g, c e g> q <g b e g> <a a'> q q | % 6c
    <a c e a>8 <g c e> q q q <g g'> q q |
    q8 <f c' d> q q <e b' d> dis' <gis, b e>4 | % 7a
    <e c'>4 \tuplet 3/2 {g8 a g} e4 <g c e> |
    <f a c d>8 d' <g, c e> e' <a, c f> f' <g, c e g> g' | % 7b
    <a, c f a>8 a' <b, d gis b> b' <c, e a c> c' <c, d fis d'> <c d> |
    <e g e'>8 <d b' d> <c a' c> <e c' e> <d b' d> <c a' c> <b g' b>4 | % 7c
    \alternative {
      { <c e g c>4 r r2 | }
      { q4 r <c' e g c> r | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2. s4\mf | s1*4 |
  \repeat volta 2 {
    s1*31 |
    \alternative { {s1} {s1} }
  }
}

pianoLH = \relative {
  \global
  r2 r4 e, | f e d c | f e a aes |
  g4 <g' c e> g, <g' b d> |
  <c, c'>4 g a b |
  \repeat volta 2 {
    c4 <g' c e> g, <e' g a> |
    c4 <g' a c e> g, <e' g c> | % 3c
    d4 <f a c> g, <f' g a e> |
    c4 <g' a c> g, <g' c e> | % 4a
    d, <f' a c d> g, <f f'> |
    e4 <e' g b d> a, <e' g a c> |
    d4 <g b d> d, <d' fis c'> | % 4b
    g,4~ <g f'>~ 4. g8 |
    c4 <g' c e> g, <e' g b> | % 4c
    c4 <g' a c e> g, <e' g c> |
    d4 <f a c> e, <e' fis d'> | % 5a
    a,4 <g' a c> g, <g' c e> |
    d,4 <f' a c d> g, <f f'> |
    e4 <e' g b d> a, <e' g a c> | % 5b
    d4 <g b d> d, <d' fis c'> |
    g,4 <d' d'> <g, g'> r |
    d'4 <f a c> g, q | % 5c
    d4 <f' g b> g, q |
    c,4 <g'' c> g, <g' c e> |
    e,4 <a' c> a, q | % 6a
    a4 <a' c d> d,, q |
    a'4 q d, q |
    <d' a' c>2 \clef treble <d' f aes c>\arpeggio | % 6b
    <d f g b>4-.\arpeggio \clef bass d, g, r |
    c4 <g' c e> g, <e' g b> | % 6c
    c4 <g' a c e> g, <e' g c> |
    d4 <f a c> e, <e' fis d> | % 7a
    a,4 <g' a c> g, <g' c e> |
    <f, a'>4 <e g'> <d f'> <c e'> | % 7b
    <f a'> <e e'> <a c'> aes |
    g4 <g' c e> <g, f'> <f' g b> | % 7c
    \alternative {
      { <c c'>4 <g g'> <a a'> <b b'> | }
      { <c c'>4 <g g'> <c, c'> r | }
    }
  }
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \partCombine \tenorOne \tenorTwo
            \new NullVoice \tenorOne
            \addlyrics \wordsTenor
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \partCombine \unfoldRepeats \tenorOne \unfoldRepeats \tenorTwo
            \new NullVoice \tenorOne
            \addlyrics \wordsTenor
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \partCombine \unfoldRepeats \tenorOne \unfoldRepeats \tenorTwo
            \new NullVoice \tenorOne
            \addlyrics \wordsTenor
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \partCombine \unfoldRepeats \tenorOne \unfoldRepeats \tenorTwo
            \new NullVoice = alignerT \tenorOne
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
            \new Voice = alignerB \bass
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Voice \pianoLH
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
