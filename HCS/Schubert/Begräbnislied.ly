\version "2.25.13"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Begräbnislied"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Franz Schubert D 168"
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
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Langsam, ernst" 4=80
  s2 \tempo 4=27 s4 \tempo 4=80 s | s1*3 |
  s2 \tempo 4=27 s4 \tempo 4=80 s | s1*3 | s2 \tempo 4=40 s \tempo 4=80 |
  s1*3 | % 2a
  s1*2 | \tempo 4=40 s2 \tempo 4=80 s |
  s1 | \tempo 4=40 s2 \tempo 4=80 s | s1*2 | % 3a
  s1 | \tempo 4=40 s2 \tempo 4=80 s | s1*2 |
  s2 \tempo 4=27 s4 \tempo 4=80 s | s1*3 | % 4a
  s2 \tempo 4=27 s4 \tempo 4=80 s | s1*2 | s2 \tempo 4=40 s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" } s1*5
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.. s8\pp | s1*3 | s2..\f s8\p | s1 | s2 s\cresc | s1\f\< | s1\ff |
  s8 s4.\pp s\< s8\! | s8\> s\! s2. | s8 s4\< s\! s4.\> | s1\! | s4 s\cresc s2\f | s2 s8 s4.\mf | % 2
  s1\fp | s\fp | s\fp | s1*2 | s2.. s8\pp | s1 | s4 s4.\fp s\cresc |
  s1\mf | s2 s\cresc | s1*2 | s1\f | s2\cresc s\f\> | s1\pp | s |
}

soprano = \relative {
  \global
  r2 r4.\fermata g'8 | 4. 8 aes4 4 | g4. 8 ees4 r8 g | 4. 8 4 a |
  bes4 fis g4.\fermata 8 | 4. 8 4 4 | bes4. 8 4 4 | b4. 8 c4 4 | bes4. 8 2\fermata |
  r8 f f f f8. 16 8 g | aes4 r r2 | r8 aes8 8 8 8. 16 8 bes | % 2a
  c4 r r2 | r8. c16 d8. 16 ees8. bes16 b8. 16 | c2->\fermata r8 g f ees |
  aes4. r16 f ees4 d | f2->\fermata r8 e aes g | f4. r16 f d4. 8 | c1 | % 3a
  R1 | r2\fermata r4. g'8 | 4. 8 aes8. 16 4 | r8 aes bes4. b8 c8. bes16 |
  aes8. 16 f8 8 g4\fermata r8 g | 4. 8 4 a | bes4. 8 4 4 | b4. 8 c4 c | % 4a
  bes4 4 g\fermata g | b4. 8 c4. ees,8 | 4 g c,2 | R1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Be -- grabt den Leib in sei -- ner Gruft,
  bis ihn des Rich -- ters Stim -- me ruft.
  Wir sä -- en ihn, einst blüht er auf,
  und steigt ver -- klärt zu Gott hin -- auf.
  Grabt mein ver -- wes -- li -- ches Ge -- bein,
  o ihr noch Sterb -- li -- chen nur ein,
  es bleibt, es bleibt im Gra -- be nicht,
  denn Je -- sus kommt und hält Ge -- richt,
  denn Je -- sus kommt und hält Ge -- richt.
  Ach Gott Ge -- o -- pfer -- ter!
  Dein Tod stärk’ uns in uns’ -- rer letz -- ten Noth,
  lass’ uns’ -- rer gan -- ze
  See -- le dein, und freu -- dig un -- ser En -- de sein,
  und freu -- dig un -- ser En -- de sein.
}

