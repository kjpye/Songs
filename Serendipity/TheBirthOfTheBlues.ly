\version "2.24.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Birth of the Blues"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ray Henderson"
  arranger    = "Arr. Carl Strommen"
%  opus        = "opus"

  poet        = "B. G. DeSylva & Lew Brown"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
}

drumPitchNames.cc = #'crashcymbal
drumPitchNames.uk = #'bass
#(define mystyle
  '((crashcymbal cross   #f 1)
    (bass        default #f 0)
  ))

midiDrumPitches.bass = des

DrumTrack = \drummode {
  s1*16
  cc4^\markup "Susp. Cymbal" 8 8 4 8 8
  \repeat percent 11 {cc4 8 8 4 8 8}
  cc4 8 8 4 8 8^\markup "L.V." (
  R1 | R) | R |
  \repeat percent 6 {cc4 8 8 4 8 8}
  cc4 4 4 4 | 4\fermata 4\fermata 4\fermata 4\fermata |
  \repeat percent 4 \repeat unfold 4 \tuplet 3/2 {cc8 8 8} | % 8a
  <uk cc>4 8. 16 8. 16 8. 16 | cc4^\markup "L.V."( s2. |
  R1) | \repeat unfold 4 \tuplet 3/2 {<uk cc>8 8 8} % 9a
  \repeat percent 2 \repeat unfold 4 \tuplet 3/2 {cc8 8 8} | % 9b
  \tuplet 3/2 {cc8 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {<uk cc>4-> 4-> 4->} | % 9c
  <uk cc>4 8. 16 8. 16 8. 16 |
  cc4 4 4 8 8^\markup "L.V." ( |
  R1 | R) | \tuplet 3/2 {<uk cc>8_\p_\< 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {8 8 8\f} | % 10a
  \repeat percent 2 {cc4 <uk cc>8-> cc8 4 <uk cc>8-> cc8} | % 10b
  cc4 4 \tuplet 3/2 {<uk cc>4-> 4-> 4->} | 4 8. 16 8. 16 8. 16 | % 10c
  cc8. 16 8. 16 8. 16 8 8^\markup "L.V." ( | R1 | % 11a
  cc4) <uk cc>8-> cc8 4 <uk cc>8-> cc8 | 4 8 8 4 8 8 |
  <uk cc>8 r r4 r2 | r2 r4 \repeat tremolo 4 cc16\fermata
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Slowly and freely (ad lib. tempo)" 4=90
  s1*16
%  \set Score.tempoHideNote = ##f
  \tempo "Easy, relaxed swing" 4=78 % 5b
  s1*7
  s4 \tempo 4=90 s2.^\markup\italic "a tempo" % 6a
  s1*14
  \tempo 4=80 s1^\markup\italic rit. | s1  % 7c
  \tempo 4=90 s1^\markup\italic "a tempo" % 8a
  s1*25
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "3a" } s1*2
  \textMark \markup { \box \bold "3b" } s1*3
  \textMark \markup { \box \bold "4a" } s1*3
  \textMark \markup { \box \bold "4b" } s1*3
  \textMark \markup { \box \bold "4c" } s1*2
  \textMark \markup { \box \bold "5a" } s1*3
  \textMark \markup { \box \bold "5b" } s1*3
  \textMark \markup { \box \bold "5c" } s1*3
  \textMark \markup { \box \bold "6a" } s1*3
  \textMark \markup { \box \bold "6b" } s1*3
  \textMark \markup { \box \bold "6c" } s1*3
  \textMark \markup { \box \bold "7a" } s1*3
  \textMark \markup { \box \bold "7b" } s1*3
  \textMark \markup { \box \bold "7c" } s1*3
  \textMark \markup { \box \bold "8a" } s1*2
  \textMark \markup { \box \bold "8b" } s1*2
  \textMark \markup { \box \bold "8c" } s1*2
  \textMark \markup { \box \bold "9a" } s1*2
  \textMark \markup { \box \bold "9b" } s1*2
  \textMark \markup { \box \bold "9c" } s1*3
  \textMark \markup { \box \bold "10a" } s1*3
  \textMark \markup { \box \bold "10b" } s1*2
  \textMark \markup { \box \bold "10c" } s1*2
  \textMark \markup { \box \bold "11a" } s1*2
  \textMark \markup { \box \bold "11b" } s1*2
  \textMark \markup { \box \bold "11c" } s1*2
}

ChordTrack = \chordmode {
  R1 | s |
  s1 | s2 aes:7 | g:6.7 aes:7 |
  g2:7.6 aes4:7 g:9 | R1 | s | % 4a
  s1*3 |
  s1 | g2:7.6 aes:7 |
  g2:7.6 aes4:7 g:9 | R1 | s | % 5a
  c2:maj7 cis4.:dim7 d8:m7 | s2 b4./dis e8:m7 | s2 e4.:7 f8:maj7 |
  s2 d:7/fis | g2 a4:m7 ais8:dim7 g/b | s1 |
  c1 | s4 e:m/f ees:m/e d:m/ees | c2:maj7 cis4.:dim7 d8:m7 | % 6a
  s2 b4./dis e8:m7 | s2 e4.:7 f8:maj7 | s2 d:7/f |
  g2 a4:m7 ais8:dim7 g/b | s1 | c1 |
  s2 r | b:7 b:m7.5- | e:7 b:m7.5- | % 7a
  e2 fis:m7 | g:dim7 e/gis | a b:m7.5- |
  c2:dim7 cis:m6 | a:m7 d:9 | g4:6.9 r ges:7-.13 f:7-.13 |
  c2 cis:dim7 | d:m7 b:7/dis | % 8a
  e2:m7 e:7 | f d:7/fis |
  c2 a4:m7 ais:dim7  g1/b |
  e1:sus/b | e:7 | % 9a
  f1 | fis:dim7 |
  c2 \tuplet 3/2 {s4 b bes} | a4 r2. | s1 |
  s1 | s1 | f/g | % 10a
  f1 | fis:dim7 |
  a2:m7/g \tuplet 3/2 {c4 b bes} | a4 r2. |
  d4:m7 a:m/e f fis8:dim g:7 | s1 | % 11a
  f2:7/c a4.:m/e f8:7 | s4 fis2:dim s8 r |
  s1 | s |
}

dynamicsWomen = {
  s1\mp  | s |
  s1*14 |
  s1\mp | s | s | % 5b
  s1*27 |
  s1\cresc | s2. s4\f | % 9a
  s1*5 |
  s1 | s1\> | s2.\p s4\f | % 10a
  s1*8 |
}

soprano = \relative {
  \global
  c''1~ | 8\fermata g^\markup\italic unis. a g a g a g |
  c,1~ | 8\fermata c d c ees c ees c | g'2 ees8 c ees c |
  g'4. c,8 ees c d4 | c f(e) d | e8\fermata g a g bes g b g | % 4a
  c1~ | 8 g a g a g a g | c,1~ |
  c8\fermata c d c ees c ees c | g'2 ees8 c ees c |
  g'2 ees8 c d4 | c1^\markup\italic unis. ~ | 4\fermata g'\fermata ges\fermata f\fermata | % 5a
  \tripletFeel 8 {
    e2 a4 g8 f~ | 2 b4 a8 g~ | 2 c4 b8 a~ |
    a2 d4 c | b2 2~ | 4 4 8 c d4 |
    c1~ | 4 g ges f | e2 a4 g8 f~ | % 6a
    f2 b4 a8 g~ | 2 c4 b8 a~ | 2 d4 c |
    b2 2~ | 4 4 8 c d4 | c1~ |
    c2 b8 c d dis | e2 d8 b d b~ | 2 d8 b d b~ | % 7a
    b2 b~ | b r | R1 |
    R1 | R | r4\fermata g\fermata^\markup\italic unis. ges \fermata f\fermata |
  }
  e4.-> a8->~4 g8 f->~ | 4. b8->~4 a8 g->~ | % 8a
  g2 e'8(d) d c~ | 2 d4-.-> c-.-> |
  b4.-> 8->~2~ | 4 8 8~8 c d e~ |
  e1~ | 2. c8^\markup\italic unis. (a)  % 9a
  c8 8 r4 r r8 a | c8 8 r4 r d8(c) |
  e2 \tuplet 3/2 {e4-> ees-> d->} | cis2. c8 a | c8 8~2. |
  r4 g8(gis) a c a c~ | 1~ | 2. a4 | % 10a
  c4.-> 8->~4 a-> | c4.-> 8->~4 c-> |
  e2 \tuplet 3/2 {e4-> ees-> d->} | cis1 |
  f4-> e-> c-> a8->^\markup\italic unis. g->~ | 4 8(gis) a c c c~ | % 11a
  c4 ees-> c8-> a4-> e'8->~ | 4 c8 a~4 8 g |
  R1 | r2 r4 c\fermata
  \bar "|."
}

wordsSopAbove = \lyricmode {
  Oh __ "" \repeat unfold 24 \skip 1
  can, as __ they can.
  _ _ _ _ _ _ _
  so __ "" \repeat unfold 45 \skip 1
  blues. __ "" \repeat unfold 20 \skip 1 % 6a
  blues. __ ""
  \repeat unfold 88 \skip 1 % 7a
}

words = \lyricmode {
  _
  they say some peo -- ple long a -- go __
  were search -- ing for a dif -- f'rent tune;
  one that they could croon as on -- ly thay can. __
  They on -- ly had the rhy -- thm so
  the rhy -- thm so they start -- ed sway -- ing to and fro. __
  They did -- n't know just what to use.
  That is how the blues real -- ly be -- gan. __
  They heard the breeze in the trees __
  sing -- ing weird __ mel -- o -- dies __
  and they made that __ the start of the \set associatedVoice = alignerA blues,
  start of the blues.
  And from a jail came the wail __
  of a down -- heart -- ed frail, __
  and the played that __ as part of the blues,
  of the blues.
  From a whip -- poor -- will, high on a hill, __
  they took a new __ \set associatedVoice = alignerT note. __
  Pushed it through a horn 'til it was worn __ in -- to a blue __ note.
  And then they nursed it, re -- hearsed __ it, __
  and gave __ out __ the news __ that the South -- land __
  gave birth __ to the blues! __
  They __ nursed it, re -- hearsed it,
  and __ gave, gave out the \set associatedVoice = alignerS news
  that the South -- land __
  gave __ birth to the blues! __
  They nursed it, __ re -- hearsed it, __
  and gave, gave out the news
  that the South -- land \set associatedVoice = alignerS gave, __
  gave __ birth to the blues! __
  They nursed it, re -- hearsed it, __
  the blues!
  Blues!
}

alto = \relative {
  \global
  r4 e'(g f | e8\fermata) g a g a g a g
  c,1~ | 8\fermata c d c c c c c | e2 c8 8 8 8 |
  e4. c8 8 8 b4 | c1~ | 8\fermata g' a g bes g b g | % 4a
  e4 g f ees | e8 g a g a g a g | c,1~ |
  c8\fermata c d c c c c c | e2 c8 8 8 8 |
  e2 c8 8 b4 | c1~ | 4\fermata e\fermata ees\fermata d\fermata | % 5a
  \tripletFeel 8 {
    b2 e4 8 c~ | 2 dis4 8 d~ | 2 4 8 e~ |
    e2 a4 4 | g2 2~ | 4 4 8 8 4 |
    e4 g f d | e e ees d | b2 e4 8 c~ | % 6a
    c2 dis4 8 d~ | 2 4 8 e~ | 2 a4 4 |
    g2 2~ | 4 4 8 8 4 | e2 g4 f |
    e2 g8 a b a | gis2 b8 g b g~ | 2 b8 gis b gis~ | % 7a
    gis2 gis~ | 2 r | R1 |
    R1 | R | r4\fermata g\fermata ges\fermata f\fermata
  }
  e4.-> a8->~4 g8 f->~ | 4. b8->~4 a8 g->~ | % 8a
  g2 e4 8 f~ | 2 a4-.-> a-.-> |
  g4.-> 8->~2~ | 4 8 8~8 a b a~( |
  a1 | gis2.) c8(a) | % 9a
  c8 8 r4 r r8 a | c c r4 r d8(c) |
  g2 \tuplet 3/2 {g4-> ges-> f->} | e2. c8 a | c8 8~2. |
  r4 g'8(gis) a c a c~ | 1~ | 2. a4 | % 10a
  a4.-> 8->~4 4-> | a4.-> 8->~4 4-> |
  g2 \tuplet 3/2 {4-> ges-> f->} | e1 |
  a4-> 4-> 4->  8-> g->~ | 4 8(gis) a c c c~ | % 11a
  c4 a-> 8-> 4-> 8->~ | 4 8 8~4 8 g |
  R1 | r2 r4 g\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Oo __
}

dynamicsMen = {
  s1\mp  | s |
  s1*14 |
  s1\mp | s | s | % 5b
  s1*27 |
  s1\cresc | s2. s4\f | % 9a
  s1*5 |
  s1 | s | s4 s2\< s4\f | % 10a
  s1*8 |
}

tenor = \relative {
  \global
  c'1~ | 8\fermata r e4(ees d |
  c2) b4 a | g8\fermata c d c bes8 8 8 8 | b2 bes8 8 8 8 |
  b4. bes8 8 8 a4 | c1~ | 8\fermata g^\markup\italic unis. a g bes g b g | % 4a
  c4 e c c | 8 r e4(ees d | c b a) b8 a |
  g8\fermata c d c bes8 8 8 8 | b2 bes8 8 8 8 |
  b2 bes8 8 a4 | g bes a aes | g\fermata b\fermata bes\fermata a\fermata  % 5a
  \tripletFeel 8 {
    g2 bes4 8 a~ | 2 b4 8 8~ | 2 gis4 b8 c~ |
    c2 d4 4 | 2 2~ | 4 b b8 c d4 |
    c1~ | 4 b bes a | g2 bes4 8 a~ | % 6a
    a2 b4 8 8~ | 2 gis4 b8 c~ | 2 d4 4 |
    d2 2~ | 4 b4 8 c d4 | c1~ |
    c2 r | R1 | R | % 7a
    R1 | r2 b8 c d dis | e2 cis8^\markup\italic unis. a cis a~ |
    a2 cis8 a cis a~ | 1 | a4\fermata g\fermata ges\fermata f\fermata |
  }
  e4.-> a8->~4 g8 f->~ | 4. b8->~4 a8 g->~ | % 8a
  g2 gis4 8 a~  2 d4-.-> d-.-> |
  d4.-> 8->~2~ | 4 b8 8~8 c d d~ |
  d1~ | 2. c4^\markup\italic unis. | % 9a
  c8 8 r4 r r8 a | c8 8 r4 r d8(c) |
  e2 \tuplet 3/2 {e4-> ees-> d->} | cis2. r4 | d,4->^\markup\italic unis. e-> f-> fis8-> g~ |
  g2 r | R1 | \override NoteHead.style = #'cross d4^\markup\italic "shout!" 8 8~4 \revert NoteHead.style a'4 | % 10a
  c4.-> 8->~4 4-> | 4.-> 8->~4 4-> |
  e2 \tuplet 3/2 {4-> ees-> d->} | cis1 |
  d4-> e-> f-> fis8-> g->~ | 2 r | % 11a
  c,2-> e-> | f4. fis8~4 8 g |
  R1 | r2 r4 d4\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Oo __
}

