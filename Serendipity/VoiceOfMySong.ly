\version "2.25.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Voice of My Song"
  subtitle    = "for SAB and Piano"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "David L. Brunner"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Scott P. Lounsbury"
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
  \tempo Moderato 4=68
  s1 |
  \set Score.tempoHideNote = ##t
  s | s | s2 \tempo "rit." 4=60 s |
  \tempo "a tempo" 4=68 s1*4 |
  s1 s4 \tempo "poco rit." 4=64 s2 | % 4a
  \tempo "a tempo" 4=68 s1 | s |
  s1 | s2 s8 \tempo "poco rit." 4=64 s4. |
  \tempo "a tempo" 4=68 s1*8 | % 5
  s1*3 | % 6
  s1*3 | s2 \tempo "rit." 4=60 s2. | % 7
  \unset Score.tempoHideNote
  \tempo Maestoso 4=56 s1 s2 s1 | s | % 8
  \set Score.tempoHideNote = ##t
  s2. \tempo "poco rit." 4=53 s4 | \tempo "a tempo" 4=56 s1 | % 9a
  s2. \tempo "poco rit." 4=53 s4 | \tempo Broadly 4=56 s1 |
  s2 \tempo "rit." 4=53 s2 | % 10a
  \unset Score.tempoHideNote
  \tempo "Più mosso" 4=100 s1*5 |
  \set Score.tempoHideNote = ##t
  s1 | s | s \tempo "rit." 4=90 s2 | \tempo "a tempo" 4=100 s1*3 | % 11
  s1*5 | \tempo "rit." 4=90 s1 | s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*2
  \textMark \markup { \box "3c" } s1*2
  \textMark \markup { \box "4a" } s1 \time 3/4 s2. \time 4/4 
  \textMark \markup { \box "4b" } s1*2
  \textMark \markup { \box "4c" } s1*2
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*2
  \textMark \markup { \box "5c" } s1*2
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1
  \textMark \markup { \box "7a" } s1*2
  \textMark \markup { \box "7b" } s1 \time 5/4 s1 s4 \time 4/4
  \textMark \markup { \box "8a" } s1 \time 2/4 s2 \time 4/4
  \textMark \markup { \box "8b" } s1*2
  \textMark \markup { \box "9a" } s1*2
  \textMark \markup { \box "9b" } s1*2
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "11a" } s1*2 \time 3/2
  \textMark \markup { \box "11b" } s1. \time 4/4 s1*3
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*4 | s1\mp | s | s1 | s |
  s1 | s2. | s1 | s | s\cresc | s2 s\dim | % 4
  s1 | s | s | s | s\mp | s | s | s | % 5
  s1 | s2 s\< | s1\! | % 6
  s1*3 s1 s4 | % 7
  s1 | s2 | s1 | s | % 8
  s1*4 | % 9
  s1*6 | % 10
  s1 | s | s1. | s1 | s | s | % 11
  s1*7 |
}

