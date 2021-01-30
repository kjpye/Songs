\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ol' Man River"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerome Kern"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key c \major
  \time 2/4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  s2*6
  s4 \tempo 4=55 s
  s2 \time 4/4
  s1*34
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "5a" }s2*4
  \mark \markup { \circle "5b" }s2*4 \time 4/4
  \mark \markup { \circle "6a" }s1*4
  \mark \markup { \circle "6b" }s1*4
  \mark \markup { \circle "6c" }s1*4
  \mark \markup { \circle "7a" }s1*4
  \mark \markup { \circle "7b" }s1*4
  \mark \markup { \circle "7c" }s1*3
  \mark \markup { \circle "8a" }s1*4
  \mark \markup { \circle "8b" }s1*4
  \mark \markup { \circle "8c" }s1*3
}

soprano = \relative {
  \global
  \oneVoice
  \tempo Lento 4=60
  R2*8 \time 4/4 \voiceOne
  g'2^\pp a % 6a
  g2 c
  g2 a
  g2 b
  a2 a % 6b
  g2 a4 a
  c2 \oneVoice r
  R1
  R1 % 6c
  r2. r8 \voiceOne d,^\p
  e4 g a8 g4 a8
  c4 c b8 a4 b8
  cis4 cis c8 c4 c8 % 7a
  c4 c b8 a4 a8
  c2.^\< e8^\mf (d)
  f4 c b8 b dis4
  e2 e4^\mp c % 7b
  d4. f8 e4 c
  d2 e8. e16 c4
  d8. d16 f4 e c
  d2 c4 a % 7c
  b2 c4 a
  b2 c8. c16 a8. a16
  b4 d8. d16 c4^\> a % 8a
  g1^\p~
  g4 \oneVoice r2.
  R1
  r2. r8 \voiceOne d'^\mf % 8b
  e4 e d8 c4 d8
  e4 e d8 c d4
  c1~
  c1^\>~ % 8c
  c1~
  c2.^\p \oneVoice r4
  \bar "|."
}

wordsSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  lon' __
}

wordsSopMidi = \lyricmode {
  "Ol' " "man " riv "er " "mus' " "know " sump "in' "
  "\nJust " "keeps " rol "lin' " a "lon'. "

  "\nAn' " "dem " "dat " "plant " "'em " "is " "soon " for got "ten, "
  "\nBut " "Ol' " "man " riv "er, "
  "\nHe " "jes' " "keeps " rol "lin' " a "lon'. "
  "\nHe "  "keeps " "on " rol "lin' " a "lon'. "
  "\nYou " "an' " "me " "we " "sweat " "an' " "strain, "
  "\nBo" "dy " "all " ach "in' " "an' " "racked " "wid " "pain " 
  "\n\"Tote " "dat " "barge!\" "
  "\n\"Lift " "dat " "bale!\" "
  "\nGit " "a " lit "tle " "drunk " "an' " "you'll " "land " "in " "jail. " 

  "\nBut " "ol' " "man " Ri "ver, "
  "\nhe " "jes' " "keeps " rol "lin' " a "lon'. " 
}

alto = \relative {
  \global
  s2*8 \time 4/4
  e'2\omit\pp e % 6a
  e2 f
  e2 e
  e2 g
  e2 fis % 6b
  e2 f4 f
  e2 s
  s1
  s1 % 6c
  s2. s8 d\omit\p
  c4 c e8 c4 c8
  e4 e g8 e4 e8
  e4 e fis8 fis4 fis8 % 7a
  e4 e d8 f4 d8
  e2.\omit\< a4 g4\omit\mf a g8 g fis4
  g2 g4\omit\mp e % 7b
  f4. a8 g4 e
  f2 g8. g16 e4
  f8. f16 a4 g e
  f4(g) e c % 7c
  d2 e4 c
  d2 e8. e16 c8. c16
  d4 g8. g16 f4\omit\> c % 8a
  c1\omit\p~c4 s2.
  s1
  s2. s8 a'\omit\mf % 8b
  gis4 g fis8 f4 g8
  gis4 a b8 a a(b)
  g2.(a4)
  aes2\omit\> f % 8c
  aes2 f4 f
  g2.\omit\p s4
  \bar "|."
}

