\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "September Song"
  subtitle    = \markup{from \italic "Knickerbocker Holiday"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Kurt Weil"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Maxwell Anderson"
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
  \tempo "Moderato assai" 4=120
  \set Score.tempoHideNote = ##t
  s1*39 |
  s4 \tempo 4=110 s2. | s1 | \tempo 4=120
  s1*45 |
  \tempo 4=110 | s1 | s8 \tempo 4=30 s \tempo 4=110 s2. \tempo 4=120 | % 149b+
  s1*8 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "144a" } s1*4
  \textMark \markup { \box "144b" } s1*4
  \textMark \markup { \box "144c" } s1*4
  \textMark \markup { \box "145a" } s1*4
  \textMark \markup { \box "145b" } s1*4
  \textMark \markup { \box "145c" } s1*4
  \textMark \markup { \box "145d" } s1*4
  \textMark \markup { \box "146a" } s1*4
  \textMark \markup { \box "146b" } s1*4
  \textMark \markup { \box "146c" } s1*4
  \textMark \markup { \box "146d" } s1*4
  \textMark \markup { \box "147a" } s1*4
  \textMark \markup { \box "147b" } s1*4
  \textMark \markup { \box "147c" } s1*4
  \textMark \markup { \box "147d" } s1*4
  \textMark \markup { \box "148a" } s1*5
  \textMark \markup { \box "148b" } s1*4
  \textMark \markup { \box "148c" } s1*4
  \textMark \markup { \box "148d" } s1*4
  \textMark \markup { \box "149a" } s1*4
  \textMark \markup { \box "149b" } s1*4
  \textMark \markup { \box "149c" } s1*5
  \textMark \markup { \box "149d" } s1*6
}

melody = \relative {
  \global
  R1 | r2 r4^\markup\bold STUYVESANT c' | d4 8 8 f4 4 | e4 8 8 c4 r8 c |
  d4 8 8 f4 f | e2. c8 8 | d4. 8 f4 8 8 | e4 4 g4 r8 g |
  f4 8 8 a4 8 8 g8 8 4 c c,8 8 | d4 8 8 f4 4 e4 4 a c,8 8 |
  d4 8 8 f4 r8 f | e4 4 a r8 c, | d4 8 8 f4 r8 f | e1 \section | % 145a
  r4 c e b' | a4 4 2 | r4 c, \tuplet 3/2 {c ees aes} | g4. 8~2 |
  r4 e8 8 g4 c | d1~ | 4 d, \tuplet 3/2 {d c d} | e4. 8~2 |
  r4 c e b' | a4. 8 2 | r4 c,8 8 ees8 8 aes8 8 | g1 |
  r4 e8 8 g g c4 | d1~ | 4 d,8 e f4 f | e1 | % 146a
  r2 c'4 4 | d c8 b c2~ | 2 2 | ees4. c8 2~ |
  c2 r4 r8 c | d2 c | r2 r4 r8 c | ees2 c~ |
  c8 r\fermata c,4 e b' | a4. 8 2 | r4 c, ees aes | g1 |
  r4 e g c | d2. a4 | c2 c | 1 | % 147a
  r2 r4 c,8 8 |  d4 8 8 f4 f | e4 8 8 c4 r8 c | d4 8 8 f4 f |
  e2. r8 c | d4 8 8 f4 8 8 | e4 e g r8 g | f4 8 8 a4 8 8 |
  g4 g c c,8 8 | d4 8 8 f8 8 8 8 | e4 4 a c,8 8 | d4 8 8 f4 r8 f |
  e4 4 a r8 c, | d4 8 8 f4 r8 f | e1 | r4 c e b' | a4 4 2 | % 148a
  r4 c, \tuplet 3/2 {c ees aes} | g4. 8~2 | r4 e8 8 g g c4 | d1~ |
  d4 d, \tuplet 3/2 {d c d} | e4. 8~2 | r4 c e b'8 8 | a1 |
  r4 c,8 8 ees4 aes | g1 | r4 e8 e g g c c | d4. 8~2~
  d4 d,8 e f f f f | e1 | r2 c'4 4 | d c8 b c2~ | % 149a
  c2 4 4 | ees4. c8 2~2 r4 r8 c | d2 c |
  r2 r4 r8 c | ees2 c~ | 8 r\fermata c,4 e b' | a4. 8 2 | r4 c, ees aes |
  g1 | r4 e g c | d2. a4 | c2 2 | 1~ | 1 |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s1*39 |
  s8 s2..-\markup\italic rit. | % 146c+++
  s1 | s-\markup\italic "a tempo" | s1*2 |
  s1*40 |
  s1\cresc | % 149b+++
  s1 | s-\markup\italic rit. | s4 s2.\omit\p | s1-\markup\italic "a tempo" | s1 |
  s1*6 |
}

