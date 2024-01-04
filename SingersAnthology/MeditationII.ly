\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Meditation II"
  subtitle    = \markup {from \italic Shenandoah}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gary Geld"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Peter Udell"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Rubato 2.=120
  s4 | s1. | s2. \tempo 2.=60 s4 \tempo 2.=120 s2 | s1. |
  s1.*4 |
  s1. \tempo "[Not Faster]" 2.=120 | s1.*4 |
  \tempo "[Meno]" 2.=120 s1.*2 | s1*2 | % 245a
  \tempo \markup\italic "Rubato (accel. e cresc.)" 2.=122 s1. | \tempo 2.=124 s1. | \tempo 2.=126 s1. |
  \tempo "rall." 2.=123 s1. | s4. \tempo "a tempo" 2.=120 s4. s2. | s1. |
  s1.*3 |
  s1.*2 | % 246a
  s1.*2 |
  s1.*2 |
  s1. | \tempo "[Slowly]" 2.=100 s1. | s | s |
  s1. | \tempo 2.=122 s1 | \tempo 2.=124 s1 | \tempo 2.=126 s1 | \tempo 2.=128 s1 | % 247a
  \tempo 2.=130 s1 | \tempo 2.=132 s1 | \tempo 2.=134 s1 | \tempo 2.=136 s1 |
  \tempo "[maestoso]" 2.=138 s1 | s1 | \tempo "[Slowly]" 2.=100 s1 | s1 |
  s1*4 |
  s1*4 | % 248a
  s1 | s | \tempo "[Stringendo]" 2.=140 s1 | s |
  s1 | s | \tempo ritard 2.=120 s1 | s2. \tempo 2.=60 s4 \tempo "a tempo" 2.=120 |
  s1 | s | \tempo "[Very Slowly]" 2.=80 s | s | s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "244a" } s4 s1.*3
  \textMark \markup { \box "244b" }    s1.*4
  \textMark \markup { \box "244c" }    s1.*5
  \textMark \markup { \box "245a" }    s1.*2 \time 4/4 s1*2 \time 6/4
  \textMark \markup { \box "245b" }    s1.*3
  \textMark \markup { \box "245c" }    s1.*3
  \textMark \markup { \box "245d" }    s1.*3
  \textMark \markup { \box "246a" }    s1.*2
  \textMark \markup { \box "246b" }    s1.*2
  \textMark \markup { \box "246c" }    s1.*2
  \textMark \markup { \box "246d" }    s1.*4
  \textMark \markup { \box "247a" }    s1. \time 4/4 s1*4
  \textMark \markup { \box "247b" }    s1*4
  \textMark \markup { \box "247c" }    s1*4
  \textMark \markup { \box "247d" }    s1*4
  \textMark \markup { \box "248a" }    s1*4
  \textMark \markup { \box "248b" }    s1*4
  \textMark \markup { \box "248c" }    s1*4
  \textMark \markup { \box "248d" }    s1*5
}