wordsWomenMidi = \lyricmode {
  "Be" "grabt " "den " "Leib " "in " sei "ner " "Gruft, "
  "\nbis " "ihn " "des " Rich "ters " Stim "me " "ruft. "
  "\nWir " sä "en " "ihn, " "einst " "blüht " "er " "auf, "
  "\nund " "steigt " ver "klärt " "zu " "Gott " hin "auf. "
  "\nGrabt " "mein " ver wes li "ches " Ge "bein, "
  "\no " "ihr " "noch " Sterb li "chen " "nur " "ein, "
  "\nes " "bleibt, " "es " "bleibt " "im " Gra "be " "nicht, "
  "\ndenn " Je "sus " "kommt " "und " "hält " Ge "richt, "
  "\ndenn " Je "sus " "kommt " "und " "hält " Ge "richt. "
  "\nAch " "Gott " Ge o pfer "ter! "
  "\nDein " "Tod " "stärk’ " "uns " "in " uns’ "rer " letz "ten " "Noth, "
  "\nlass’ " uns’ "rer " gan "ze "
  "\nSee" "le " "dein, " "und " freu "dig " un "ser " En "de " "sein, "
  "\nund " freu "dig " un "ser " En "de " "sein. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.. s8\pp | s1*3 | s2..\f s8\p | s1 | s2 s\cresc | s1\f\< | s1\ff |
  s8 s4.\pp s\< s8\! | s8\> s\! s2. | s8 s4\< s\! s4.\> | s1\! | s4 s\cresc s2\f | s2 s8 s4.\mf | % 2
  s1\fp | s\fp | s\fp | s1*2 | s2.. s8\pp | s1 | s4 s4.\fp s\cresc |
  s1\mf | s2 s\cresc | s1*2 | s1\f | s2\cresc s\f\> | s1\pp | s |
}

alto = \relative {
  \global
  r2 r4.\fermata ees'8 | 4. 8 f4 f | d4. 8 c4 r8 ees | 4. 8 d4 ees |
  d4 c bes4.\fermata g'8 | d4. f8 ees4 4 | f4. aes8 g4 4 | f4. 8 ees4 f8(ges) | g4(f8) ees f2\fermata |
  r8 d8 8 8 8. 16 8 ees | f4-> r r2 | r8 f8 8 8 8. 16 ees8 g | % 2a
  aes4 r r2 | r8. aes16 bes8. 16 8. ees,16 aes8. 16 | g2->\fermata r8 c, c c |
  c4. r16 c16 4 b | c2->\fermata r8 c c e | f4. r16 c16 4 b | c1-> | % 3a
  R1 | r2\fermata r4. ees8 | 4. 8 f8. 16 4 | r8 aes8 4. g8 8. 16 |
  f8. 16 d8 8 4\fermata r8 g | d4. ees16(f) ees4 4 | f4. g16(aes) g4 4 | f4. 8 ees4 f8(fis) | % 4a
  g4 f ees\fermata ees | f4. 8 ees4 f8(fis) | g4 b, c2 | R1\fermata |
}

wordsAlto = \lyricmode {
  Be -- grabt den Leib in sei -- ner Gruft,
  bis ihn des Rich -- ters Stim -- me ruft.
  Wir sä -- en ihn, einst blüht er auf,
  und steigt ver -- klärt zu Gott hin -- auf.
  Grabt mein ver -- wes -- li -- ches Ge -- bein,
  o ihr noch Sterb -- li -- chen nur ein,
  es bleibt, es bleibt im Gra -- be nicht,
  denn Je -- sus kommt und hält Ge -- richt,
  denn Je -- sus kommt und hält Ge -- richt.
  Ach Gott Ge -- o -- pfer -- ter!
  Dein Tod stärk’ uns in uns’ -- rer letz -- ten Noth,
  lass’ uns’ -- rer gan -- ze
  See -- le dein, und freu -- dig un -- ser En -- de sein,
  und freu -- dig un -- ser En -- de sein.
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.. s8\pp | s1*3 | s2..\f s8\p | s1 | s2 s\cresc | s1\f\< | s1\ff |
  s1 | s8 s\pp s4\< s\> s\! | s1 | s4. s4\< s4.\> | s4\! s\cresc s2\f | s2 s8 s4.\mf | % 2
  s1\fp | s\fp | s\fp | s1*2 | s2.. s8\pp | s1 | s4 s4.\fp s\cresc |
  s1\mf | s2 s\cresc | s1*2 | s1\f | s2\cresc s\f\> | s1\pp | s |
}