sopranoJoint = \relative {
  \global
  R1*4
  \tuplet 3/2 {g'8^\markup "Soprano, Alto unison" d g} a4~8 g c b | r g \tuplet 3/2 {c b g} \tuplet 3/2 {c b g} d' g, |
  r8 e \tuplet 3/2 {e c' b} a2 | \tuplet 3/2 {g8 d g} a4~8 g c b |
  r8 g \tuplet 3/2 {c b g} \tuplet 3/2 {c b g} \tuplet 3/2 {d' fis, g} \time 3/4 \tuplet 3/2 {d g g} 2 \time 4/4 \breathe | % 4a
  \tuplet 3/2 {d8 d' c} \tuplet 3/2 {b a g} \tuplet 3/2 {e c' b} a d, \breathe | \tuplet 3/2 {e fis g} \tuplet 3/2 {a d, d} \tuplet 3/2 {d d' c} b g \breathe |
  \tuplet 3/2 {e fis g} \tuplet 3/2 {a d, e} \tuplet 3/2 {fis g a} \tuplet 3/2 {b g d} | \tuplet 3/2 {d' c b} \tuplet 3/2 {g d d} \tuplet 3/2 {d g g} 4 |
  R1*4 | % 5a
  \tuplet 3/2 {g8 d g} a4~8 g c b | r8 g \tuplet 3/2 {c8 b g} \tuplet 3/2 {c b g} \tuplet 3/2 {d' g, g} |
  \tuplet 3/2 {e8 c' b} a2 r4 | \tuplet 3/2 {g8 d g} a4~8 g c b |
  r8 g \tuplet 3/2 {c b g} \tuplet 3/2 {c b g} \tuplet 3/2 {d' fis, g} | \tuplet 3/2 {d g g} 4~2 \time 4/4 | % 6a
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*8 | % 3
  s1 | s2. | s1 | s | s | s | % 4
  s1*8 | % 5
  s1 | s | s\mf | % 6
  s2 s8 s4.\< | s1\! | s1 | s\< s4 | % 7
  s1\f | s2 | s1 | s | % 8
  s1 | s\f | s | s | % 9
  s1 | s | s | s | s | s\f | % 10
  s1 | s | s1. | s1 | s | s | % 11
  s1 | s\f | s | s | s | s | s | % 12
}

sopranoApart = \relative {
  \global
  R1*9
  R2.
  R1*14
  \break
  \tuplet 3/2 {g'8 a bes} \tuplet 3/2 {c f, f} \tuplet 3/2 {f d' c} bes g \breathe | % 6b
  \tuplet 3/2 {g8 a bes} \tuplet 3/2 {c f, f} \tuplet 3/2 {f ees' d} c f, \breathe | \tuplet 3/2 {f g aes} \tuplet 3/2 {bes ees, ees} \tuplet 3/2 {ees c' bes} aes f \breathe | % 7a
  \tuplet 3/2 {f8 c f} \tuplet 3/2 {g8. f16 8} \tuplet 3/2 {d e f} g4 \time 5/4 \breathe | a b <a c> <<\voiceOne d2 \new Voice {\voiceTwo a4(b)}>> \oneVoice \breathe \section \key c \major \time 4/4 |
  \tuplet 3/2 {c8 g c} d2 c8 8 \time 2/4 | \tuplet 3/2 {b g c} \tuplet 3/2 {b g g} \time 4/4 | % 8a
  \tuplet 3/2 {g c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d e f} g4 \breathe | \tuplet 3/2 {g8 c d} \tuplet 3/2 {c g c} \tuplet 3/2 {b g c} \tuplet 3/2 {b g g} |
  \tuplet 3/2 {g c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d g g} c,4 \breathe | \tuplet 3/2 {c'8 d ees} \tuplet 3/2 {d bes bes} \tuplet 3/2 {bes c d} c ees, \breathe | % 9a
  \tuplet 3/2 {c'8 bes aes} \tuplet 3/2 {bes ees, ees} \tuplet 3/2 {ees bes' aes} f g \breathe | \tuplet 3/2 {g c, c} \tuplet 3/2 {g' c c} \tuplet 3/2 {e d c} \tuplet 3/2 {g c c} |\tuplet 3/2 {c8 g c} \tuplet 3/2 {c g c} c a4 c8 | c1~ | 1 | % 10a
  R1 | R | \tuplet 3/2 {g4 c, c} \tuplet 3/2 {g' c c} |
  \tuplet 3/2 {e4 d c} \tuplet 3/2 {g c c} | \tuplet 3/2 {c g c} \tuplet 3/2 {c g c} \time 3/2 | % 11a
  c2 e d \time 4/4 | c1~ | 1 | R |
  R1 | \tuplet 3/2 {f,8 c f} g2 f4 | \tuplet 3/2 {c'8 g c} <a d>2. | % 12a
  r2 c | c c | 1~ | 1\fermata |
}

words = \lyricmode {
  Voice of my song, __ come find me
  come, take me to plac -- es of won -- der,
  of love's laugh -- ter long.
  Voice of my song, __ come, shake me,
  come make me hear beau -- ty in oth -- ers songs
  joined to mine, strong.
  Find in me tunes that are wor -- thy of sing -- ing:
  Rip -- pling of mel -- o -- dies,
  har -- mo -- nies bring -- ing.
  Point me to those who will hear my song ring -- ing
  who'll join with me, cho -- ru -- ses, free in our song.

  Song of my heart, __ come know me,
  come show me the laugh -- ter and joy of the mu -- sic of peace!
  Song of my heart, __ you seek me.
  O find in me mel -- o -- dies old and new,
  o -- pen re -- lease! __
}

wordsMidi = \lyricmode {
  "Voice " "of " "my " "song, "  "come " "find " "me "
  "\ncome, " "take " "me " "to " plac "es " "of " won "der, "
  "\nof " "love's " laugh "ter " "long. "
  "\nVoice " "of " "my " "song, "  "come, " "shake " "me, "
  "\ncome " "make " "me " "hear " beau "ty " "in " oth "ers " "songs "
  "\njoined " "to " "mine, " "strong. "
  "\nFind " "in " "me " "tunes " "that " "are " wor "thy " "of " sing "ing: "
  "\nRip" "pling " "of " mel o "dies, "
  "\nhar" mo "nies " bring "ing. "
  "\nPoint " "me " "to " "those " "who " "will " "hear " "my " "song " ring "ing "
  "\nwho'll " "join " "with " "me, " cho ru "ses, " "free " "in " "our " "song. "

  "\nSong " "of " "my " "heart, "  "come " "know " "me, "
  "\ncome " "show " "me " "the " laugh "ter " "and " "joy " "of " "the " mu "sic " "of " "peace! "
  "\nSong " "of " "my " "heart, "  "you " "seek " "me. "
  "\nO " "find " "in " "me " mel o "dies " "old " "and " "new, "
  "\no" "pen " re "lease! " 
}

wordsSop = \lyricmode {
  Bear me a -- way to the free flight of sing -- ing:
  mead -- ows of mel -- o -- dies, all col -- ors wing -- ing.
  Rev -- el with -- in me the song we are ring -- ing,
  Rain -- bowed hu -- man -- i -- ty, joined in one song,
  joined in one song! __

  Song of my peo -- ple, in -- vite us,
  de -- light us, and teach us to treas -- ure the voice of each one.
  Voice of all peo -- ple in -- spire us,
  de -- sire us to val -- ue the gift, to res -- pect each one's song:
  Course through us now: mu -- sic's pow -- er we're sing -- ing!
  Gone now the dir -- ges to which we've been cling -- ing,
  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Voice of all peo -- ple, Song of my heart,
  Voice of my song! __
}

wordsSopMidi = \lyricmode {
  "Bear " "me " a "way " "to " "the " "free " "flight " "of " sing "ing: "
  "\nmead" "ows " "of " mel o "dies, " "all " col "ors " wing "ing. "
  "\nRev" "el " with "in " "me " "the " "song " "we " "are " ring "ing, "
  "\nRain" "bowed " hu man i "ty, " "joined " "in " "one " "song, "
  "\njoined " "in " "one " "song! " 

  "\nSong " "of " "my " peo "ple, " in "vite " "us, "
  "\nde" "light " "us, " "and " "teach " "us " "to " treas "ure " "the " "voice " "of " "each " "one. "
  "\nVoice " "of " "all " peo "ple " in "spire " "us, "
  "\nde" "sire " "us " "to " val "ue " "the " "gift, " "to " res "pect " "each " "one's " "song: "
  "\nCourse " "through " "us " "now: " mu "sic's " pow "er " "we're " sing "ing! "
  "\nGone " "now " "the " dir "ges " "to " "which " "we've " "been " cling "ing, "
  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nVoice " "of " "all " peo "ple, " "Song " "of " "my " "heart, "
  "\nVoice " "of " "my " "song! " 
}

altoJoint = \relative {
  \global
  R1*4
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*8 | % 3
  s1 | s2. | s1 | s | s | s | % 4
  s1*8 | % 5
  s1 | s | s\mf | % 6
  s2 s8 s4.\< | s1\! | s | s\< s4 | % 7
  s1\f | s2 | s1 | s | % 8
  s1 | s\f | s | s | % 9
  s1 | s | s | s | s | s\f | % 10
  s1 | s | s1. | s1 | s | s | % 11
  s1 | s\f | s | s | s | s | s |
}

altoApart = \relative {
  \global
  R1*9
  R2.
  R1*14
  \tuplet 3/2 {ees'8 f g} \tuplet 3/2 {f f ees} \tuplet 3/2 {d d f} g ees \breathe | % 6b
  \tuplet 3/2 {ees8 fis g} \tuplet 3/2 {f f c} \tuplet 3/2 {ees f g} a f \breathe | % 7a
  \tuplet 3/2 {des ees f} \tuplet 3/2 {g ees des} \tuplet 3/2 {c aes' g} f ees \breathe |
  \tuplet 3/2 {f8 c f} \tuplet 3/2 {g8. f16 8} \tuplet 3/2 {d e f} g4 \breathe \time 5/4 | % 7b
  f4 g f f(g) \time 4/4 \key c \major |
  \tuplet 3/2 {c8 g c} d2 c8 8 \time 2/4 | % 8a
  \tuplet 3/2 {b8 g c} \tuplet 3/2 {b g g} \time 4/4 |
  \tuplet 3/2 {g c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d e f} g4 \breathe | % 8b
  \tuplet 3/2 {g8 c d} \tuplet 3/2 {c g c} \tuplet 3/2 {b g c} \tuplet 3/2 {b g g} |
  \tuplet 3/2 {g c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d g g} c,4 \breathe | % 9a
  \tuplet 3/2 {ees8 f g} \tuplet 3/2 {f d f} \tuplet 3/2 {f e d} e c \breathe |
  \tuplet 3/2 {ees8 d c} \tuplet 3/2 {d e d} \tuplet 3/2 {c d e} e d \breathe | % 9b
  \tuplet 3/2 {d8 c c} \tuplet 3/2 {d e g} \tuplet 3/2 {f g a} \tuplet 3/2 {g e c} |
  \tuplet 3/2 {f8 c f} \tuplet 3/2 {e c g'} f c4 f8 | e1( | f) | % 10a
  R1 | R | \tuplet 3/2 {d4 c c} \tuplet 3/2 {d e g} |
  \tuplet 3/2 {f4 g a} \tuplet 3/2 {g e c} | % 11a
  \tuplet 3/2 {f4 c f} \tuplet 3/2 {e c g'} \time 3/2 |
  f2 2 g \time 4/4 | c,1~ | c | R | % 11b
  R1 | \tuplet 3/2 {f8 c f} g2 f4 | \tuplet 3/2 {f8 c f} f2. | % 12a
  r2 c' | c c | c1~ | c\fermata |
}

wordsAlto = \lyricmode {
  Bear me a -- way to the free flight of sing -- ing:
  mead -- ows of mel -- o -- dies, all col -- ors wing -- ing.
  Rev -- el with -- in me the song we are ring -- ing,
  Rain -- bowed hu -- man -- i -- ty, joined in one song,
  joined in one song! __

  Song of my peo -- ple, in -- vite us,
  de -- light us, and teach us to treas -- ure the voice of each one.
  Voice of all peo -- ple in -- spire us,
  de -- sire us to val -- ue the gift, to res -- pect each one's song:
  Course through us now: mu -- sic's pow -- er we're sing -- ing!
  Gone now the dir -- ges to which we've been cling -- ing,
  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Voice of all peo -- ple, Song of my heart,
  Voice of my song! __
}

wordsAltoMidi = \lyricmode {
  "Bear " "me " a "way " "to " "the " "free " "flight " "of " sing "ing: "
  "\nmead" "ows " "of " mel o "dies, " "all " col "ors " wing "ing. "
  "\nRev" "el " with "in " "me " "the " "song " "we " "are " ring "ing, "
  "\nRain" "bowed " hu man i "ty, " "joined " "in " "one " "song, "
  "\njoined " "in " "one " "song! " 

  "\nSong " "of " "my " peo "ple, " in "vite " "us, "
  "\nde" "light " "us, " "and " "teach " "us " "to " treas "ure " "the " "voice " "of " "each " "one. "
  "\nVoice " "of " "all " peo "ple " in "spire " "us, "
  "\nde" "sire " "us " "to " val "ue " "the " "gift, " "to " res "pect " "each " "one's " "song: "
  "\nCourse " "through " "us " "now: " mu "sic's " pow "er " "we're " sing "ing! "
  "\nGone " "now " "the " dir "ges " "to " "which " "we've " "been " cling "ing, "
  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nVoice " "of " "all " peo "ple, " "Song " "of " "my " "heart, "
  "\nVoice " "of " "my " "song! " 

}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*8 | % 3
  s1 | s2. | s1 | s | s | s | % 4
  s1*8 | % 5
  s1 | s | s\mf | % 6
  s2 s8 s4.\< | s1\! | s | s\< s4 | % 7
  s1\f | s2 | s1 | s | % 8
  s1 | s\f | s | s | % 9
  s1 | s | s | s | s | s\f | % 10
  s1 | s | s1. | s1 | s | s | % 11
  s1 | s\f | s | s | s | s | s |
}

bass = \relative {
  \global
  R1*9 R2. R1*8
  \tuplet 3/2 {g8 d g} a4~8 g c b | r8 g \tuplet 3/2 {c8 b g} \tuplet 3/2 {c b g} \tuplet 3/2 {d' g, g} | % 5b
  \tuplet 3/2 {e8 c' b} a2 r4 | \tuplet 3/2 {g8 d g} a4~8 g c b |
  r8 g \tuplet 3/2 {c b g} \tuplet 3/2 {c b g} \tuplet 3/2 {d' fis, g} | \tuplet 3/2 {d g g} 4~2 \time 4/4 | % 6a
  \tuplet 3/2 {bes8 a g} \tuplet 3/2 {a c c} \tuplet 3/2 {c b a} g ees \breathe |
  \tuplet 3/2 {ees8 f g} \tuplet 3/2 {a bes a} \tuplet 3/2 {g c bes} a f | % 7a
  \tuplet 3/2 {aes g f} \tuplet 3/2 {g aes bes} \tuplet 3/2 {ees, f g} aes aes \breathe |
  R1 \time 5/4 |
  \tuplet 3/2 {a8 f a} \tuplet 3/2 {b8. a16 g8} \tuplet 3/2 {a b c} d2 \section \time 4/4 \key c \major |
  \tuplet 3/2 {c8 g c} d2 c8 8 \time 2/4 | \tuplet 3/2 {b g c} \tuplet 3/2 {b g g} \time 4/4 | % 8a
  \tuplet 3/2 {g8 c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d e f} g4 \breathe | % 8b
  \tuplet 3/2 {g8 c d} \tuplet 3/2 {c g c} \tuplet 3/2 {b g c} \tuplet 3/2 {b g g} |
  \tuplet 3/2 {g8 c, a'} \tuplet 3/2 {g f e} \tuplet 3/2 {d g g} c,4 \breathe | % 9a
  \tuplet 3/2 {aes'8 bes c} \tuplet 3/2 {bes bes aes} \tuplet 3/2 {g aes bes} aes ees \breathe |
  \tuplet 3/2 {f8 g aes} \tuplet 3/2 {g bes bes} \tuplet 3/2 {aes bes c} c b \breathe | % 9b
  \tuplet 3/2 {d c g} \tuplet 3/2 {e g c} \tuplet 3/2 {a b c} \tuplet 3/2 {c g c} |
  \tuplet 3/2 {a8 b c} \tuplet 3/2 {c g e} d f4 g8 | <c, c'>1~ | 1 | % 10a
  R1 | R | \tuplet 3/2 {d'4 c g} \tuplet 3/2 {e g c} |
  \tuplet 3/2 {a4 b c} \tuplet 3/2 {c g c} | \tuplet 3/2 {a b c} \tuplet 3/2 {c g e} \time 3/2 | % 11a
  <d a'>2 <a' c> b \time 4/4 | c1~ | c | R |
  R1 | \tuplet 3/2 {f,8 c f} g2 f4 | \tuplet 3/2 {a8 c a} c2. | % 12a
  r2 c | c c | c1~ | c\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  \repeat unfold 42 \skip 1
  Bear me a -- way to the free flight of sing -- ing:
  mead -- ows of mel -- o -- dies, all col -- ors wing -- ing.
  Rev -- el with -- in me the song we are ring -- ing,
  Rain -- bowed hu -- man -- i -- ty, joined in one song! __

  Song of my peo -- ple, in -- vite us,
  de -- light us, and teach us to treas -- ure the voice of each one.
  Voice of all peo -- ple in -- spire us,
  de -- sire us to val -- ue the gift, to res -- pect each one's song:
  Course through us now: mu -- sic's pow -- er we're sing -- ing!
  Gone now the dir -- ges to which we've been cling -- ing,
  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Join us in grand cel -- e -- bra -- tion,
  we're ring -- ing in joy of hu -- man -- i -- ty,
  joined now in song! __

  Voice of all peo -- ple, Song of my heart,
  Voice of my song! __
}

wordsBassMidi = \lyricmode {
  "Song " "of " "my " "heart, "  "come " "know " "me, "
  "\ncome " "show " "me " "the " laugh "ter " "and " "joy " "of " "the " mu "sic " "of " "peace! "
  "\nSong " "of " "my " "heart, "  "you " "seek " "me. "
  "\nO " "find " "in " "me " mel o "dies " "old " "and " "new, "
  "\no" "pen " re "lease! " 
  "\nBear " "me " a "way " "to " "the " "free " "flight " "of " sing "ing: "
  "\nmead" "ows " "of " mel o "dies, " "all " col "ors " wing "ing. "
  "\nRev" "el " with "in " "me " "the " "song " "we " "are " ring "ing, "
  "\nRain" "bowed " hu man i "ty, " "joined " "in " "one " "song! " 

  "\nSong " "of " "my " peo "ple, " in "vite " "us, "
  "\nde" "light " "us, " "and " "teach " "us " "to " treas "ure " "the " "voice " "of " "each " "one. "
  "\nVoice " "of " "all " peo "ple " in "spire " "us, "
  "\nde" "sire " "us " "to " val "ue " "the " "gift, " "to " res "pect " "each " "one's " "song: "
  "\nCourse " "through " "us " "now: " mu "sic's " pow "er " "we're " sing "ing! "
  "\nGone " "now " "the " dir "ges " "to " "which " "we've " "been " cling "ing, "
  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nJoin " "us " "in " "grand " cel e bra "tion, "
  "\nwe're " ring "ing " "in " "joy " "of " hu man i "ty, "
  "\njoined " "now " "in " "song! " 

  "\nVoice " "of " "all " peo "ple, " "Song " "of " "my " "heart, "
  "\nVoice " "of " "my " "song! " 
}

pianoRHone = \relative {
  \global
  \tuplet 3/2 {g'8 d d'} a2 g4 |
  \tuplet 3/2 {g8 d d'} g,2 a4 |
  \tuplet 3/2 {g8 d d'} a2 g4 |
  \tuplet 3/2 {g4 c, g'} <c, d>2 |
  \tuplet 3/2 {g'8 d g} a4~8 g c b | % 3b
  r8 g \tuplet 3/2 {c b g} \tuplet 3/2 {c b g} d' g, |
  r8 e \tuplet 3/2 {e c' b} \voiceOne a2 \oneVoice | % 3c
  \tuplet 3/2 {<b, g'>8 d g} <c, g' a>4~8 g' <d fis c'> b' |
  <c, e g>2 \tuplet 3/2 {<c e c'>8 b' g} d g \time 3/4 | % 4a
  <c, d>8 g' <b, d g>2 \time 4/4 |
  \tuplet 3/2 {d8 d' c} \tuplet 3/2 {<e, g b> a g} \tuplet 3/2 {<c, e> c' b} <fis a> d | | % 4b
  \tuplet 3/2 {<c e> fis g} <c, d fis a>4 \tuplet 3/2 {d8 d' c} <e, g b> g |
  \tuplet 3/2 {<c, e> fis g} \tuplet 3/2 {<fis a> <d d'> e} \tuplet 3/2 {<d fis d'> g a} <d, b'> g | % 4c
  <c, e>8 g' <b, g'> d \tuplet 3/2 {<c d> g' g} <a, b d g>4 |
  \tuplet 3/2 {g'8 d d'} a2 g4 | % 5a
  \tuplet 3/2 {<d g>8 c d'} g,2 a4 |
  \tuplet 3/2 {<d, g>8 d d'} a2 g4 |
  \tuplet 3/2 {<c, g'>4 g c} <g c e> <a c d> |
  <a b d g>2 c4 d | <c e> <c g'> <c e a> <d fis b> | % 5b
  <e g c>4 <c e g> <g' c e> <fis a d> | <b e g> <a d fis> <e g c d>2 |
  <c e g>4 c' <e, e'> <d fis d'> | <c d g c> <b d b'> <a c> <b d> \time 4/4 | % 6a
  \tuplet 3/2 {<ees g>8 a bes} \tuplet 3/2 {<f c'> f f} \tuplet 3/2 {f d' c} bes g |
  \tuplet 3/2 {<ees g> a bes} \tuplet 3/2 {<d, f c'> f f} \tuplet 3/2 {<ees f> <f ees'> d'} <a c> <f f'> | % 7a
  <f aes des f>4 <g bes ees>8 ees <ees aes ees'> c' <f, aes> des |
  <c f a>4 c8 f \tuplet 3/2 {<d a'> e f} <c f g>4 \time 5/4 | % 7b
  <c f a>4 <d g b> <c f a c> \voiceOne <f d'>2 \section \key c \major \time 4/4 |
  \oneVoice \tuplet 3/2 {<d c'>8 g c} <e, d'>2 c'8 g' \time 2/4 | % 8a
  <g, c d>4 <d b'>8 g \time 4/4 |
  <g a>8 c, <b g'> c a <c g'> <a c d> <a c f g> | % 8b
  <g d'>8 c g' c <fis, g b> e d g |
  <b, g'>4 \tuplet 3/2 {<a g'>8 f' e} <a, c d> g' \voiceOne c4 \oneVoice | % 9a
  <ees, aes c>8 <aes c ees> <f bes d> <d f bes> q <f bes d> <c ees c'>4 |
  \tuplet 3/2 {<c ees c'>8 bes' aes} \tuplet 3/2 {<d, f bes> ees ees} \tuplet 3/2 {<c ees> bes' aes} <c ees f> <bes d g> | % 9b
  <d, g>8-- <c c'>-- q-- <g' e'>-- <a e'>-- <b g'>-- <g c g'>-- <c, c'>-- |
  <c f c'>8-- g'-- <g c f>-- e'-- <a,, c f>-- <f' a f'>-- <c' f c'>-- <a c g'>-- | % 10a
  <g g'>4-- <c c'>2-- 4 | <d b'> <b g'> q <g c> |
  <d g>4 e2 <d c'>4 | <g b> c, <f g> d | <c f g> c2 g'4 | % 10b
  <f c' e>2-- <g c e g>-- | <g a c f g>-- <g c d e g>-- \time 3/2 | % 11a
  <f a c f>2-- <a c f a>-- <d g b d>-- \time 4/4 | % 11b
  <c c'>4 <f, c' g'> q <c f c'> |
  <d g>4 c g' c |
  <b g'>4 <g e'> q <e c'> |
  <d g>4 c e g | <c, f g>1 | 4 c' g' f | % 12a
  <d c'>1~ | q | r4 <a d fis>4 <d fis a> <fis a d> | <e g e'>2 \clef bass <c,, e g>\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*6 |
  s2 <c' e>4 <d fis> | s1 | % 3c
  s1 | s2. | s1*14 |
  s1*4 | s2. <a' c>4 <g b> | % 7b+
  s1 | s2 | s1*2 |
  s2. d8 <c e> | s1 | % 9a
  s1*10 | s1. | s1*10 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s | s | s |
  s1*5 | s2. | s1*2 |
  s1\cresc | s2 s\dim | % 4b
  s1\mp | s1*5 |
  s4 s2.\< | s2\> s\! | % 5b
  s1 | s2 s\< | s1\mf | % 6
  s2 s8 s4.\< | s1\! | % 7a
  s1 | s\< s4 |
  s1\f | s2 | s1 | s | % 8
  | s1 | s\f | s | s | % 9
  s1 | s | s | s | s | s\f | % 10
  s1 | s | s1. | s1 | s | s | % 11
  s1*7 |
}

pianoLH = \relative {
  \global
  g,4 d' a' b | c,, g' e' c' | b, fis' b d | <a, g'> e' <<{\voiceOne g fis} \new Voice {\voiceTwo d2}>> |
  \oneVoice g,4 d' a' b | <c,, g' e'> g'' a b |
  <a, e' c'>2 <d, d'> | <e b' g'>4 <a g'> <e' c'> <fis b> |
  g2 <a, e' g>4 <b fis' b> \time 3/4 | <c g'>8 e <g, d' g>2 \time 4/4 | % 4a
  <b fis'>8 a' \tuplet 3/2 {<e b'> c' d} <a, e'> g' <d fis> a' | % 4b
  <c, g'>4 <c a'> <b fis' a> <e b'> |
  <c, g' e'>8 g'' <fis, d' a>4 <b fis' a> <e, b' g'> | % 4c
  <a e' g>4 <b g'> <c g'>8 e <g, d' g>4 |
  e8 b' fis' g a b c d | % 5a
  <c,, e'>8 g' e' g a b c e |
  b,8 g' fis' e d c b a |
  <a, g'>4 e' <d, d'>2 |
  g4 d' a' b | <c,, g' e'> g'' a b | % 5b
  <a, e' c'>2 <d, d'> | e8 b' g' d' <c, g' c>2 | % 5c
  <a e' g>2. <b fis b>4 | <c g'> <g d' g>~2 | % 6a
  <ees' g bes>4 <ees a c> <d bes' c> <ees g bes a> |
  <c g' bes>4 \tuplet 3/2 {<d a'>8 bes' a} <ees g bes>4 <f a c>8 <f, f'> | % 7a
  <des aes' des>8 <f' aes des> <des g bes>4 <c ees bes'>8 aes' <des, f aes>4 |
  <c f a>8 <c, c'> c'' a <d, f a>4 g8 g, \time 5/4 | % 7b
  <g, g'>8 d''~8 g~8 d <g, g'>4 <g, g'> \section \time 4/4 \key c \major |
  <c g' e'>4 g'' c g' | \time 2/4 e,,8 b' g' b \time 4/4 | % 8a
  <f, c' a'>4 <e b' g'> <d a' f'> g8 g, | <c, c'>8 g''' d' e e,, b' g' c |
  f,,8 c' f4 <d f>8 g, <c, g' e'>4 | <aes'' c>4 <aes, aes'> <g bes'> <aes aes'>8 ees' | % 9a
  <f, c' aes'>4 <g d' bes'> <aes ees' aes> <bes aes'>8 <bes, bes'> | % 9b
  <c g' e'>4-- <e b' g'>-- <f c' a'>-- <g e' g>-- |
  <a f' a>4-- <g e' g>-- <d a' f'>-- <g, g'>8-- <g'' d' f>-- | % 10a
  <c,, g' e'>4-- g'' d' <c g'> | <f,, c' a'>4\arpeggio c'' d2 |
  <c,, g' e'>4 g'' c b | <f, c' a'>1 | <g, g'>4 g'' c a | % 10b
  <g a c e>4 <g,, g'> <g'' c d> <g,, g'> | % 11a
  <g'' c d f>4 <g,, g'> <g'' e'> <c,, c'> \time 3/2 |
  <d a' f'>4-- e''-- <d f>-- a-- <g, d' b'>-- <g, g'>-- \time 4/4 | % 11b
  <f f'>1 | <c' g' e'>4 g'' c e | f,, c' a' c |
  <c,, g'>4 e' g c | <f,, c' a'>2 g'4 c | a \clef treble d f g | % 12a
  a1~ | a \clef bass | <c,,,, c'>4 \clef treble fis''' a d | <c, g' c>2 \clef bass <c,, g'>\fermata |
  \bar "|."
}

#(set-global-staff-size 20)

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
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
            \addlyrics \wordsAlto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
%   \articulate
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
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
            \addlyrics \wordsAlto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-bass"
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
%   \articulate
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = women} {\teeny \dynamicsWomen}
            \new Voice \partCombine \sopranoJoint \altoJoint
            \new NullVoice \sopranoJoint
            \addlyrics {\tiny \words}
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoApart
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
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
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi-sop"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \addlyrics \wordsMidi
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "midi-alto"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \addlyrics \wordsMidi
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
            \addlyrics \wordsAltoMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
  \bookOutputSuffix "midi-bass"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \sopranoApart
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \sopranoJoint
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoApart
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
