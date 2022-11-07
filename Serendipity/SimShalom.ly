\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sim Shalom"
  subtitle    = "\"Grant Peace\""
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Adaptation by Allan E. Naplan"
  arranger    = "Edited by MichℵRoss"
%  opus        = "opus"

  poet        = "\"One Human Family\" from \"Gates of Prayer\""
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo Andante 4=94
  s2.
  \set Score.tempoHideNote = ##t
  s2.*95
  \tempo 4=90
  s2.*2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s2.*5
  \mark \markup { \box "3b" } s2.*5
  \mark \markup { \box "3c" } s2.*5
  \mark \markup { \box "3d" } s2.*5
  \mark \markup { \box "4a" } s2.*6
  \mark \markup { \box "4b" } s2.*6
  \mark \markup { \box "4c" } s2.*5
  \mark \markup { \box "5a" } s2.*5
  \mark \markup { \box "5b" } s2.*5
  \mark \markup { \box "5c" } s2.*5
  \mark \markup { \box "6a" } s2.*5
  \mark \markup { \box "6b" } s2.*5
  \mark \markup { \box "6c" } s2.*5
  \mark \markup { \box "7a" } s2.*5
  \mark \markup { \box "7b" } s2.*5
  \mark \markup { \box "7c" } s2.*5
  \mark \markup { \box "8a" } s2.*5
  \mark \markup { \box "8b" } s2.*5
  \mark \markup { \box "8c" } s2.*6
}