words = \lyricmode {
  When I was a young man court -- ing the girls
  I played me a wait -- ing game;
  If a maid re -- fused me with toss -- ing curls
  I let the old earth take a cou -- ple of whirls
  While I plied her with tears in place of pearls
  And as time came a -- round she came my way,
  As time came a -- round she came.

  But it's a long, long while
  From May to De -- cem -- ber __
  And the days grow short __
  When you reach Sep -- tem -- ber, __
  And I have lost one tooth and I walk a lit -- tle lame,
  And I have -- n't got time __ for the wait -- ing game,
  For the days turn to gold __ as they grow few, __
  Sep -- tem -- ber, No -- vem -- ber, __
  And these few gold -- en days I'd spend with you,
  These gold -- en days I'd spend with you.

  When you meet with the young men ear -- ly in spring
  They court you in song and rhyme.
  They woo you with words and a clo -- ver ring
  But if you ex -- am -- ine the goods they bring
  They have lit -- tle to of -- fer but the songs they sing
  And a plen -- ti -- ful waste of time of day,
  A plen -- ti -- ful waste of time.
  And it's a long, long while from May to De -- cem -- ber __
  Will a clo -- ver ring last __ till you reach Sep -- tem -- ber? __
  I'm not quite e -- quipped for the wait -- ing game,
  But I have a lit -- tle mon -- ey __ and I have a lit -- tle fame,
  And the days dwin -- dle down __ to a pre -- cious few, __
  Sep -- tem -- ber, No -- vem -- ber, __
  And these few pre -- cious days I'd spend with you,
  These pre -- cious days I'd spend with you.
}

midiWords = \lyricmode {
  "When " "I " "was " "a " "young " "man " court "ing " "the " "girls "
  "\nI " "played " "me " "a " wait "ing " "game; "
  "\nIf " "a " "maid " re "fused " "me " "with " toss "ing " "curls "
  "\nI " "let " "the " "old " "earth " "take " "a " cou "ple " "of " "whirls "
  "\nWhile " "I " "plied " "her " "with " "tears " "in " "place " "of " "pearls "
  "\nAnd " "as " "time " "came " a "round " "she " "came " "my " "way, "
  "\nAs " "time " "came " a "round " "she " "came. "

  "\nBut " "it's " "a " "long, " "long " "while "
  "\nFrom " "May " "to " De cem "ber " 
  "\nAnd " "the " "days " "grow " "short " 
  "\nWhen " "you " "reach " Sep tem "ber, " 
  "\nAnd " "I " "have " "lost " "one " "tooth " "and " "I " "walk " "a " lit "tle " "lame, "
  "\nAnd " "I " have "n't " "got " "time "  "for " "the " wait "ing " "game, "
  "\nFor " "the " "days " "turn " "to " "gold "  "as " "they " "grow " "few, " 
  "\nSep" tem "ber, " No vem "ber, " 
  "\nAnd " "these " "few " gold "en " "days " "I'd " "spend " "with " "you, "
  "\nThese " gold "en " "days " "I'd " "spend " "with " "you. "

  "\nWhen " "you " "meet " "with " "the " "young " "men " ear "ly " "in " "spring "
  "\nThey " "court " "you " "in " "song " "and " "rhyme. "
  "\nThey " "woo " "you " "with " "words " "and " "a " clo "ver " "ring "
  "\nBut " "if " "you " ex am "ine " "the " "goods " "they " "bring "
  "\nThey " "have " lit "tle " "to " of "fer " "but " "the " "songs " "they " "sing "
  "\nAnd " "a " plen ti "ful " "waste " "of " "time " "of " "day, "
  "\nA " plen ti "ful " "waste " "of " "time. "
  "\nAnd " "it's " "a " "long, " "long " "while " "from " "May " "to " De cem "ber " 
  "\nWill " "a " clo "ver " "ring " "last "  "till " "you " "reach " Sep tem "ber? " 
  "\nI'm " "not " "quite " e "quipped " "for " "the " wait "ing " "game, "
  "\nBut " "I " "have " "a " lit "tle " mon "ey "  "and " "I " "have " "a " lit "tle " "fame, "
  "\nAnd " "the " "days " dwin "dle " "down "  "to " "a " pre "cious " "few, " 
  "\nSep" tem "ber, " No vem "ber, " 
  "\nAnd " "these " "few " pre "cious " "days " "I'd " "spend " "with " "you, "
  "\nThese " pre "cious " "days " "I'd " "spend " "with " "you."
}