tenor = \relative {
  \global
  r2 r4.\fermata c'8 | 4. 8 4 4 | 4 b c r8 c | 4. g8 4 4 |
  g4 a g4.\fermata 8 | b4. d8 c4 c | d4. f8 ees4 4 | d4. 8 c4 d8(ees) | ees4(d8) c d2\fermata |
  R1 | r8 c8 8 8 8. bes16 aes8 g | aes4 r r2 | % 2a
  r8 ees'8 8 8 8. des16 c8 bes | c8. ees16 f8. 16 ees8. 16 d8. 16 | c2->\fermata r8 c8 8 8 |
  d4. r16 f, g4 4 | f2->\fermata r8 bes aes bes | c4. r16 f, g4. 8 | c,1-> | % 3a
  R1 | r2\fermata r4. c'8 | 4. 8 8. 16 4 | r8 c ees4. des8 c8. 16 |
  c8. 16 8 8 b4\fermata r8 g | b4. c16(d) c4 f | d4. ees16(f) ees4 4 | d4. 8 c4 d8(ees) | % 4a
  ees4 d ees\fermata ees | d4. 8 c4 d8(ees) | 4 d c2 | R1\fermata |
}

wordsTenor = \lyricmode {
  Be -- grabt den Leib in sei -- ner Gruft,
  bis ihn des Rich -- ters Stim -- me ruft.
  Wir sä -- en ihn, einst blüht er auf,
  und steigt ver -- klärt zu Gott hin -- auf.
  Grabt mein ver -- wes -- li -- ches Ge -- bein,
  o ihr noch Sterb -- li -- chen nur ein,
  es bleibt, es bleibt im Gra -- be nicht,
  denn Je -- sus kommt und hält Ge -- richt,
  denn Je -- sus kommt und hält Ge -- richt.
  Ach Gott Ge -- o -- pfer -- ter!
  Dein Tod stärk’ uns in uns’ -- rer letz -- ten Noth,
  lass’ uns’ -- rer gan -- ze
  See -- le dein, und freu -- dig un -- ser En -- de sein,
  und freu -- dig un -- ser En -- de sein.
}

wordsMenMidi = \lyricmode {
  "Be" "grabt " "den " "Leib " "in " sei "ner " "Gruft, "
  "\nbis " "ihn " "des " Rich "ters " Stim "me " "ruft. "
  "\nWir " sä "en " "ihn, " "einst " "blüht " "er " "auf, "
  "\nund " "steigt " ver "klärt " "zu " "Gott " hin "auf. "
  "\nGrabt " "mein " ver wes li "ches " Ge "bein, "
  "\no " "ihr " "noch " Sterb li "chen " "nur " "ein, "
  "\nes " "bleibt, " "es " "bleibt " "im " Gra "be " "nicht, "
  "\ndenn " Je "sus " "kommt " "und " "hält " Ge "richt, "
  "\ndenn " Je "sus " "kommt " "und " "hält " Ge "richt. "
  "\nAch " "Gott " Ge o pfer "ter! "
  "\nDein " "Tod " "stärk’ " "uns " "in " uns’ "rer " letz "ten " "Noth, "
  "\nlass’ " uns’ "rer " gan "ze "
  "\nSee" "le " "dein, " "und " freu "dig " un "ser " En "de " "sein, "
  "\nund " freu "dig " un "ser " En "de " "sein. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.. s8\pp | s1*3 | s2..\f s8\p | s1 | s2 s\cresc | s1\f\< | s1\ff |
  s1 | s8 s\pp s4\< s\> s\! | s1 | s4. s4\< s4.\> | s4\! s\cresc s2\f | s2 s8 s4.\mf | % 2
  s1\fp | s\fp | s\fp | s1*2 | s2.. s8\pp | s1 | s4 s4.\fp s\cresc |
  s1\mf | s2 s\cresc | s1*2 | s1\f | s2\cresc s\f\> | s1\pp | s |
}

