\version "2.25.27"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Hold Your Hand in Mine"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
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
  \key f \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \global
  \tempo Tenderly 4=120
  \set Score.tempoHideNote = ##t
  s4 s2.*67 s4 \tempo 4=30 s \tempo 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "1a" s4 s2.*6
  \textMark \markup\box "1b"    s2.*6
  \textMark \markup\box "1c"    s2.*6
  \textMark \markup\box "1d"    s2.*6
  \textMark \markup\box "2a"    s2.*6
  \textMark \markup\box "2b"    s2.*6
  \textMark \markup\box "2c"    s2.*6
  \textMark \markup\box "2d"    s2.*6
  \textMark \markup\box "3a"    s2.*6
  \textMark \markup\box "3b"    s2.*6
  \textMark \markup\box "3c"    s2.*6
  \textMark \markup\box "3d"    s2.*6
}

ChordTrack = \chordmode {
  s4 s2.*6 | s2.*2 c2.:7 s2 c4:7+ f2. s | c:7 s2 c4:7+ f2. s a:7 s | d:m s2 d4:7 g2.:7 s c:7 s |
  c2.:7 s2 c4:7+ f2. s c:7 s | f2 c4:m d2.:7 g:m s f2 c4:m6 d2.:7 | g:m7 c:7 f c:7 des s | aes s ees ees:7 aes aes:7 |
  des2. s aes s g g:7 | c:7 s s s2 c4:7+ f2. s2 f4:aug | c2.:7 s f f:7 bes bes:m | f d:9 g:m7 c:7 f s |
}

melody = \relative {
  \global
  r4 \section | R2.*6 |
  R2. | r2 c'4 \section | d2 bes'4 | a2 gis4 | a2. | f2 c4 |
  d2 bes'4 | a2 gis4 | a2.~ | 2 4 | 2 e4 | a2 g4 |
  g2. | f2 fis4 | g2 d4 | a'2 aes4 | g2.~2 c,4 |
  d2 bes'4 | a2 gis4 | a2. | f2 c4 | d2 bes'4 a2 g4 | % 2a
  c2.~ | 2 cis4 | d2 bes4 | g2 d'4 | c2. a2 4 |
  bes4 d,2 | a'2 c,4 | f2. | r4 r g | aes2 4 | g2 aes4 |
  aes2 ees4 | 2 4 | 2 bes4 | des2 c4 | ees2.~ | 2 aes4 |
  aes2 4 | g2 aes4 | 4 ees2~ | 4 4 f | g2 4 | bes2 aes4 | % 3a
  g2.~ | 2 r8 c, | d2 bes'4 | a2 gis4 | a2 f4~ | 4 c cis |
  d2 bes'4 | a2 g4 | c2.~ | 2 4 | 2 bes4 | c2 bes4 |
  bes4 a2 | e'2\fermata d4 | c2 d,4 | a'2 c,4 | f2.~ | 4 r r |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  I hold your hand in mine, dear,
  I press it to my lips. __
  I take a health -- y bite from your dain -- ty fin -- ger tips. __
  My joy would be com -- plete, dear,
  if you were on -- ly here, __
  But still I keep your hand as a pre -- cious sou -- ve -- nir. __
  The night you died I cut it off,
  I real -- ly don’t know why, __
  For now each time I kiss it __
  I get blood -- stains on my tie. __
  I’m sor -- ry now I killed you, __
  for our love was some -- thing fine, __
  And till they come to get me
  I shall hold your hand in mine. __
}

midiWords = \lyricmode {
  "I " "hold " "your " "hand " "in " "mine, " "dear, "
  "\nI " "press " "it " "to " "my " "lips. " 
  "\nI " "take " "a " health "y " "bite " "from " "your " dain "ty " fin "ger " "tips. " 
  "\nMy " "joy " "would " "be " com "plete, " "dear, "
  "\nif " "you " "were " on "ly " "here, " 
  "\nBut " "still " "I " "keep " "your " "hand " "as " "a " pre "cious " sou ve "nir. " 
  "\nThe " "night " "you " "died " "I " "cut " "it " "off, "
  "\nI " real "ly " "don’t " "know " "why, " 
  "\nFor " "now " "each " "time " "I " "kiss " "it " 
  "\nI " "get " blood "stains " "on " "my " "tie. " 
  "\nI’m " sor "ry " "now " "I " "killed " "you, " 
  "\nfor " "our " "love " "was " some "thing " "fine, " 
  "\nAnd " "till " "they " "come " "to " "get " "me "
  "\nI " "shall " "hold " "your " "hand " "in " "mine. " 
}