pianoRHone = \relative {
  \global \voiceOne
  \set Staff.connectArpeggios = ##t
  r4 <g c e> <a e' g> <g c e> |
  r4 <g c e> <a e' g> <g c e> |
  d'2(f |
  e2 c) |
  d2(f | e c) | d( f | e g) | % 144b
  f2(a | g c) | d,( f | e a) |
  d,2(f | e a) | d,(f e1) \section | % 145a
  \ov r4 <e, g c>(<g c e> <c e b'>) | % 145b
  <c ees a>4. 8~2 |
  r4 <ees, aes c> \tuplet 3/2 {q <aes c ees> <c ees aes>} |
  <c e g>4. 8~2 |
  r4 <g c e> <c e g> <e g c> | % 145c
  <fis c' d>4. 8~2 |
  r4 <aes, c d> \tuplet 3/2 {q(<f aes c> <aes c e>)} |
  <g c e>1 |
  r4 <e g c>(<g c e> <c e b'>) % 145d
  <c ees a>4. 8~2 |
  r4 <ees, aes c> \tuplet 3/2 {q <aes c ees> <c ees aes>} |
  <c e g>4. 8~2 |
  r4 <g c e> <c e g> <e g c> | % 146a
  <fis c' d>1~ |
  8 r <f, a d> <g b e> <aes c e>4 4 |
  \vo e'1~ |
  e2 c'4 4 | d\arpeggio(c8 b c2~ | 2) 4 4 | ees4.(c8) 2~ | % 146b
  c2 \tuplet 3/2 {4 b c} | d2\arpeggio c~ | 2 \tuplet 3/2 {4 b c} | \ov <ees, fis a ees'>2 <ees fis a c>~ |
  q8 r\fermata <e g c>4(<g c e> <c e b'>) | % 146d
  <ees g a>4. 8~2 |
  \vo r4 <ees, aes c> <aes c ees> <c ees aes> |
  <c e g>1~ |
  \ov q4 <g c e> <c e g> <e g c> | % 147a
  <c fis d'>2.\arpeggio <c f a>4 |
  <g aes c>2 2 |
  <c e g c>1~ |
  q1 | \vo d,2(f | e c) d(f | % 147b
  e2 c) | d(f | e g) | f( a | % 147c
  g2 c) | d,( f | e a) | d,(f | % 147d
  e2 a) | % 148a
  d, f |
  \ov <g, c e>1~ |
  4 <e g c> <g c e> <c e b'> |
  <ees g a>4. 8~2 |
  r4 <ees, aes c> \tuplet 3/2 {q <aes c ees> <c ees aes>} | <c e g>1 | % 148b
  r4 <\parenthesize g c e> <c e g> <e g c> | <c fis d'>4. 8~2 |
  r4 <aes c d> \tuplet 3/2 {q <f aes c> <aes c d>} | % 148c
  <g c e>1~ | 4 <e g c> <g c e> <c e b'> | <ees g a>4. 8~2 |
  r4 <ees, aes c> \tuplet 3/2 {q <aes c ees> <c ees aes>} | <c e g>1 | % 148d
  r4 <\parenthesize g c e> <c e g> <e g c> | <fis c' d>1~ |
  q8 r <f, a d> <g b e> <aes c f>4 4 | \vo e'1~ | 2 r |r2 <c' c'>4 4 | % 149a
  <d d'>4 <c c'>8 <b b'> <c c'>2 | r2 q4 q | % 149b
  \ov <ees ees'>4.(<c c'>8) 2 | \vo r2 \tuplet 3/2 {q4 <b b'> <c c'>} |
  <d d'>4.(<c c'>8) \tuplet 3/2 {q4 <b b'> <c c'>} | % 149c
  \ov <ees fis a c ees>2 <c ees fis a c> ~ |
  q8 r\fermata c,4(e b' | \vo a4.) 8~2 | \ov r4 c,(ees aes |
  <c, e g>1~ | 4) <c e> <e g> <g c> \vo d'2. a4 | % 149d
  \ov <f aes c>2 2 | \vo r2 <c' e g> | <a' c e>1 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1 | s | r4 <f a> r <f b> | r <g c> r <e a> |
  r4 <f a> r <f b> | r <g c> r <e a> | e <f a> r <f b> | r <g c> r <g cis> | % 144b
  r4 <a d> r <b dis> | r <c e> r q | r <aes c> r <f b> | r <a c> r q | % 144c
  r4 <f a> r <f b> | r <g c> r <c e> | r <f, a> r <f b> | r8. g16(<a c>4) r <g a c> | % 145a
  s1*12 | % 145bcd
  s1*3 | <g c>8. g16(<a c>4) r <g a c> | % 146a
  r8. g16(<a c>4) r2 | <c f aes>1\arpeggio ~ | <f aes>1 | <ees fis a>1~ | % 146b
  <fis a>1 | <c f aes>1\arpeggio ~ | <f aes>1 | s1 | % 146c
  s1*4 | % 146d
  s1*4 | % 147a
  s1 | r4 <f, a> r <f b> | r <g c> r <e a> | r <f a> r <f b> | % 147b
  r4 <g c> r <e a> | r <f a> r <f b> | r <g c> r <g cis> | r <a d> r <b dis> | % 147c
  r4 <c e> r q | r <aes c> r <f b> | r <a c> r q | r <f a> r <f b> | % 147d
  r4 <g c> r <c e> | r4 <f a> r <f b> | s1*3 | % 148a
  s1*12 | % 148bcd
  s1 | <g, c>8. g16(<a c>4) r <g a c> | r8. g16(<a c>4) s2 | % 149a
  \once\arpeggioBracket <f' aes c>1\arpeggio ~ |
  q1 | \once\arpeggioBracket <fis a c>1\arpeggio | s1 | % 149b
  \once\arpeggioBracket <f aes c>1\arpeggio |
  s1 | s | s | <c ees>1~ | 4 s2. | % 149c
  s1 | s | <c fis>1 | s | <e g c>1~ | 1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*11 |
  s1*4 | s1\p | s1*11 | % 145
  s1*4 | % 146a
  s1*3 | s2 s\< |
  s1\! | s2 s\cresc | s1 | s1\omit\mf-\markup{\dynamic mf \italic rit.} |
  s1 | s-\markup\italic "a tempo" | s1 | s |
  s1*16 | % 147
  s1*3 | s1\p | s1*13 |
  s1*4 | % 149a
  s1*3 | s1\cresc |
  s1 | s2\<-\markup\italic rit. s\! | s4 s2.\p | s1-\markup\italic "a tempo" | s |
  s1 | s\< | s\> | s\! | s\< | s2..\> s8\! |
  
}