wordsAlto = \lyricmode {
  Ol' man riv -- er mus' know sump -- in'
  Just keeps rol -- lin' a -- lon'.

  An' dem dat plant 'em is soon for -- got -- ten,
  But Ol' man riv -- er,
  He jes' keeps rol -- lin' a -- lon'.
  He __ keeps on rol -- lin' a -- lon'.
  You an' me we sweat an' strain,
  Bo -- dy all ach -- in' an' racked wid pain __
  "\"Tote" dat "barge!\""
  "\"Lift" dat "bale!\""
  Git a lit -- tle drunk an' you'll land in jail. __

  But ol' man Ri -- ver,
  he jes' keeps rol -- lin' a -- lon'. __
  jes' keeps rol -- lin' a -- lon'.
}

wordsAltoMidi = \lyricmode {
  "Ol' " "man " riv "er " "mus' " "know " sump "in' "
  "\nJust " "keeps " rol "lin' " a "lon'. "

  "\nAn' " "dem " "dat " "plant " "'em " "is " "soon " for got "ten, "
  "\nBut " "Ol' " "man " riv "er, "
  "\nHe " "jes' " "keeps " rol "lin' " a "lon'. "
  "\nHe "  "keeps " "on " rol "lin' " a "lon'. "
  "\nYou " "an' " "me " "we " "sweat " "an' " "strain, "
  "\nBo" "dy " "all " ach "in' " "an' " "racked " "wid " "pain " 
  "\n\"Tote " "dat " "barge!\" "
  "\n\"Lift " "dat " "bale!\" "
  "\nGit " "a " lit "tle " "drunk " "an' " "you'll " "land " "in " "jail. " 

  "\nBut " "ol' " "man " Ri "ver, "
  "\nhe " "jes' " "keeps " rol "lin' " a "lon'. " 
  "\njes' " "keeps " rol "lin' " a "lon'. "
}

tenor = \relative {
  \global
  g16^\p^\markup "TENOR SOLO" f e8 e g16 f
  e8 g a c
  g16 f e8 e g16 f
  e8 c d4
  e16 d c8 c e16 d % 5b
  c8 c d f
  e16 d c8 c^\markup \italic rit. e16 d
  c8 d c4 \bar "||" \time 4/4
  \voiceOne c'2^\pp c % 6a
  c2 a
  c2 c
  c2 b
  cis2 c % 6b
  c2 b4 b
  c2 r
  s2. s8 g^\p
  g4 g a8 c4 a8 % 6c
  g4 g a8 c4 s8
  s1
  s2. s8 b
  a4 a a8 a4 a8 % 7a
  c4 c b8 b4 b8
  c2.\< d4\mf
  d4 f e8 e b4
  e2 r4 r8 c8^\mp % 7b
  b4 g a2
  b8. b16 g4 a8. a16 c4
  b4 g a2 % 7c
  g4 e fis2 g4 e fis2
  g8. g16 e8. e16 fis4 a8. a16
  g4 e d2\<( % 8a
  e1\!)~
  e4 r r r8 d^\p
  e4 g^\< a8 g4 a8
  c4 c d8 c4 e8^\mf % 8b
  d4 cis c8 c4 b8
  b4 c8(e) f e f4
  e2.(fis4)
  f2^\> d % 8c
  ees2 d4 d
  e2.^\p s4
  \bar "|."
}

wordsTenor = \lyricmode {
  Dere's an ol' man called the Mis -- sis -- sip -- pi,
  Dat's de ol' man dat I'd like to be:
  What does he care if de world's got trou -- bles?
  What does he care if de land ain't free?
  Ol' man riv -- er mus' know sump -- in'
  Just keeps rol -- lin' a -- lon'.

  we sweat an' strain,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  land in jail.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  jes' keeps rol -- lin' a -- lon'
}