pianoRHone = \relative {
  \global
  c'''4 \section | <d, f c'>2 <d f bes>4 | <des f c'>2 <des f bes>4 |
  q4 <c f a>2 | <fis a e'>2-> <fis a d>4 |
  <d f c'>2 <f, bes d>4 | <c' e a>2 <e, bes' c>4 |
  <a c f>2 <ees c'>8 d' | <e, c'>2 <c c'>4 \section | % 1b
  <d d'>2 <bes' bes'>4 | <a a'>2 <gis gis'>4 | <a a'>2. | <f f'>2 <c c'>4 |
  <d d'>2 <bes' bes'>4 | <a a'>2 <gis gis'>4 | \vo a'2.~ | 2 4 \ov | % 1c
  <a, a'>2 <e e'>4 <a a'>2 <g g'>4 |
  <g g'>2. | <f f'>2 <fis c' fis>4 | <g d' g>2 <f b d>4 | % 1d
  <b f' a>2 <b f' aes>4 | \vo g'2.~ | 2 <c,, c'>4 |
  \ov <d d'>2 <bes' bes'>4 | <a a'>2 <gis gis'>4 | <a a'>2. | % 2a
  <f f'>2 <c c'>4 | <d d'>2 <bes' bes'>4 | <a a'>2 <g g'>4 |
  \vo c'2.~ | 2 <cis, cis'>4 \ov | <d d'>2 <bes bes'>4 | % 2b
  <g g'>2 <d' d'>4 | <c c'>2. | <c fis a>2 4 |
  <d g bes>4 <f, bes d>2 | <bes e a> <e, bes' c>4 | <f a c f>2 c8 d | % 2c
  <c e>4 <d f> <e g> | \vo aes2 4 | g2 aes4 |
  aes2 <c, ees>4 | ees2 4 | ees2 <g, bes>4 | des'2 c4 | ees4 r r | r r <ges aes> | % 2d
  aes2 4 | g2 aes4 | 4 ees2~ | 4 4 f | g2 4 | bes2 aes4 | % 3a
  \ov <e g>2 e'8(ees | d [ bes ] g e d c) | <d d'>2 <bes' bes'>4 | % 3b
  <a a'>2 <gis gis'>4 | <a a'>2 <f f'>4~ | 4 <c c'> <cis cis'> |
  <d d'>2 <bes' bes'>4 | <a a'>2 <g g'>4 | <c f a c>2.~ | 2 <c c'>4 | % 3c
  <d f c'>2 <d f bes>4 | <des f c'>2 <des f bes>4 |
  <des f bes>4 <c f a>2 | <fis a e'>2\fermata <fis a d>4 | % 3d
  <d f c'>2 <f, bes d>4 | <c' e a>2 <e, bes' c>4 |
  \vo f8(a c f a c | d4) r r |
}

pianoRHtwo = \relative {
  \global \vt
  s4 | s2.*6 |
  s2.*6 |
  s2.*2 | r4 <a' c f>8-. 8-. 4-. | 8-. 8-. 4-. <a c d> | s2.*2 |
  s2.*4 | r4 <c e>4. <ces ees>8 | <bes d>2 r4 |
  s2.*6 | % 2a
  r4 <c a'> <c g'> | <c fis>2 r4 | s2.*4 |
  s2.*4 | r4 <des, f> q | r q q |
  r4 aes2 | r4 <a c> q | r ees2 | r4 <g bes> q | r <c ees> <c f> | <c ges'> <c f> <c ees> |
  r4 <des f> q | r q q | r <aes c> q | r q q | r <b d> q | r <b f'> q | % 3a
  s2.*6 |
  s2.*6 |
  s2.*6 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s2.*2 | s2.\< | s\!-\markup "poco rit." | s-\markup "a tempo" | s |
  s2.\> | s\! | s2.*4 |
}

pianoLHone = \relative {
  \global
  r4 \section | bes,4 <bes' d> q | bes, <bes' des> q | f <a c> q |
  <d,, d'>4-> <d' fis c'> q | <g, g'> <g' bes d> q | <c,, c'> <g'' bes c> q |
  <f, f'>4 <f' a c> <fis a> | <g bes> c, r \section | g' <bes c> q | % 1b
  c,4 <bes' c e> q | f <a c> q | c, q <f a> |
  g4 <bes c> q | c, <bes' c e> q | f <a f'>8-. 8-. 4-. | % 1c
  <a e'>8-. 8-. 4-. <a d> | e <g a cis> q | cis, q q |
  d4 <f a d> q | a, q c | b <fisis' gisis d'> q | g,2 <f' b d>4 | % 1d
  e4 <bes' c> q | c, <e bes'> q |
  g4 <bes c> q | c, <bes' c e> q | f <a c> q | % 2a
  c,4 q <f a> | g <bes c> q | c, <bes' c e> q |
  f4 <a c> ees | d <fis a c> r | g, <g' bes d> q | bes, q q | % 2b
  f'4 <a c> ees | d <fis c' d> r |
  g,4 <g' bes d> q | c, <g' bes c> q | f, <f' a c> r | % 2c
  c2. | des | aes |
  c2. | aes | g | ees' | % 2d
  <<{\vo r4 es f | ges f ees |} \new Voice { \vt aes,2.~ | 2. |}>>
  des2. | aes | c | aes | d | g, | % 3a
  c4 <bes' c> q | <c, e g bes>2 r4 | g' <bes c> q | % 3b
  c,4 <bes' c e> q | f <a c> q | c, <f a> q |
  g4 <bes c> q | c, <bes' c e> q | % 3c
  <<{\vo r4 <a c> q | r q q} \new Voice {\vt f2. | ees}>> |
  d4 <bes' d> q | bes, <bes' des> q |
  f4 <a c> q | <d,, d'> <d' fis c'>\fermata q | <g, g'> <g' bes d> q | % 3d
  <c,, c'>4 <g'' bes c> q | \vt a8( [ cis f ] \ss \rh a_\markup "L.H." [ c f ] | a4) r r |
}

pianoLHtwo = \relative {
  \global \vt
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
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