bass = \relative {
  \global
  r4 g(b a | g8\fermata) r c4(b bes |
  a2) g4 f | e8\fermata e f e ges ges ges ges | f2 ges8 8 8 8 |
  f4. ges8 8 8 f4 | e a(g) f | g8\fermata g a g bes g b g | % 4a
  g4 bes a aes | g8\fermata r c4(b bes | a g f) g8 f |
  e8\fermata e f e ges8 8 8 8 | f2 ges8 8 8 8 |
  f2 ges8 8 f4 | e g f f | e\fermata f\fermata e\fermata ees\fermata | % 5a
  \tripletFeel 8 {
    c2 cis4 8 d~ | 2 dis4 8 e~ | 2 4 8 f~ |
    f2 fis4 4 | g2 2~ | 4 4 8 a b4 |
    g4 b a f | g f e ees | c2 cis4 8 d~ | % 6a
    2 dis4 8 e~ | 2 4 8 f~ | 2 fis4 4 |
    g2 2~ | 4 4 8 a b4 | c2 b4 a |
    g2 r | R1 | R | % 7a
    R1 | r2 b8 a b c | cis2 8 a cis a~ |
    a2 cis8 a cis a~ | 1 | a4\fermata g\fermata ges\fermata f\fermata |
  }
  e4.-> a8->~4 g8 f->~ | 4. b8->~4 a8 g->~ | % 8a
  g2 gis4 8 a~ | 2 fis4-.-> 4-.-> |
  g4.-> 8->~2~  4 8 8~8 a b b~( |
  b1 | e,2.) c'4 | % 9a
  c8 8 r4 r r8 a | c c r4 r d8(c) |
  c2 \tuplet 3/2 {4-> ces-> bes->} | a2. r4 | d,4-> e-> f-> fis8-> g->~ |
  g2 r | R1 | \override NoteHead.style = #'cross d4^\markup\italic "shout!" 8 8~4 \revert NoteHead.style a'4 | % 10a
  f4.-> 8->~4 4-> | fis4.-> 8->~4 4-> |
  g2 \tuplet 3/2 {g4-> g-> f->} | e1 |
  d4-> e-> f-> fis8-> g->~ | 2 r | % 11a
  c,2-> e-> | f4. fis8~4 8 g |
  R1 | r2 r4 a\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Oo __ Oo __ long a -- go
  \repeat unfold 17 \skip 1 can, as __ they can.
  \repeat unfold 12 \skip 1 Oo __ to and fro.
  \repeat unfold 15 \skip 1 be -- gan, real -- ly be -- gan. % 5a
  \repeat unfold 21 \skip 1 blues, start of the blues, % 6a
  \repeat unfold 21 \skip 1 blues, of the blues. % 7a
  \repeat unfold 48 \skip 1 that the South -- land gave __
  \markup\italic One \markup\italic more \markup\italic time! __ % 10a
  \repeat unfold 17 \skip 1 They nursed, re -- hearsed __ the blues! % 11b
}