melody = \relative {
  \global
  c'4 | g'2 a4 2 g4 | g a2~4\fermata r c, | g'2 a4 bes2 c4
  g2.~4 r c, | f2 g4 2 f4 | f g2~4 r r | g4 4. a8 c2 a4 |
  a2.~4 r f | c'2 d4 2 c4 | c d2~4 r r | c4 d2 2 bes4 | c2.~4 r c, |
  bes'2 a4 g2 f4 | g a2~4 r r \time 4/4 | r g g f8 ees | f2 r \time 6/4 \key aes \major | % 245a
  R1.*3 |
  R1. | r4 r8 c f g aes2. | r4 r8 c, f g aes2. |
  r4 r8 c, f g aes2 f4 | g2.~4 r r | r r8 des ges aes bes2 ges4 |
  f2 g4 aes2 f4 | bes2 c4 des2 c4 | % 246a
  c2.~ 4 r c | des2 4 c2 bes4 |
  aes8 bes c2~4 r aes | g2 aes4 bes2 ees,4 |
  c'2.~4 \caesura r c \time 6/4 | bes2 4 aes2 ges4 | f2 g4 aes2 f4 | ees2 f4 g2 ees4 |
  f2.~4 r f \time 4/4 | g1~ | 2~8 r g4 | aes1~ | 2~8 r aes4 | % 247a
  bes1~ | 1~ | 1~ | 4 r r2 \section \key ees \major |
  R1 | R | ees,4 bes' bes bes | bes aes8(g) ees f4. |
  g4 4 4 4 | g f8 ees f4. d8 | g4 d'4 4 4 | d c8 bes c bes4. |
  bes4 a g f | g2~8 r r4 | ees bes' bes bes | bes aes8 g ees f4. | % 248a
  g4 4 4 4 | 4 f8 ees f4. 8 | g8 d4 8 4. g8 | a d,4 8 2 |
  b'8 a4 g8 b4 a8(b) | c8 8 bes aes8 4 bes8 c | des2. c8 bes | d8 4.~8 r c\fermata bes\fermata |
  ees1~ | 1 \caesura\fermata | R1 | R | R |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  The dream has turned to ash -- es. __
  The wheat has turned to straw. __
  And some -- one asks the ques -- tion: __
  "\"What" was the dy -- in' "for?\"" __
  The graves are filled with an -- swers __
  each one just and true. __
  For all men fin -- 'lly rea -- son: __
  "\"What" else could I "do?\""
  I heard the drums, the dis -- tant drums,
  I tried to turn a -- way. __
  But in the end the price of peace
  was more than I could pay. __
  I have no shame, I lay the blame __
  at some -- one el -- se's door. __
  And so the seeds of late are sown
  that blow from war to war. __
  What for? __ Oh, Lord, __ what for? __
  North or south, they're all our __ chil -- dren,
  born of flesh in joy and in pain.
  They're yours and mine, our past and our fu -- ture,
  Sent to die in vain. __
  Gray or Blue they're more than just num -- bers,
  more than tal -- ly scores in a game.

  The face -- less have names! They're Ja -- cob! and James!
  Rob -- ert! and Anne!
  Our __ daugh -- ters amd our sons, yours and mine.
  All our chil -- dren __ ev -- 'ry -- one! __
}

midiWords = \lyricmode {
}

lh = {\change Staff = pianolh \vo}
rh = {\change Staff = pianorh \vt}