wordsTenorMidi = \lyricmode {
  "Dere's " "an " "ol' " "man " "called " "the " Mis sis sip "pi, "
  "\nDat's " "de " "ol' " "man " "dat " "I'd " "like " "to " "be: "
  "\nWhat " "does " "he " "care " "if " "de " "world's " "got " trou "bles? "
  "\nWhat " "does " "he " "care " "if " "de " "land " "ain't " "free? "

  "\nOl' " "man " riv "er " "mus' " "know " sump "in' "
  "\nJust " "keeps " rol "lin' " a "lon'. "

  "\nHe " "don't " "plant " 'ta "ters, "
  "\nHe " "don't " "plant " cot "ton, "
  "\nBut " "Ol' " "man " riv "er, "
  "\nHe " "jes' " "keeps " rol "lin' " a "lon'. "
  "\nHe "  "keeps " "on " rol "lin' " a "lon'. "

  "\nwe " "sweat " "an' " "strain, "
  "\nBo" "dy " "all " ach "in' " "an' " "racked " "wid " "pain. "
  "\n\"Tote " "dat " "barge!\" "
  "\n\"Lift " "dat " "bale!\" "
  "\nGit " "a " lit "tle " "drunk " "an' " "you'll " "land " "in " "jail. " 

  "\nAh'm " "tired " "of " liv "in' " "an' " "scared " "of " dy "in': "
  "\nBut " "ol' " "man " Riv "er, "
  "\nhe " "jes " "keeps "  rol "lin' " a "lon' " 
  jes' keeps rol -- lin' a -- lon'.
}

bass = \relative {
  \global
  s2*8 \time 4/4
  \voiceTwo g,4\omit\p_\markup \italic {\dynamic p con sentimento} g a8 c4 a8% 6a
  g4 g a8 c4 d8
  e4 e d8 c4 d8
  e4 g a8 g4 a8
  g4 g e8 d4 e8 % 6b
  g4 g e8 d4 e8
  c2. r4
  \oneVoice r2. r8 \voiceTwo g
  g4 g a8 c4 a8 % 6c
  g4 g a8 c4 \oneVoice r8 R1
  r2. r8 \voiceTwo b'8
  g4 g e8 d4 e8 % 7a
  g4 g e8 d4 e8
  c2.\omit\< c'4\omit\mf
  b4 g g8 g r4
  b4_\mp g a4. c8 % 7b
  b4 g a2
  b8. b16 g4 a8. a16 c4
  b4 g a2
  g4 e fis2 % 7c
  g4 e fis2
  g8. g16 e8. e16 fis4
  a8. a16
  g4 e d4(g,8) r % 8a
  g4_\p g a8 c4 a8
  g4 g a8 c4 b8
  c4 e\omit\< f8 e4 f8
  fis4 g gis8 a4 b8\omit\mf % 8b
  bes4 a a8 aes4 g8
  f4 fis g8 fis g4
  c1~
  c1\omit\>~ % 8c
  c1~
  c2.\omit\p r4
  \bar "|."
}

wordsBass = \lyricmode {
  Ol man riv -- er, dat ol' man riv -- er,
  He mus' know sump -- in',
  But don't say noth -- in',
  He just keeps rol -- lin',
  He keeps on rol -- lin' a -- lon'.

  He don't plant 'ta -- ters,
  He don't plant cot -- ton,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  You an' me we sweat an' strain
  Bo -- dy all ach -- in' an' racked wid pain.
  "\"Tote" dat "barge!\""
  "\"Lift" dat "bale!\""
  Git a lit -- tle drunk an' you'll land in jail. __
  Ah gits wea -- ry an sick of try -- in'
  Ah'm tired of liv -- in' an' scared of dy -- in':
  But ol' man Riv -- er,
  he jes keeps __ rol -- lin' a -- lon' __
}

wordsBassMidi = \lyricmode {
  "Ol " "man " riv "er, " "dat " "ol' " "man " riv "er, "
  "\nHe " "mus' " "know " sump "in', "
  "\nBut " "don't " "say " noth "in', "
  "\nHe " "just " "keeps " rol "lin', "
  "\nHe " "keeps " "on " rol "lin' " a "lon'. "

  "\nHe " "don't " "plant " 'ta "ters, "
  "\nHe " "don't " "plant " cot "ton, "

  "\nBut " "Ol' " "man " riv "er, "
  "\nHe " "jes' " "keeps " rol "lin' " a "lon'. "
  "\nHe " "keeps " "on " rol "lin' "

  "\nYou " "an' " "me " "we " "sweat " "an' " "strain "
  "\nBo" "dy " "all " ach "in' " "an' " "racked " "wid " "pain. "
  "\n\"Tote " "dat " "barge!\" "
  "\n\"Lift " "dat " "bale!\" "
  "\nGit " "a " lit "tle " "drunk " "an' " "you'll " "land " "in " "jail. " 
  "\nAh " "gits " wea "ry " "an " "sick " "of " try "in' "
  "\nAh'm " "tired " "of " liv "in' " "an' " "scared " "of " dy "in': "
  "\nBut " "ol' " "man " Riv "er, "
  "\nhe " "jes " "keeps "  rol "lin' " a "lon' " 
}