wordsMidiSop = \lyricmode {
  "Oo " 
  "\nthey " "say " "some " peo "ple " "long " a "go " 
  "\nwere " search "ing " "for " "a " dif "f'rent " "tune; "
  "\none " "that " "they " "could " "croon " "as " on "ly " "thay " "can. " 
  "\nas " "they " "can. "
  "\nThey " on "ly " "had " "the " rhy "thm " "so "
  "\nthey " start "ed " sway "ing " "to " "and " "fro. " 
  "\nThey " did "n't " "know " "just " "what " "to " "use. "
  "\nThat " "is " "how " "the " "blues " real "ly " be "gan. " 
  "\nThey " "heard " "the " "breeze " "in " "the " "trees " 
  "\nsing" "ing " "weird "  mel o "dies " 
  "\nand " "they " "made " "that "  "the " "start " "of " "the " "blues. " % 6a
  "\nAnd " "from " "a " "jail " "came " "the " "wail " 
  "\nof " "a " down heart "ed " "frail, " 
  "\nand " "the " "played " "that "  "as " "part " "of " "the " "blues. "
                                % 7a
  "\nFrom " "a " whip poor "will, " "high " "on " "a " "hill, " 
  "\nthey " "took " "a " "new "  "note. " 
  "\nAnd " "then " "they " "nursed " "it, " re "hearsed "  "it, " 
  "\nand " "gave "  "out "  "the " "news "  "that " "the " South "land " 
  "\ngave " "birth "  "to " "the " "blues! " 
  "\nThey "  "nursed " "it, " re "hearsed " "it, "
  "\nand "  "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " 
  "\ngave "  "birth " "to " "the " "blues! " 
  "\nThey " "nursed " "it, "  re "hearsed " "it, " 
  "\nand " "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " "gave, " 
  "\ngave "  "birth " "to " "the " "blues! " 
  "\nThey " "nursed " "it, " re "hearsed " "it, " 
  "\nthe " "blues! "
  "\nBlues! "
}