partI = \relative {
  \global
  R2.*5
  R2. | R | R | r4 b'4^\mp ~8 g | a2~8 fis |
  e4 fis g | a2. | r4 b~8 g | a4 d~8 b | g4(a) b |
  c16(b a8~2) | e4(g e') | d2. | d2(~8 c16 bes) | c2 g8(a) |
  b2 d4 | g,4.(b8) a4 | g2. | R | R | R | % 4a
  r4 b~8 g | a2~8 fis | e4 fis g | a2. | r4 b~8 g | a4 d~8 b |
  g4(a) b | c16(b a8~2) | e4(g e') | d2. | 2~(8 c16 bes) |
  c2 g8(a) | b2 d4 | g,4.(b8) a4 | g2.~ | 2 r8 d'^\mf \bar "||" \key f \major | % 5a
  d2 c8(bes) | c2 f,8. 16 | 4(g a) | g2. | r4 a8(g) a(bes) |
  c2 a8. c16 | d2.( | c2.) | 4(g') e | f2~8 c |
  ees2.( | d2~8) bes | des2. | 4 bes des | c2.~ | % 6a
  c4 r8 c c bes | a4. g8 a bes | c2 a8 c | 4(bes) a | g4. c,8(f g) |
  a2 bes4 | c a~8 f | d'4 c~8 bes | c2^\< \tuplet 3/2 {cis8^\f (d)e} | f4(e) f |
  c2 8. g'16 | 4(f~8) e | d4.(c8) 8. bes16 | c8(f) 2 | r4 4~8 ees | % 7a
  f2. | r4 e(c) | d2.( | c2) r4 \bar "||" \key g \major | r4 bes4\omit\f^\markup{\italic sempre \dynamic f} ~8 g |
  a2~8 fis | e4 fis g | a2. | r4 bes~8 g | a4 d~8 bes |
  g4(a) b | c16(b a8~2) | e4(g e') | d2. | 2(~8 c16 bes) | % 8a
  c2 \breathe g8^\mf (a) | b2 d4 | g,4.(b8) a4 | g2.~ | 4 r g8^\mp(a) |
  b2 d4 | g,4.(b8) a4 | g2.~ | g | R2.^\markup\italic "poco rit" | R2. |
  \bar "|."
}

wordsI = \lyricmode {
  Sim __ sha -- lom, __ to -- va u -- vra -- cha,
  chen __ va -- che -- sed __ vih -- ra -- cha -- mim __ al __ kol.
  al __ kol, al __ kol yosh -- vey __ te -- vel.
  Sim __ sha -- lom, __ to -- va u -- vra -- cha,
  chen __ va -- che -- sed __ vih -- ra -- cha -- mim __ al __ kol.
  al __ kol, al __ kol yosh -- vey __ te -- vel. __
                                % 5a
  Yih -- hi ra -- tzon mil -- fa -- ne -- cha shet -- va -- tel mil -- cha -- mot __
  ush -- fi -- chot __ da -- mim, __
  da -- mim min ha -- o -- lam. __
                                % 6b
  Vih -- ye -- a -- su, a -- su ku -- lam a -- gu -- da __ a -- chat,
  la -- sol rih -- tzon -- cha __ bih -- le -- vav __ sha -- lem.
  A -- do -- shem __ sha -- lom,
  A -- do -- shem __ sha -- lom, __ ba -- rih -- chey -- nu
  vih -- sha -- lom. sha -- lom. __
                                % 7b
  Sim __ sha -- lom __ to -- va u -- vra cha.
  chen __ va -- che -- sed __ vih -- ra -- cha -- mim __
  al __ kol, al __ kol, al __ kol yosh -- vey __ te -- vel. __
  al __ kol yosh -- vay __ te -- vel! __
}

wordsImidi = \lyricmode {
  "Sim "  sha "lom, "  to "va " u vra "cha, "
  "\nchen "  va che "sed "  vih ra cha "mim "  "al "  "kol. "
  "\nal "  "kol, " "al "  "kol " yosh "vey "  te "vel. "
  "\nSim "  sha "lom, "  to "va " u vra "cha, "
  "\nchen "  va che "sed "  vih ra cha "mim "  "al "  "kol. "
  "\nal "  "kol, " "al "  "kol " yosh "vey "  te "vel. " 
                                % 5a
  "\nYih" "hi " ra "tzon " mil fa ne "cha " shet va "tel " mil cha "mot " 
  "\nush" fi "chot "  da "mim, " 
  "\nda" "mim " "min " ha o "lam. " 
                                % 6b
  "\nVih" ye a "su, " a "su " ku "lam " a gu "da "  a "chat, "
  "\nla" "sol " rih tzon "cha "  bih le "vav "  sha "lem. "
  "\nA" do "shem "  sha "lom, "
  "\nA" do "shem "  sha "lom, "  ba rih chey "nu "
  "\nvih" sha "lom. " sha "lom. " 
                                % 7b
  "\nSim "  sha "lom "  to "va " u "vra " "cha. "
  "\nchen "  va che "sed "  vih ra cha "mim " 
  "\nal "  "kol, " "al "  "kol, " "al "  "kol " yosh "vey "  te "vel. " 
  "\nal "  "kol " yosh "vay "  te "vel! " 
}

partII = \relative {
  \global
  R2.*26
  g'2. | fis2(d4) | e2 4 | d g a | g g~8 8 | fis4 a~8 fis | % 4b
  e4(fis) g | d2. | e2(g4) | a2. | bes |
  g2 8(fis) | g2 fis4 | e2 d4 | g2.~ | 2 r8 d'^\mf \key f \major | % 5a
  d2 c8(bes) | c2 f,8. 16 | 4(g a) | g2. | r4 f8(e) f(g) |
  a4(g) f8. a16 | bes2 a8 f | g2. | 4(c~8) bes | a2. |
  r4 f(c') | bes2. | r4 f(bes) | 4 f bes | g2(a4 | % 6a
  bes4 c2) | r8 c, c' bes a g | a4(g) f8 8 | 4(g) f | c4. 8(f e) |
  f4.(e8) f(g) | a(g) f4 g8(a) | bes4 a f | g2^\< \tuplet 3/2 {a4^\f <a cis>8} | <a d>2 4 |
  <g c>2 g8. c16 | 2~8 a | bes4.(a8) 8. 16 | a8(c) 2 | r4 c~8 bes | % 7a
  bes4(a~8) f | a4(g2) | f4(g) a8(bes) | g2 r4 \key g \major | g2.\omit\f^\markup{\italic sempre \dynamic f} |
  fis2(d4) | e2 8(g) | c(b) g4 <fis a> | <g b> g~8 8 | fis4 a~8 fis |
  e4(fis) g | d2. | e2(g4) | a2. | bes | % 8a
  g2 \breathe 8^\mf (fis) | g2 fis4 | e2 d4 | e2.~ | 4 r g8^\mp (fis) |
  g2 fis4 | e2 d4 | d2.~ | d | R2. | R2. |
  \bar "|."
}

wordsII = \lyricmode {
  Sim sha -- lom, to -- va u -- vra -- cha,
  chen __ va -- che -- sed __ vih -- ra -- cha -- mim
  al __ kol.
  al __ kol, al __ kol yosh -- vey __ te -- vel.
                                % 5a
  Yih -- hi ra -- tzon mil -- fa -- ne -- cha
  shet -- va -- tel mil -- cha -- mot,
  mil -- cha -- mot ush -- fi -- chot
  da -- mim, da -- mim ha -- o -- lam. __
                                % 6b
  Vih -- ye -- a -- su ku -- lam __ a -- gu -- da __ a -- chat,
  la -- sol __ rih -- tzon -- cha __ bih -- le -- vav sha -- lem.
  A -- do -- shem __ sha -- lom,
  A -- do -- shem __ sha -- lom, __ ba -- rih -- chey -- nu
  vih -- sha -- lom. __ sha -- lom, __ sim -- sha -- lom.
                                % 7b
  Sim sha -- lom __ to -- va __ u -- vra cha.
  chen __ va -- che -- sed __ vih -- ra -- cha -- mim
  al __ kol, al __ kol, al __ kol yosh -- vey __ te -- vel. __
  al __ kol yosh -- vay __ te -- vel! __
}

wordsIImidi = \lyricmode {
  "Sim " sha "lom, " to "va " u vra "cha, "
  "\nchen "  va che "sed "  vih ra cha "mim "
  "\nal "  "kol. "
  "\nal "  "kol, " "al "  "kol " yosh "vey "  te "vel. "
                                % 5a
  "\nYih" "hi " ra "tzon " mil fa ne "cha "
  "\nshet" va "tel " mil cha "mot, "
  "\nmil" cha "mot " ush fi "chot "
  "\nda" "mim, " da "mim " ha o "lam. " 
                                % 6b
  "\nVih" ye a "su " ku "lam "  a gu "da "  a "chat, "
  "\nla" "sol "  rih tzon "cha "  bih le "vav " sha "lem. "
  "\nA" do "shem "  sha "lom, "
  "\nA" do "shem "  sha "lom, "  ba rih chey "nu "
  "\nvih" sha "lom. "  sha "lom, "  sim sha "lom. "
                                % 7b
  "\nSim " sha "lom "  to "va "  u "vra " "cha. "
  "\nchen "  va che "sed "  vih ra cha "mim "
  "\nal "  "kol, " "al "  "kol, " "al "  "kol " yosh "vey "  te "vel. " 
  "\nal "  "kol " yosh "vay "  te "vel! " 
}

pianoRHone = \relative {
  \global \oneVoice
  g''8(d b4.) g'8( | fis8 d a4.) fis'8( | <g, e>4 <g d'> c) | \voiceOne d2. | \oneVoice b,8( d g b a g |
  <d a'>8 fis d4.) 8 | <c d e>4 <d fis> <e g> | <c d a'>2. | r4 <a b d g>2 | r4 <a b d fis>2 |
  <g c d e>4 fis' <g, c d g> | <g c d e>2. | r4 <a b d g>2 | <a b d fis>4 <d fis a>2 | <g, c d e>2. |
  <g c d e g>4 g fis | <e g a c>2 e'4 | fis a fis | g bes g | <g, c d e>2. |
  <a b d g>2 <fis' a>4 | <g, c d e>2 <g c d>4 | <b g'>8(d b4.) g'8( | <a, fis'> d a4.) fis'8 | <c d e>4 d c | <g c d>2 <a d>4 | % 4a
  <a b d g>4 4 4 | 4 <a fis'> <a b d> | <g c d e> <g d'> <g c> | <g c d> <c d g> <c d fis> | <d g a b>4 4 4 | <d e fis a> <e fis a d> <e fis a> |
  <d e g>4 <d e a> <d e g b> | <d fis>8 <e g> <fis a> <g b> <a c> <fis a> | <c d e>4 <d e g> <c d e> | <d e fis> <e fis a> <d e fis> | <d ees g> <d ees g bes> <ees g bes d> |
  <d e g c>2 r4 | <d g a b>2 <e fis b d>4 | <d e g>2 <d e fis a>4 | g8 d b d g a | b c d e \tuplet 5/4 {fis16 g a b c} \key f \major | % 5a
  <a d>8 f q f q f | <g a c> f q f q f | <a, d> f q f q f | <g bes c> f q f q f | <f g a c>4 4 4 |
  <f g a c>4 4 <g a c f>8 e' | <f, bes c d>4 4 4 | <f g c d> q <e g bes c> | <g a c e> <a c e g> <g a c e> | <g c f>8\arpeggio e' d c a c |
  r4 <bes c> <c f> | <bes c d>2. | r4 <c des f>2 | r4 <c des f> <aes c des> | f8 c g c f c | % 6a
  <c e>8 <d f> <e g> <f a> c' bes | <f g a> c q c <a' c> <g bes> | <f g a> c q c <f a> <a c> | <g bes c> c, q c <f g a> c | <c f g> g q g <c f> <e g> |
  <g a c>8 f q g <f g bes> c | <g' a c> f q f q <f a> | <bes d> f <a c> f <f g bes> f | <g bes c> c, q c <a' cis> e | <a d f> f <g c e> f <a d f> f |
  <c' e g>8 g q g q g | <c d e> g c d <c e> <e g> | <c d f> f, q f <a c> bes | <g a c f>4 q f'16 c a f | <f bes c d f>2. | % 7a
  <g bes c f>4 <g a c f>2 | <g c e>4 <e g a c>2 | <f a bes d>4 <d f a bes>2 | <d g c>2 <d fis>16 <e g> <fis a> <d fis> \key g \major | <g b>4 <b d>8 <a c> <g b> <b d> |
  <e, fis a>2. | r4 <c' e>8 <b d> <g c> <c e> | \voiceOne <a d>2. \oneVoice | r4 <b d>8 <a c> <g b> <b d> | <e, fis a>4 <fis a d> <e fis a> |
  r4 <c' e>8 <b d> <a c> <g b> | <fis a>4 8 <e g> <d fis> d | <g, c d e>2 g'4  <a, b d fis>4 a' fis | <bes, d ees g> <g' bes> <ees g> | % 8a
  <e g c d e>2\arpeggio r4 | <a, b d g>2 <a b d fis>4 | <g c d e>2 <g c d>4 | <a b d g>4 e'8 fis <e fis g> b' | <e, c'>2 b'8 a |
  <a, b d g>2 <a b d fis a>4 | <g c d e g>2 <e' g c d>4 | g'8(d b4.) g'8( | fis8 d a4.) fis'8( <g, e'>4^\markup\italic "poco rit." g' <a, fis'>) | 4 <b g'>2 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2. | s2. | s2. | g'2 fis4 | s2. |
  s2.*5 |
  s2.*5 |
  s2. | s2. | <a, b d>2 s4 | <bes c ees>2 s4 | s2. |
  s2 d8 a | s2. | s2. | s2. | g2. | s2. | % 4a
  s2.*6 |
  s2.*5 |
  s2.*5 | % 5a
  s2.*5 |
  s2.*5 |
  s2.*5 | % 6a
  s2 c4 | s2.*4 |
  s2.*5 |
  s2.*5 | % 7a
  s2.*5 |
  s2. | s2. | g'2 fis4 | s2. | s2. |
  s2.*5 | % 8a
  s2.*5 |
  s2.*6 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp | s2.*4 |
  s2.*5 |
  s2.*5 |
  s2.*5 |
  s2.*17 | % 4
  s2.*5 | % 5a
  s2.\mf | s2.*4 |
  s2.*5 |
  s2.*5 | % 6a
  s2.*5 |
  s2. | s2. | s2. | s2.\< | s2.\f |
  s2.*5 | % 7a
  s2. | s2. | s2. | s2. | s2.\omit\f-\markup{\italic sempre \dynamic f} |
  s2.*5 |
  s2.*5 | % 8a
  s2. | s2.\mf | s2. | s2. | s2. |
  s2. | s2. | s2.\mp | s2. | s2. | s2. |
}

pianoLHone = \relative {
  \global \voiceOne 
  r4 <d' g>2 | b2. | c,8 g' e'2 | d,8 a' d2 | g,,8 d' g2 |
  r4 a2 | <c, g'>2. | d2 d,4 | g2. | b2. |
  c2. | d2 d,4 | g2. | <b, b'>2 b'4 | <c, c'>2 c4 |
  <d d'>2. | <a a'> | <b b'> | <c c'>2 c'4 | <d, d'>2 d4 |
  g2 b4 | a2 d,4 | e8 b' g'4 b, | <b, b'> f'' b, | c,8 g' e'2 | d,8 a' d e fis d, | % 4a
  g4. g'8~8 d | b2 4 | c4. e8~8 c | \voiceOne d2. \oneVoice | g,4. b'8~8 g | b,2 b,4 |
  c4. g'8~8 e' | d2 d,4 | a4. a'8~8 e | b4 b' b, | c4. c'8~8 g |
  d'4 d,2 | g8 d' b'4 b, | a8 e' c'4 d, | g,8 d' g d g, d' | g, d' b' d, g, d' \key f \major | % 5a
  bes8 f' a bes c bes | a, f' a bes c a | bes, f' a bes c d | c g c,4 g8 c, | <f, f'>2 8 <g g'> |
  <a a'>2 4 | <bes bes'>2 <d d'>4 | <c c'>2 c'8 bes | a e' c'4 e,8 a, | d, a' f'4 a \clef treble |
  ees'8 bes g'2 | d8 bes f'2 | des8 bes aes'4 f | aes8 f des bes aes f \clef bass | c8 4 4 g8 | % 6a
  <c, c'>4 g' q | <f, f'>2~8 <g g'> | <a a'>2 a'8 a, | <bes bes'>2 bes'8 d | <c, c'>2 4 |
  <f f'>4 <c c'>2 | <a a'>2 <c c'>4 | <bes bes'>2 <d d'>4 | <c c'>2 <a a'>4 | <d d'> <d, d'>2 |
  <d' d'>4 <d, d'>2 | <a' a'>4 a'' <a, e'> | <bes, bes'>8 f' bes,4 c | <f, f'> f'' a16 bes c d | c4 <c,, c'>2 | % 7a
  f8 c' a'4 c, | a8 e' c'4 e, | bes8 f' g4 f | c8 g' c4 <d,, d'>4 \key g \major | g8 d' b' a g d |
  b8 fis' d' c b fis | c g' e' d c g | d a' e'4 d8 a | g, d' b' a g d | b fis' d' c b fis |
  c8 g' e' d c g | d a' d2 | <a,, a'>2. | <b b'> | <c c'>2 c'4 | % 8a
  <d a' d>2\arpeggio r4 | <g, g'>2 b4 | <a e'>2 <d, d'>4 | <e b' e>2 <d d'>4 | <c c'>2. |
  <g' g'>2 <b fis'>4 | <a e'>2 <d g>4 | \voiceOne r4 <d' g>2 | b2. \oneVoice | c,8 g' e'4 d, | g, <g' d'>2 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo 
  g2. | r4 <d' e>2 | s2. | s2. | s2. |
  b,2. | s | s | s | s |
  s2.*5 |
  s2.*5 |
  s2.*6 | % 4a
  s2. | s2. | s2. | r4 d,2 | s2. | s2. |
  s2.*5 |
  s2.*15 | % 5
  s2.*15 | % 6
  s2.*15 | % 7
  s2.*5 | % 8a
  s2.*5 |
  s2. | s2. | g'2. | r4 <d' e>2 | s2. | s2. |
%  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "Part 1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % partII staff
          \new Staff = "Part 2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff = piano <<
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
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "Part 1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % partII staff
          \new Staff = "Part 2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff = piano <<
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
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-1"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "Part 1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partI
           \addlyrics \wordsImidi
          >>
                                % partII staff
          \new Staff = "Part 2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partII
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
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

\book {
  \bookOutputSuffix "midi-2"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % partI staff
          \new Staff = "Part 1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partI
          >>
                                % partII staff
          \new Staff = "Part 2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIImidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
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