bass = \relative {
  \global
  r2 r4.\fermata c8 | 4. 8 f4 f | g4. 8 c,4 r8 c | 4. 8 bes4 c |
  d4 d g,4.\fermata g'8 | 4. 8 c,4 c' | bes4. 8 ees,4 4 | g4. 8 aes4. a8 | bes4. 8 2\fermata |
  R1 | r8 aes8 8 8 f8. 16 8 e | f4 r r2 | % 2a
  r8 c'8 8 8 aes8. 16 8 g | aes8. 16 8. 16 g8. 16 f8. 16 | ees2->\fermata r8 ees d c |
  f4. r16 aes, g4 4 | aes2->\fermata r8 g f g | aes4. r16 aes g4. 8 | c1-> | % 3a
  R1 | r2\fermata r4. c8 | 4. 8 f8. 16 4 | r8 f ees4. 8 e8. 16 |
  f8. 16 a8 8 g4\fermata r8 g | 4. 8 c,4. c'8 | bes4. 8 ees,4 4 | g4. 8 aes4. a8 | % 4a
  bes4 4 ees,\fermata ees | g4. 8 aes4. 8 | g4 4 c,2 | R1\fermata |
}

wordsBass = \lyricmode {
  Be -- grabt den Leib in sei -- ner Gruft,
  bis ihn des Rich -- ters Stim -- me ruft.
  Wir sä -- en ihn, einst blüht er auf,
  und steigt ver -- klärt zu Gott hin -- auf.
  Grabt mein ver -- wes -- li -- ches Ge -- bein,
  o ihr noch Sterb -- li -- chen nur ein,
  es bleibt, es bleibt im Gra -- be nicht,
  denn Je -- sus kommt und hält Ge -- richt,
  denn Je -- sus kommt und hält Ge -- richt.
  Ach Gott Ge -- o -- pfer -- ter!
  Dein Tod stärk’ uns in uns’ -- rer letz -- ten Noth,
  lass’ uns’ -- rer gan -- ze
  See -- le dein, und freu -- dig un -- ser En -- de sein,
  und freu -- dig un -- ser En -- de sein.
}

pianoRH = \relative {
  \global
  r2 r4.\fermata <c' ees g>8 |
  q4. 8 <c f aes>4 4 |
  <c d g>4~<b d g>8 <d g> <c ees g>4 r8 q |
  q4. <ees g>8 <d g>4 <ees a> |
  <d bes'>4 <c ges'> <bes g'>4.\fermata g'8 | % 1b
  <b, d g>4. <d f g>8 <c ees g>4 <ees g> |
  <d f bes>4. <f aes bes>8 <ees g bes>4 4 |
  <d f b>4. 8 <c ees c'>4 <d f c'>8 <ees ges> |
  <ees g bes>4~<d f bes>8 <c ees> <d f bes>2\fermata |
  r8 <d f>8 8 8 4 8 <e g> | % 2a
  <f aes>8 <aes c> q q <f c'>8. bes16 <f aes>8 <e g> |
  <f aes>8 8 8 8 4 <ees aes>8 <ees g bes> |
  <ees aes c>8 <c ees>8 8 8 <aes ees'>8. des16 <aes c>8 <g bes> | % 2b
  <aes c>8. <ees' aes c>16 <f bes d>8. 16 <ees bes' ees>8. <ees g bes>16 <d aes' b>8. 16 |
  <c g' c>2->\fermata r8 <c g'> <c f> <c ees> |
  <c d aes'>4. r16 <aes c f> <c ees>4 <bes d> | % 3a
  <f c' f>2\fermata r8 <bes c e> <aes c aes'> <bes e g> |
  <f c' f>4. r16 <f c'> <c' d>4~<b d> |
  <g bes>4. <f aes>8 <e g>4 <d f> |
  <c e>8 <g' bes>4 <f aes>8 <e g>4 <d f> | % 3b
  c'2\fermata ~4 r8 <c ees g> |
  q4. 8 <c f aes>8. 16 4 |
  r8 q <ees aes bes>4~8 <des g b> <c g' c>8. <c g' bes>16 |
  <c f aes>8. 16 <c d f>8 8 <b d g>4\fermata r8 g' | % 4a
  <b, d bes'>4. <c ees g>16 <d f> <c ees g>4 <ees f a> |
  <d f bes>4. <ees g bes>16 <f aes> <ees g bes>4 4 |
  <d f b>4. 8 <c ees c'>4~<d f c'>8 <ees ges c> |
  <ees g bes>4 <d f bes> <ees g bes>\fermata <ees g> | % 4b
  <d f b>4. 8 <c ees c'>4~<d f c'>8 <c ees ges> |
  <c ees g>4 <b d g> <g bes>4. <f aes>8 |
  <ees g>4 <d f> <c ees>2\fermata |
}