wordsMidiAlto = \lyricmode {
  "Oo " 
  "\nthey " "say " "some " peo "ple " "long " a "go " 
  "\nwere " search "ing " "for " "a " dif "f'rent " "tune; "
  "\none " "that " "they " "could " "croon " "as " on "ly " "thay " "can. " 
  "\nThey " on "ly " "had " "the " rhy "thm " "so "
  "\nthe " rhy "thm " "so " "they " start "ed " sway "ing " "to " "and " "fro. " 
  "\nThey " did "n't " "know " "just " "what " "to " "use. "
  "\nThat " "is " "how " "the " "blues " real "ly " be "gan. " 
  "\nThey " "heard " "the " "breeze " "in " "the " "trees " 
  "\nsing" "ing " "weird "  mel o "dies " 
  "\nand " "they " "made " "that "  "the " "start " "of " "the " "blues, "
  "\nstart " "of " "the " "blues. "
  "\nAnd " "from " "a " "jail " "came " "the " "wail " 
  "\nof " "a " down heart "ed " "frail, " 
  "\nand " "the " "played " "that "  "as " "part " "of " "the " "blues, "
  "\nof " "the " "blues. "
  "\nFrom " "a " whip poor "will, " "high " "on " "a " "hill, " 
  "\nthey " "took " "a " "new "  "note. " 
  "\nAnd " "then " "they " "nursed " "it, " re "hearsed "  "it, " 
  "\nand " "gave "  "out "  "the " "news "  "that " "the " South "land " 
  "\ngave " "birth "  "to " "the " "blues! " 
  "\nThey "  "nursed " "it, " re "hearsed " "it, "
  "\nand "  "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " 
  "\ngave "  "birth " "to " "the " "blues! " 
  "\nThey " "nursed " "it, "  re "hearsed " "it, " 
  "\nand " "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " "gave, " 
  "\ngave "  "birth " "to " "the " "blues! " 
  "\nThey " "nursed " "it, " re "hearsed " "it, " 
  "\nthe " "blues! "
  "\nBlues! "
}