pianoRH = \relative {
  \global
  \tempo Lento 4=60
  <g' c e>4\omit\p <g c g'>
  <g c e>4 <a c a'>
  <g c e>4 <g c g'>
  <fis a e'>4 <f b d>
  <e a c>4 <e g c> % 5b
  <c f a>4 <c f c'>
  <c e c'>4 s
  <c a'>8 <f b> <e c'>4
  <e, g c>2 <e a c e> % 6a
  <e g c>2 <f c' f>
  <e g c> <a c e>
  <e g c>2 <e g b e>
  <e g cis>2 <d fis c'> % 6b
  <c g' c>2 <b' f' a>
  <e c'>4\omit\<(<e g e'> <g cis g'> <c fis c'>
  <b d b'>4\omit\mf <a c f>\omit\> <g b e> <f b d>)
  <e, g c>2\omit\p <e a c e> % 6c
  <e g c>2 <f c' f>
  <e g c>2 <e a c e>
  <e g c>2 <e g b e>
  <e g cis>2 <d fis c'> % 7a
  <c g' c> <b' f' a>
  <e c'>4\omit\<(<e g e'> <g cis g'> <c fis c'>
  <b d b'>4\omit\mf <a c f> <g b e>\omit\> <a b dis>)
  <g b e>2\omit\mp s % 7b
  <f a d>2 s
  <a d f>2 s
  <f a d>2 s
  <d g d'>2 s % 7c
  q2 s
  <d g b>2 s
  <b' d b'>2 s % 8a
  s1
  s4 r2.
  R1
  R1 % 8b
  R1
  R1
  <e, c'>4\omit\p\omit\<(<e g e'> <g cis g'> <c fis c'>
  <c f c'>4\omit\mf <aes c aes'> <f a f'> <f a d>) % 8c
  <f' c' f>4(<c f c'>\omit\> <aes c aes'> <f aes f'>
  <g c e g>2.\omit\p) r4
%  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s2*6
  s4 c''8\omit\p^\markup \italic "rit. colla voce" b % 5b++
  s2 \bar "||" \key c \major
  s1*16
  s2 <e e'>\omit\mp % 7b
  s2 <a a'>
  s2 <e e'>
  s2 <a a'>
  s2 <e e'> % 7c
  s2 <a a'>
  s2 <e c'>
  s2 <f, a f'>\omit\> % 8a
  <c' e>1\omit\p~
  q4 s2.
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2*6
  s4 d'\omit\p % 5b++
  s2 \bar "||" \key c \major
  s1*16
  s2 d''16\omit\mp c8.~4 % 7b
  s2 \ottava #1 g'16 e8.~4 \ottava #0
  s2 d16 c8.~4
  s2 \ottava #1 g'16 e8.~4 \ottava #0
  s2 c16 a8.~4 % 7c
  s2 \ottava #1 fis'16 e8.~4 \ottava #0
  s2 fis,16 e8.~4
  s2 d16\omit\> c8.~4 % 8a
  <e, g>1\omit\p~
  q4 s2.
  s1
  s1 % 8b
  s1
  s1
  s1
  s1 % 8c
  s1
  s1
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2-\markup \italic {\dynamic p arpegg.}
  s2*7 \time 4/4
  s1-\markup \italic {\dynamic p arpegg.} % 6a
  s1*5
  s1\< % 6b++
  s4\mf s2.\>
  s1\p % 6c
  s1*5
  s1\< % 7a++
  s2\mf s\>
  s1\!-\markup \italic {\dynamic mp pesante}
  s1*6
  s2 s\> % 8a
  s1\p
  s1*5
  s1\p\< % 8b+++
  s1\mf % 8c
  s4 s2.\>
  s1\p
}