dynamicsPiano= {
  \override DynamicTextSpanner.style = #'none
  s2..\fp s8\pp | s1*2 | s2 s\cresc | s2..\f s8\p | s1 | s2 s\cresc | s1\f\< | s\ff |
  s2\pp s4\< s\! | s\> s\< s\> s\! | s8 s4.\< s\> s8\! | s s4.\< s8\! s4.\> | s\< s8\! s2\f | s s\mf | % 2
  s1\fp | s\fp | s\fp | s | s\pp | s2.. s8\pp | s1 | s4 s4.\fp s\cresc |
  s1\p | s2 s\cresc | s1*2 | s1\fp | s2\cresc s4\f s\> | s2\pp s\> | s s\! | % 4
}

pianoLH = \relative {
  \global
  <c, c'>2~<c c' ees g c>4 r8 c' |
  c4. 8 <f, f'>4 4 |
  <g g'>4. 8 <c, c'>4 r8 c' |
  <c g'>4. 8 <bes g'>4 <c g'> |
  <d g>4 <d a'> <g, d' g>4.\fermata <g g'>8 | % 1b
  q4. 8 <c g'>4 4 |
  <bes bes'>4. 8 <ees bes'>4 <ees, ees'> |
  <g g'>4. <g, g'>8 <aes aes'>4. <a a'>8 |
  <bes bes'>2 2\fermata |
  bes'4 d8 f bes4 aes8 <g bes c> | % 2a
  <f aes c>8 f, aes c des4 c8 <c, c'> |
  f8 des' f aes des4 c8 <bes des> |
  <aes c>8 aes, c ees fes4 ees8 8 | % 2b
  <aes, ees'>8. <aes aes'>16 8. 16 <g g'>8. 16 <f f'>8. 16 |
  <ees ees'>2\fermata r8 q <d d'> <c c'> |
  <f, f'>4. r16 q <ees ees'>4 4 | % 3a
  <aes aes'>2\fermata r8 <g g'> <f f'> <g g'> |
  <aes aes'>4. r16 <aes f' f'> <g g' g'>2 |
  <c c' c'>1-> |
  q1 | % 3b
  <c c' e>2\fermata ~4 r8 c' |
  c4. 8 <f, f'>8. 16 4 |
  r8 q <ees ees'>4~8 8 <e e'>8. 16 |
  <f f'>8. 16 <aes aes'>8 8 <g g'>4\fermata r8 q | % 4a
  q4. 8 <c, c'>4. <c' c'>8 |
  <bes bes'>4. 8 <ees bes'>4 <ees, ees'> |
  <g g'>4. 8 <aes aes'>4. <a a'>8 |
  <bes bes'>4 4 <ees bes'>\fermata <ees, ees'> | % 4b
  <g g'>4. 8 <aes aes'>4. <aes, aes'>8 |
  <g g'>4 4 <c c' c'>2 |
  <c c'>1\fermata |
}

#(set-global-staff-size 17)

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
            \new Voice \soprano
            \addlyrics \wordsSop
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
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
            \new Voice \soprano
            \addlyrics \wordsSop
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
            \addlyrics \wordsAlto
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
            \addlyrics \wordsTenor
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
%   \unfoldRepeats
%   \articulate
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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
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
            \addlyrics \wordsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \addlyrics \wordsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
%   \unfoldRepeats
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
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
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
  \paper {
    output-suffix = midi-women
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
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
            \new Voice \alto
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
            \new Voice \tenor
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
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

\book {
  \paper {
    output-suffix = midi-men
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
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
            \new Voice \alto
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
            \new Voice \tenor
            \addlyrics \wordsMenMidi
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
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
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