wordsMidiTenor = \lyricmode {
  "Oo "  "Oo, "  "long " a "go "
  "\nwere " search "ing " "for " "a " dif "f'rent " "tune; "
  "\none " "that " "they " "could " "croon " "as " on "ly " "thay " "can. " 
  "\nThey " on "ly " "had " "the " rhy "thm " "so "
  "\nthe " rhy "thm " "so " "Oo "  "to " "and " "fro. "
  "\nThey " did "n't " "know " "just " "what " "to " "use. "
  "\nThat " "is " "how " "the " "blues " real "ly " be "gan, "
  "\nreal" "ly " be "gan. "
  "\nThey " "heard " "the " "breeze " "in " "the " "trees " 
  "\nsing" "ing " "weird "  mel o "dies " 
  "\nand " "they " "made " "that "  "the " "start " "of " "the " "blues. "
  "\nAnd " "from " "a " "jail " "came " "the " "wail " 
  "\nof " "a " down heart "ed " "frail, " 
  "\nand " "the " "played " "that "  "as " "part " "of " "the " "blues. "
  "\nPushed " "it " "through " "a " "horn " "'til " "it " "was " "worn "  in "to " "a " "blue "  "note. "
  "\nAnd " "then " "they " "nursed " "it, " re "hearsed "  "it, " 
  "\nand " "gave "  "out "  "the " "news "  "that " "the " South "land " 
  "\ngave " "birth "  "to " "the " "blues! " 
  "\nThey "  "nursed " "it, " re "hearsed " "it, "
  "\nand "  "gave, " "gave " "out " "the " "news "

  "\nthat " "the " South "land "  "gave "
  "\nshout: One " "more " "time! " 
  "\nsing: They " "nursed " "it, "  re "hearsed " "it, " 
  "\nand " "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " "gave, " 
  "\nThey " "nursed, " re "hearsed, " 
  "\nthe " "blues! "
  "\nBlues! "
}