pianoRHone = \relative {
  \global
  r4 | <c f a c>1.~ | q | q~ |
  q2.~4 r r | q1.~ | 2.~2 r4 | <c g' bes des>1. |
  <c g' bes des>2.(<c f a c>2) r4 \clef treble | % 244c
  <f c' d f>2.-- \voiceOne <f'' g bes d>2-> r4 |
  <e,, a c e>2.-- <e'' a d>2-> r4 |
  <f,, c' d f>2. <f'' g bes d>2-> r4 |
  <e,, a c e>2.-- <e'' a c>2-> r4 |
  <bes e bes'>2(<a c a'>4 <g bes g'>2 <f a f'>4) | % 245a
  <g bes g'>4(<a c a'>2~4) r r \time 4/4 |
  <bes, ees g>1~ |
  2. r4 \section \key aes \major \time 6/4 |
  r8 g(aes c f g aes g f c aes g) | % 245b
  r8 g(aes c f g aes g f c aes g) |
  r8 g(aes c f g aes g f c aes g) |
  r8 g(bes c f g bes g f c bes g) | % 245c
  \voiceOne r4 r8 c'^\markup "L.H." f g aes2 r4 |
  r4 r8 c, f g aes2 r4 |
  r4 r8 c, f g aes2 r4 | % 245d
  r4 r8 c, f g bes2 r4 |
  \oneVoice r4 \lh r \rh r \lh r \rh r \lh r |
  \rh r4 \lh r \rh r \lh r \rh r \lh r | % 246a
  \repeat unfold 5 {\rh r4 \lh r \rh r \lh r \rh r \lh r |}
  \rh r4 \lh r \rh r \lh <g,, c ees>4-> \caesura \rh r r | % 246d
  \numericTimeSignature \set Staff.timeSignatureFraction = 4/4 \scaleDurations 6/4 {
    <bes des ges bes>4 2 4 |
    <aes c f aes>4 2 4 |
    <g bes ees g>4 2 4 |
    <aes c f aes>4 2 r4 | % 247a
  }
  \time 4/4
  <g c f g>4 2 4 |
  <g c e g>4 2 4 |
  <aes c g' aes>4 2 4 |
  <aes c f aes>4 2 4 |
  <f' g bes f'>4 2 4 | % 247b
  <ees g bes ees>4 2 \ottava #1 <bes' ees g bes>4 |
  <bes des ges bes>4 2 4 |
  <bes des f bes>4 \ottava #0 bes,4-^ 4-^ 4-^ \section \key ees \major  |
  <ees' g bes e>4-> <bes ees g bes>-> q-> q-> | % 247c
  q4-> <aes c f aes>8 <g c ees g> <ees aes c ees>4-> <f bes d f>\fermata \section |
  ees4(bes'2) 4-- ~ |
  4 aes8 g <c, ees> <d f>4. |
  <bes ees g>1~ | % 247d
  q4 <d f>8(<c e> <d f>2) |
  g4(d'2) 4-- ~ ( |
  d4 c8 bes c bes4.) |
  s1 | % 248a
  r4 <bes, d g>4\arpeggio q\arpeggio <bes d f>\arpeggio |
  \vo ees4 bes' bes bes \ov |
  <bes, ees g bes>\arpeggio aes'8^( g <c, ees> f4.) |
  r8 <bes, ees g>4-- ~ 8 r q4-- ~8 | % 248b
  <g c ees g>4\arpeggio <d' f>8 <c e> <d f>4 r8 f |
  <bes, d g>8\arpeggio <g bes d>4 8 8 4 <bes d g>8 |
  <c ees a>8-> \arpeggio <g a c d>4 8 8 4 8 |
  <b d b'>8\arpeggio <b d a'>4 <b d g>8 <b d g b>4 <b d a>8 <b d g> | % 248c
  <c ees aes>4\arpeggio <c ees bes'>8 <d ees aes> q4 <des ges bes>8 <ees aes c> |
  r8 aes8-> d-> aes'-> ges-> f-> <c ees>(<bes des>) |
  r8 <bes, bes'>-> <f' f'>-> <c' c'>-> <bes bes'> r <d, f aes c>8\fermata <d f aes bes>\fermata |
  <ees g bes ees>4 <bes' bes'>-> <bes ees g bes>-> <bes bes'>-> | % 248d
  <bes ees g bes>4-> <aes c ees aes>8(<g g'>) <aes ees' f aes>8-- <bes ees f bes>4.\fermata \caesura \fermata |
  r4 <aes c f aes>4\arpeggio <f aes c f>\arpeggio <c' f aes c>\arpeggio |
  <ees g bes ees>1\laissezVibrer |
  q4\fermata\arpeggio r4 r2 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4 s1.*12
  s1. | s | <g bes e>8 r8 r4 r2 | s1 | % 245a
  s1.*3 |
  s1. | \repeat unfold 4 {r8 g(aes c f g aes g f c aes g) |} s1.|
  s1.*7 | s1*3 | % 246
  s1*5 | % 247a
  \scaleDurations 6/4 {
    s1*4 |
  }
  s1 | s | <bes ees>1~ | 2 s |
  s1 | s | <d g>2~(<d fis>)~ | <d f>4~( <d ges> f4) ees8( d |
  <des bes'>4--) <des a'>-- <c g'>-- <c f>-- |
  s1 | % 248a
  \apart r8 s4 r8 r8 s4 r8 \auto |
  s4 r r <f, aes d> |
  s1*4 |
  s1*4 |
  s1*5 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1.\pp | s | s |
  s1.*4 |
  s1.*5 |
  s1. | s | s8 s\mf s2.\p\> | s1\pp | % 245a
  s1.\p | s\cresc | s |
  s1. | s\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s |
  s1.*3 |
  s2 s1-\markup\italic crescendo | s2 s-\markup\italic poco s-\markup\italic a | % 246a
  s4 s-\markup\italic poco s1 | s4 s-\markup\italic "(continue cresc.)" s1 |
  s1. | s |
  s4 s2\< s2.\! | s1.\mp | s | s |
  s1. | s4 s2.-\markup\italic "poco accell. e cresc." | s1 | s | s | % 247a
  s1 | s | s | s4\f s2.\sf |
  s1\fff | s2-\markup\italic rit. s8 s4.\ff | s1\mf | s |
  s1 | s | s | s2. s4\< |
  s1\! | s\p | s | s | % 248a
  s1 | s | s-\markup\italic "[stringendo]" | s |
  s1 | s | s\omit\ff-\markup{\dynamic ff \italic ritard} | s |
  s2\fp s\< | s1 | s2\pp s\> | s1\! | s\ppp |
}

pianoLHone = \relative {
  \global
  s4 s1.*3 |
  s1.*4 |
  \voiceOne <c g'>2.~(<c f>2) r4 | % 244d
  \showStaffSwitch \voiceTwo \omit bes2. \rh <f'' g bes d>2 r4 \hideStaffSwitch \lh |
  \showStaffSwitch \voiceTwo \omit aes,,2. \rh <e'' a d>2 r4 \hideStaffSwitch \lh |
  \showStaffSwitch \voiceTwo \omit bes,2. \rh <f'' g bes d>2 r4 \hideStaffSwitch \lh |
  \showStaffSwitch \voiceTwo \omit bes,,2. \rh <f'' g bes d>2 r4 \hideStaffSwitch \lh |
  s1. | <c, g' bes>4(<c f a>2~4) r r \time 4/4 | s1 | s \key aes \major \time 6/4 | % 245a
  <f, f'>2.-> ~ 4 r r | <ees ees'>2.-- ~4 r r | <des des'>2.-- ~4 r r |
  <c c'>2.-- ~4 r r | <f f'>2. r | <ees ees'> r |
  <des des'>2. r | <c c'> r | \vt \tuplet 3/2 {ges'8^([des' bes']} \rh \vo\tuplet 3/2 {des8[ges bes]} \lh \clef treble \vt \tuplet 3/2 {des ges bes} \rh \tuplet 3/2 {des8-> bes ges} \lh \vt \tuplet 3/2 {des[bes ges]} \rh \vo \tuplet 3/2 {des bes ges)} \lh \clef bass
 \vo \tuplet 3/2 {f,8(c' aes'} \rh \vo \tuplet 3/2 {c8[f aes]} \lh \clef treble \vt \tuplet 3/2 {c f aes} \rh \vt \tuplet 3/2 {c-> aes f} \lh \vo \tuplet 3/2 {c[aes f]} \rh \vo \tuplet 3/2 {c aes f)} \lh \clef bass | % 246a
  \vo \tuplet 3/2 {ees,8(bes' g'} \rh \vo \tuplet 3/2 {bes[ees g]} \lh \vt \clef treble \tuplet 3/2 {bes ees g} \rh \vt \tuplet 3/2 {bes-> g ees} \lh \vo \tuplet 3/2 {bes[g ees]} \rh \vo \tuplet 3/2 {bes[g ees])} \lh \clef bass |
 \vt \tuplet 3/2 {aes,8^(ees' c'} \rh \vo \tuplet 3/2 {ees[aes c]} \lh \clef treble \vt \tuplet 3/2 {ees aes c} \rh \vt \tuplet 3/2 {ees^>[c aes]} \lh \vt \tuplet 3/2 {ees c aes} \rh \vo \tuplet 3/2 {ees[c aes])} \lh \clef bass | % 246b
  \vt \tuplet 3/2 {ges,8^(des' bes'} \rh \vo \tuplet 3/2 {des[ges bes]} \lh \clef treble \vt \tuplet 3/2 {des ges bes} \rh \tuplet 3/2 {des bes ges} \lh \vt \tuplet 3/2 {des[bes ges]} \rh \vo \tuplet 3/2 {des bes ges)} \lh \clef bass |
  \vo \tuplet 3/2 {f,8(c' aes'} \rh \vo \tuplet 3/2 {c[f aes]} \lh \vt \clef treble \tuplet 3/2 {c f aes} \rh \vo \tuplet 3/2 {c aes f} \lh \vo \tuplet 3/2 {c[aes f]} \rh \vo \tuplet 3/2 {c aes f)} \lh \clef bass | % 246c
  \vo \tuplet 3/2 {ees,8(bes' g'} \rh \vo \tuplet 3/2 {bes[ees g]} \lh \vt \clef treble \tuplet 3/2 {bes g ees} \rh \vt \tuplet 3/2 {bes ees g} \lh \vo \tuplet 3/2 {bes[g ees]} \rh \vo \tuplet 3/2 {bes g bes)} \lh \clef bass |
  \vt \tuplet 3/2 {aes,8(ees' c'} \rh \vo \tuplet 3/2 {ees[aes c]} \lh \clef treble \vt \tuplet 3/2 {ees aes c} \rh \ottava #1 \vt <ees aes c ees>4) \ottava #0 \lh \ov \caesura r r \clef bass | % 246d
  \numericTimeSignature \set Staff.timeSignatureFraction = 4/4 \scaleDurations 6/4 {
    <ges,,,, des' ges>4 2 4 |
    <f c' f>4 2 4 |
    <ees bes' ees>4 2 4 |
    <f c' f>4 2 r4 | % 247a
  }
  \time 4/4
  <c' f>4 2 4 |
  <c e>4 2 4 |
  <f, c' g'>4 2 4 |
  <f c' f>4 2 4 |
  <ees  bes' g'>4 2 4 | % 247b
  q4 2 4 |
  <aes ees' ges>4-> c2-> 4-> |
  <bes f' aes>4-> <bes, bes'>4-^ 4-^ 4-^ \section \key ees \major |
  \voiceOne r4 <bes'' ees g>-> r q-> | % 247c
  r4 <aes c ees> r8 <bes,, bes'>4-^ 8\fermata \section |
  g''1~ |
  g4 f8(ees aes2) |
  g1 | g2(f) | g2(a) | aes2(g) | % 247d
  g4-- g-- a-- a | r4 <g, d'>\arpeggio <bes aes'>\arpeggio q\arpeggio | % 248a
  \hide ees8 \showStaffSwitch \rh <g bes ees>4 \lh \hideNotes ees8  des \unHideNotes \rh q4 \lh \omit des8 \hideStaffSwitch |
  s4 f8(g aes2) |
  <ees, ees'>4(<d d'> <c c'> <bes bes'>) | % 248b
  <a a'>4\arpeggio r r <bes bes'> |
  <g' d'>8 4 8 8 4 8 |
  q8\arpeggio 4 8 8 4 d'8 |
  <g, g'>8\arpeggio 4 8 <f f'>4 q | % 248c
  <ees ees'>4\arpeggio <c c'>8 <ees ees'> <a a'> <ges ges'> <f f'> <ees ees'> |
  <des des'>2. \arpeggioBracket <f aes'>4\arpeggio \arpeggioNormal |
  <bes, bes'>2~8 r <f'' aes c>8\fermata <f aes bes>\fermata |
  r4 <g bes ees> r q | % 248d
  r4 <aes c ees> ces,2\fermata \caesura \fermata |
  r4 <f aes ees'>2. |
  ees,8( bes' ees g \rh bes ees g bes) |
  <ees, g bes>4\arpeggio r r2 |
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  r4 | <f,, f'>1.~ | q q~ |
  q2.~4 r r | q1.~ | 2.~2 r4 | q1. |
  q2.~2 r4 | <bes bes'>2.-- ~2 r4 | <a a'>2.-- ~ 2 r4 | <g g'>2.-- ~2 r4 | <a a'>2.-- ~2 r4 |
  <g' d' f b>2.~4 r r | \acciaccatura f8 2.~4 r r | <ees bes' ees>8-. r r4 r2 | <f f'>2. r4 \section \key aes \major \time 6/4 | % 245a
  s1.*20 |
  s1*8 |
  <ees ees'>2-> <des des'>-> | % 247c
  <c c'>2-> s2 |
  ees'2(des) |
  c2(bes) |
  ees4(d c bes) | % 247d
  a2(bes) |
  b2(a) |
  bes2(ees) |
  e4-- e-- d-- d-- | % 248a
  r4 g,4-- bes-- bes |
  \vo <ees, ees'>4. 8(<des des'>4.) q8( \vt |
  <c c'>4\arpeggio) r r s |
  s1*4 | % 248b
  s1 | s | s | s2 s8 <bes bes'>4.-^ % 248c
  <ees ees'>2-> <des des'>-> | % 248d
  <c c'>2-> <ces ces'>-> |
  s4 \acciaccatura bes'8 2. |
  ees,4 r r2 |
  s1 |
%  \bar "|."
}

\book {
  #(define output-suffix "single")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage")
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
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \clef bass
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