pianoLH = \relative {
  \global
  \oneVoice
  <c g' c>4\omit\p <e c' e>
  <c g' c>4 <f c' f>
  <g c e>4 <e b' e>
  <d fis c'>4 <g, d' g>
  <a e' a>4 <g e' g> % 5b
  <f c' f>4 <d b' d>
  <g e' g>4 <gis e' gis>
  <d' fis>8 <g, g'> <c g'>4 \bar "||" \time 4/4
  <c, g' c>2 <a c' a> % 6a
  <c g' c>2 <a f' a>
  <c g' c>2 <a e' a>
  <c g' c>2 <b g' b>
  <a c' a>2 <a b a'> % 6b
  <g e' g>2 <g' d' g>
  <c g' c>4\omit\< b' bes <a e'>
  <g f'>4\omit\mf <g, g'>2.\omit\>
  <c, g' c>2\omit\p <a e' a> % 6c
  <c g' c>2 <a f' a>
  <c g' c>2 <a c' a>
  <c g' c>2 <b g' b>
  <a e' a>2 <a b a'> % 7a
  <g e' g> <g' d' g>
  <c g' c>4\omit\< b' bes << {\voiceOne e8 c} \new Voice {\voiceTwo a4} >>
  \oneVoice <g f'>4\omit\mf <g, g'>2 <fis fis'>4\omit\>
  <e e'>2\omit\mp s % 7b
  <g g'>2 s
  <e e'>2 s
  <g g'>2 s
  <e e'>2 s % 7c
  <b b'>2 s
  <g' g'>2 s
  <g' e' g>2 s % 8a
  <c, c'>1~
  q4 r2.
  R1
  R1 % 8b
  R1
  R1
  <c g' c>4\omit\p\omit\< b' bes <a e'>
  <aes f'>4\omit\mf <f d'> <d c'> <f c'> % 8c
  <ees' c'>4 <d aes'>\omit\> <f, d'> <d c'>
  <c g' c>2.\omit\p r4
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  s2*8 \time 4/4
  s1*16
  s2 <c' e>2\omit\mp % 7b
  s2 a'
  s2 <c, e>
  s2 a'
  s2 <fis a> % 7c
  s2 a
  s2 a
  s2 <d,, d'>\omit\> % 8a
  s1\omit\p
  s1*9
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s2*8 \time 4/4
  s1*16
  s2 b16\omit\mp a8.~4 % 7b
  s2 g'16 e8.~4
  s2 b16 a8.~4
  s2 g'16 e8.~4
  s2 e16 c8.~4 % 7c
  s2 fis16 e8.~4
  s2 e16 c8.~4
  s2 d16\omit\> a8.~4 % 8a
  s1\omit\p
  s1*9
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = "sopabove"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
          \context Lyrics = "sopabove" { \lyricsto soprano \wordsSop }
                                % Joint tenor/bass staff
          \new Lyrics = tenorlyrics
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" \tenor
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto bass \wordsBass
          >>
          \context Lyrics = tenorlyrics { \lyricsto tenor \wordsTenor }
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
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
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Lyrics \lyricsto soprano \wordsSopMidi
          >>
          \new Staff <<
            \new Voice = "alto"    { \voiceTwo \alto    }
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
          \new Staff <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto tenor \wordsTenorMidi
          >>
          \new Staff <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto bass \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
%            \new Lyrics \lyricsto soprano \wordsSopMidi
          >>
          \new Staff <<
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
          \new Staff <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto tenor \wordsTenorMidi
          >>
          \new Staff <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto bass \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
%            \new Lyrics \lyricsto soprano \wordsSopMidi
          >>
          \new Staff <<
            \new Voice = "alto"    { \voiceTwo \alto    }
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
          \new Staff <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto tenor \wordsTenorMidi
          >>
          \new Staff <<
            \clef "bass"
            \new Voice = "bass" \bass
%            \new Lyrics \lyricsto bass \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
%            \new Lyrics \lyricsto soprano \wordsSopMidi
          >>
          \new Staff <<
            \new Voice = "alto"    { \voiceTwo \alto    }
%            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
          \new Staff <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
%            \new Lyrics \lyricsto tenor \wordsTenorMidi
          >>
          \new Staff <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto bass \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