wordsMidiBass = \lyricmode {
  "Oo "  "Oo, "  "long " a "go "
  "\nwere " search "ing " "for " "a " dif "f'rent " "tune; "
  "\none " "that " "they " "could " "croon " "as " on "ly " "thay " "can, " 
  "\nas " "they " "can. "
  "\nThey " on "ly " "had " "the " rhy "thm " "so "
  "\nthe " rhy "thm " "so " "Oo "  "to " "and " "fro. "
  "\nThey " did "n't " "know " "just " "what " "to " "use. "
  "\nThat " "is " "how " "the " "blues " real "ly " be "gan, "
  "\nreal" "ly " be "gan. "
  "\nThey " "heard " "the " "breeze " "in " "the " "trees " 
  "\nsing" "ing " "weird "  mel o "dies " 
  "\nand " "they " "made " "that "  "the " "start " "of " "the " "blues, "
  "\nstart " "of " "the " "blues. "
  "\nAnd " "from " "a " "jail " "came " "the " "wail " 
  "\nof " "a " down heart "ed " "frail, " 
  "\nand " "the " "played " "that "  "as " "part " "of " "the " "blues, "
  "\nof " "the " "blues. "
  "\nPushed " "it " "through " "a " "horn " "'til " "it " "was " "worn "  in "to " "a " "blue "  "note. "
  "\nAnd " "then " "they " "nursed " "it, " re "hearsed "  "it, " 
  "\nand " "gave "  "out "  "the " "news "  "that " "the " South "land " 
  "\ngave " "birth "  "to " "the " "blues! " 
  "\nThey "  "nursed " "it, " re "hearsed " "it, "
  "\nand "  "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land "  "gave "
  "\nshout: One " "more " "time! " 
  "\nsing: They " "nursed " "it, "  re "hearsed " "it, " 
  "\nand " "gave, " "gave " "out " "the " "news "
  "\nthat " "the " South "land " "gave, " 
  "\nThey " "nursed, " re "hearsed, " 
  "\nthe " "blues! "
  "\nBlues! "
}