pianoLHone = \relative {
  \global
  <c, c'>4 r r2 | q4 r r2 | g'2(gis | a fis) |
  g2(gis | a fis) | g(gis | a ais) |
  b2(g | c a) | f(g a fis) |
  g2(gis | a fis) | g g | c4 r g r \section | % 145a
  <c, c'>4 r g' r | c8. g'16(a4) g, <ees' g a> | c r g r | c8. g'16(a4) g, <e' g> |
  b4 r bes r | a8. d16~<d fis c'>4 d, q | aes'8. c16(<d f>4) g, r | c8. g'16(a4) g, <e' g> |
  <c, c'>4 r g' r | c8. g'16(a4) g, <ees' g a> | c r g r | c8. g'16(a4) g, <e' g> |
  b4 r bes r | a8. d16~<d fis c'>4 d, q | g r g r | c2 b | % 146a
  a2 g | f8(c' f aes c4) c | d->(c8 b c2) | fis,,8(c' fis a c4) c |
  ees4.->(c8 2) | f,,8(c' f aes \tuplet 3/2 {c4) b c} | d4. c8 \tuplet 3/2 {4 b c} | fis,,8(c' fis a c2~ |
  c8) r\fermata \vo b4(a g) | % 146d
  c2. \showStaffSwitch \change Staff = pianorh \vt c4 |
  d4 ees f fis |
  g2. \change Staff = pianolh \vo e4 |
  d4\arpeggio c b bes | \ov <a, a'>8. d16~<d fis c'>4 a q | % 147a
  f8. c''16(<f, aes d>4) f, <f' a c d> |
  <c g' e'>4\arpeggio \tuplet 3/2 {g'8(a g} c4 b |
  a4 g \tuplet 3/2 {e c a} | \vo g4) s2. | \ov a2 fis | g( gis | % 147b
  a2 fis) | g(gis | a ais) | b(g |
  c2 a) | f(g | a fis) | g(gis |
  a2 fis) | g g | c8. g'16(a4) g, <e' g a> | c, r r2 | c'8. g'16(a4) r g, | % 148a
  c4 r r g | c8. g'16(a4) \vo r <e g> | r q r q | \ov a,8. d16(a'4) r d,, |
  g8. c16(<d f>4) r g, | c8. g'16(a4) r g, | c, r r2 | c'8. g'16(a4) r g, |
  c4 r r g | c8. g'16(a4) \vo r <e g> | r q r q | \ov a,8. d16(a'4) r d,, |
  g4 r g r | c2 b | a \vo c'4^\markup\italic "R.H." c | % 149a
  \once\arpeggioBracket d\arpeggio(c8 b \vt c2)( |
  c2) r | \vo \once\arpeggioBracket ees4.\arpeggio (c8) r4 <ees fis a>~ | % 149b
  4 4 \tuplet 3/2 {c4 b c} | \once\arpeggioBracket d2\arpeggio (\vt c)( |
  c2) r | \vo ees(\vt c~) | c8 \ov r\fermata r4 r2 | % 149c
  c,,4 <c' ees> <ees g> <c ees> | c, <c' ees aes> <ees aes c> <c ees aes> |
  c,4 <c' e> <e g> <c e> | c, c' b bes | a <d fis> <fis a> <d fis> | % 149d
  f,4 <f' aes> <aes c> <f aes> | \vo r4 g(\tuplet 3/2 {bes a aes} | g1) |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*12 |
  s1*16 | % 145
  s1*12 |
  s4 r r2 | c4 r g r | c8. g'16(aes4) g, <a' c> | c,8. g'16^(a4) g, <g' c> | % 146d
  <c, g'>\arpeggio r b bes | s1*3 | % 147a
  s1 | g2(gis) | s1*2 |
  s1*8 |
  s1*5 | % 148a
  s1 | s2 c | b bes | s1 |
  s1*4 |
  s1 | s2 c | b bes | s1 |
  s1*2 | s2 g | f8(c' f a) \vo r4 <d f aes>~ | % 149a
  q4 4 c c | \vt fis,,8(c' fis a c2~ | 2) r | f,,8(c' f aes \vo r4 <d f aes>~ |
  q4) q \tuplet 3/2 {c b c} | % 149c
  \vt fis,,8\arpeggio(c' fis a \vo r4 <ees' fis a>4~ | q8) \vt s2.. | s1*2 |
  s1*4 | <c,, g' e'>1\arpeggio ~ | q1 |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  #(define output-suffix "single")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody 
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Span_arpeggio_engraver
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
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody 
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Span_arpeggio_engraver
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
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody 
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Span_arpeggio_engraver
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
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody 
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
          \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
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