pianoRHone = \relative {
  \global
  c''1~ | 8\fermata g a g a g a g |
  c,1~ | 8\fermata c d c <c ees> c ees c | <b e g>2 <c ees> |
  <b e g>4. c8 <c ees>4 <a b d> | r f' e d | <c e>8\fermata g' a g bes g b g | % 4a
  <g c>1~ | 8 g a g a g a g | c,1~ |
  c8\fermata c d c <bes c ees>2 | <b e g> <bes c ees> |
  <b e g>2 <bes c ees>4 <a b d> | c1~ | 4\fermata <e g>\fermata <ees ges>\fermata <d f>\fermata | % 5a
  <b e>2 <e a>4 <e g>8 <c f>~ | 2 <dis fis b>4 <dis fis a>8 <d g>~ | 2 <d fis c>4 <d g b>8 <c e a>~ |
  q2 <a' d>4 <a c> <b, g'> q <c g'> <cis g'>8 <d g>~ | 1 |
  c'1~ | 4 <e, g> <ees ges> <d f> | <b e>2 <e a>4 <e g>8 <c f>~ | % 6a
  q2 <dis fis b>4 <dis fis a>8 <d g>~ | 2 <d gis c>4 <d gis b>8 <c e a>~ | 2 <a' d>4 <a c> |
  <b, g'>4 4 <c g'> <cis g'>8 <d g>8~ | 1 | c'1~ |
  c2 b,8 c d dis | <gis, e'>2 <a d> | <gis e'> <a d> | % 7a
  <gis e'>4 4 <a e'> q | <ais e'>4 4 <b e> q | <cis a'> q <d a'> q |
  <dis a'>4 4 <e a> q | <c e a>2 2 | <b e a>4\fermata <b e g>\fermata <bes ees ges>\fermata <a d f>\fermata |
  \repeat unfold 2 \tuplet 3/2 {<g c e>8 q q} \repeat unfold 2 \tuplet 3/2 {<g bes cis e> q q} | % 8a
  \tuplet 3/2 {<a c d f>8 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {<a b dis fis> q q} \tuplet 3/2 {q q q} |
  \tuplet 3/2 {<b d e g>8 8 8} \tuplet 3/2 {8 8 8} \tuplet 3/2 {<b d e gis> q q} \tuplet 3/2 {8 8 8} | % 8b
  \tuplet 3/2 {<c f a>8 8 8} \tuplet 3/2 {q q q} \tuplet 3/2 {<c d fis a> q q} \tuplet 3/2 {8 8 8} |
  <b g'>4 8. 16 <c g'>8. 16 <cis g'>8. 16 | <b d g>1 |
  \repeat unfold 4 \tuplet 3/2 {<a b e>8 8 8} | % 9a
  \repeat unfold 4 \tuplet 3/2 {<gis b d e>8 8 8}
  \repeat unfold 4 \tuplet 3/2 {<f' a c>8 8 8} | % 9b
  \repeat unfold 4 \tuplet 3/2 {<ees fis a c>8 8 8} |
  \tuplet 3/2 {<g c e>8 8 8} \tuplet 3/2 {q q q} \tuplet 3/2 {<g e'>4-> <ges ees'>-> <f d'>->} | % 9c
  <e cis'>4-> a8.-> 16-> aes8.-> 16-> g8.-> 16-> |
  d4-> e-> f-> fis8-> g8-> ~ |
  g1 | R | \repeat unfold 4 \tuplet 3/2 {<f, a c>8 8 8} | % 10a
  \repeat unfold 4 \tuplet 3/2 {<f' a c>8 8 8} |
  \repeat unfold 4 \tuplet 3/2 {<ees fis a c>8 8 8} |
  \tuplet 3/2 {<e g a c>8 8 8} \tuplet 3/2 {q q q} \tuplet 3/2 {<g e'>4-> <ges ees'>-> <f d'>->} | % 10c
  <e cis'>4-> a8.-> 16-> aes8.-> 16-> g8.-> 16-> |
  <a c f>4-> <a c e>-> <f a c>-> a8-> <d, f g>->~ | 1 | % 11a
  r4 <f ees'>4-> <a c>8-> a4-> <a e'>8->~ | % 11b
  q4 <a c>8 a~4 8 g |
  \tuplet 3/2 {r8 <c c'> <ees c'>} \tuplet 3/2 {<e c'> <f c'> <fis c'>} \tuplet 3/2 {<g c> <c, c'> <ees c'>} \tuplet 3/2 {e c g} | % 11c
  <f c'>8. <d c'>16 <ees c'>8. <e c'>16~2\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  r4 e'4 g f | e8\fermata s2.. |
  s1*3 |
  \partCombineApart s1 | c1 | s | % 4a
  s1*14 |
  e4 g f d | s1 | s | % 6a
  s1*3 |
  s1 | s | r4 e g f | % 6c
  e2 s2 | s1 | s | % 7a
  s1*32 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*37 |
  s1 | s-\markup\italic rit. | s4 s2.\mf |
  s1-\markup\italic "a tempo" | s | % 8a
  s1*4 |
  s1\cresc | s | % 9a
  s1*5 | s1 | s | s2...\pp\< s16\f | % 10a
  s1*10 |
}

pianoLH = \relative {
  \global
  r4_\markup "Drums tacet until meas. 17" g b a | <e c'>8\fermata r <c' e >4 <b ees> <bes d> |
  a2 <g b>4 <f a> | <e g>8 <e c'> <f d'> <e c'> <ges bes>8 8 8 8 | <f b>2 <ges bes>8 8 8 8 |
  <g, f'>4. r8 <aes ges'>4 <g f'> | e' a g f | e8\fermata g a g bes g b g | % 4a
  <g c e>4 <bes e> <a f'> <aes ees'> | % 4b
  <g e'>8\fermata r <c e>4 <b ees> <bes d> |
  a4 <g b> <f a> <g b>8 <f a> |
  <e g>8\fermata r r4 <aes, ges'>2 | <g f'> <aes ges'> | % 4c
  <g f'>2 <aes ges'>4 <g f'> | % 5a
  <e' g>4 <g bes> <f a> <f aes> |
  <e g>4\fermata <g b>\fermata <e bes'>\fermata <ees a>\fermata |
  <c g'>2 <cis bes'>4 8 <d a'>~ | 2 <dis b'>4 8 <e b'>~ | 2 e4 8 f~ | % 5b
  f2 <fis d'>4 4 | g, g a ais8 b~ | 1 | % 5c
  g'4 b a f | <e c'> <g b> <e bes'> <bes a> | <c g'>2 <cis bes'>4 8 <d a'>~ | % 6a
  q2 <dis b'>4 8 <e b'>~ | 2 e4 8 f~ | 2 <fis d'>4 4 |
  g,4 4 a a8 b~ | 1 | r4 g' b a |
  <g c>2 r | <e, e'>2 <f f'> | <e e'> <f f'> | % 7a
  <e e'>4 4 <fis fis'> q | <g g'> q <gis gis'> q | <a a'> q <b b'> q |
  <c c'>4 q <cis cis'> q | <a g'>2 <d fis> | <g f'>4\fermata 4\fermata <aes e'>\fermata <f ees'>\fermata |
  <c, c'>2 <cis cis'> | <d d'> <dis dis'> | % 8a
  <e e'>2 2 | <f f'> <fis fis'> |
  g4 8. 16 a8. 16 ais8. 16 | b1 |
  b2-> b,-> | e' e, | % 9a
  <f f'>2.-> 4-> | <fis fis'>2. 4 |
  <g g'>2 \tuplet 3/2 {<c c'>4-> <b b'>-> <bes bes'>->} | % 9c
  <a a'>4-> 8.-> 16-> <aes aes'>8.-> 16-> <g g'>8.-> 16-> |
  <d d'>4-> <e e'>-> <f f'>-> <fis fis'>8-> <g g'>-> ~ |
  q1 | R | \repeat unfold 4 \tuplet 3/2 {g8 8 8} | % 10a
  <f f'>2.-> 4-> | <fis fis'>2.-> 4-> |
  <g g'>2 \tuplet 3/2 {<c c'>4-> <b b'>-> <bes bes'>->} | % 10c
  <a a'>4-> 8.-> 16-> <aes aes'>8.-> 16-> <g g'>8.-> 16-> |
  <d d'>8.-> 16-> <e e'>8.-> 16-> <f f'>8.-> 16-> <fis fis'>8 <g g'>~ | 1 | % 11a
  <c, c'>2 <e e'> | <f f'>4. <fis fis'>8~4 8 <g g'> |
  R1 | r2 r4 <a' d>4\fermata |
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
            \new Lyrics \with{alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
            \new Lyrics \with{alignBelowContext = women} \lyricsto alignerA \words
            \new Lyrics \with{alignBelowContext = women} \lyricsto alignerA \wordsAlto
            \new Lyrics \with{alignAboveContext = men}   \lyricsto alignerT \wordsTenor
            \new Lyrics \with{alignBelowContext = men}   \lyricsto alignerB \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \layout {
      #(layout-set-staff-size 18)
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
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
            \new Lyrics \with{alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
            \new Lyrics \with{alignBelowContext = women} \lyricsto alignerA \words
            \new Lyrics \with{alignBelowContext = women} \lyricsto alignerA \wordsAlto
            \new Lyrics \with{alignAboveContext = men}   \lyricsto alignerT \wordsTenor
            \new Lyrics \with{alignBelowContext = men}   \lyricsto alignerB \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \layout {
      #(layout-set-staff-size 18)
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMidiBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
        >>
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \midi {}
  }
}
