\version "2.25.0"

\include "predefined-ukulele-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mother What'll I Do Now"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Fred E Cliffe & George Formby"
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

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 2/2
  \partial 4
}

TempoTrack = {
  \tempo Moderato 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \textMark \markup { \box "56a" } s4 s1*4
  \textMark \markup { \box "56b" }    s1*4
  \textMark \markup { \box "56c" }    s1*4
  \repeat volta 3 {
    \textMark \markup { \box "56d" }    s1*4
    \textMark \markup { \box "57a" }    s1*4
    \textMark \markup { \box "57b" }    s1*4
    \textMark \markup { \box "57c" }    s1*4
    \textMark \markup { \box "57d" }    s1*4
    \textMark \markup { \box "58a" }    s1*3
    \textMark \markup { \box "58b" }    s1*3
    \textMark \markup { \box "58c" }    s1*3
    \textMark \markup { \box "58d" }    s1*2
    \alternative { { s1 } { s1 } }
  }
}

ChordTrack = \chordmode {
  g4 | c2 c:7 | f aes:7 | c aes4:7 g:7 | c1 |
  c2 c:dim | c1 | g2:7 d:m | g1:7 |
  c2 e:7 | a1:m | d:7 | g4:7 g:dim g2:7 |
  \repeat volta 3 {
    c2 a:7 | d:m g:7 | c a:7 | d:7 g:7 |
    c2 c:7 | f aes:7 | c d4:m g | c c:m g2 | % 57a
    c2 a:7 | d:m g:7 | c a:7 | d:7 g |
    c2 c:7 | f aes:7 | c d4:m g:7 | c1 |
    c1:7 | s | f2. f4:dim | f1 |
    d1:7 | s | s | % 58a
    g4:7 g8:dim g:7 s2 | c a:7 | d:m g:7 |
    c2 a:7 | d:7 g4 g:7 | c2 c:7 |
    f2 aes:7 | c2 aes4:7 g:7 |
    \alternative {
      {c2 g:7}
      {c1}
    }
  }
}

melodyA = \relative {
  \global
  r4 | R1 | R | R | R \section |
  g'4 a c a | g a c2 | d,4 e g d | g2. r4 |
  e4 f e d | c d e g | a b d b | g2. r4 \section |
}

melodyB = \relative {
  g'4 e a4. g8 | f4 d g4. 8 | e'4 c a g | e c d4. g8 |
  c4 4 4 4 | d c aes2 | g8 8 8 8 f4 e | % 57a
  \tag #'dash    {g2. e4 | }
  \tag #'(v2 v3) {g2. r4 | }
  \tag #'v1      {g2. e4 | }
  g4 e a4. g8 | f4 d g2 | e'4 c a g | e c d4. g8 |
  c4 4 4 4 | d c aes2 | g8 8 8 8 f4 e | c2. 4 |
  bes'4 4 4 4 | 4 2. | r4 a a gis | a2. r4 |
  c4 4 4 4 | 4 2 cis4 | d d b a | % 58a
  \tag #'dash    {g2. r8 e | }
  \tag #'v1      {g2. r8 e | }
  \tag #'(v2 v3) {g2. r4   | }
  g4 e a4. g8 |
  \tag #'dash    {\slurDashed f8(8) d4 g(g) \slurSolid } |
  \tag #'(v1 v2) {            f4    d4 g g             } |
  \tag #'v3      {            f8 8  d4 g2              } |
  \tag #'dash    {e'4 c \slurDashed a8(8) \slurSolid g4 } |
  \tag #'(v1 v2) {e'4 c             a4               g4 } |
  \tag #'v3      {e'4 c             a8 8             g4 } |
  \tag #'dash    {e4 c d \slurDashed g8(8) \slurSolid } |
  \tag #'v3      {e4 c d             g4               } |
  \tag #'(v1 v2) {e4 c d             g8 8             } |
  \tag #'dash    {\slurDashed c8(8) \slurSolid 4 4 4 } |
  \tag #'(v1 v2) {            c4               4 4 4 } |
  \tag #'v3      {            c8 8             4 4 4 } |
  d4 c aes2 | g8 8 8 8 ees'4 d
}

melodyC = \relative {
  c''2. r8 e,8
}

melodyD = \relative {
  c''2. r4
}

melody = {
  \melodyA
  \repeat volta 3 {
    \melodyB
    \alternative {
      {\melodyC}
      {\melodyD}
    }
  }
}

melodySingle = {
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyD
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1 | s | s | s |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  Mo -- ther you give good ad -- vice,
  Al -- ways you mean well,
  Now I need it more than ev -- er
  I'm in -- side this cell.
  \set stanza = "1."
  I'm be -- hind a pri -- son wall,
  The bed's too hard and much too small,
  There's no py -- ja -- mas here at all,
  Mo -- ther what -- 'll I do now?
  They told me they would treat me swell,
  Tucked in -- side my lit -- tle cell,
  But up to now it's been like H***
  Moth -- er what -- 'll I do now?
  We're part -- ed from each oth -- er,
  And that's too bad.
  You're my fav -- 'rite mo -- ther
  The best I ev -- er had.
  To -- night I've got a date you \nom see,
  But \yesm they won't let me have a key,
  \nom And the \yesm ward -- ers won't sit up for me,
  Mo -- ther what -- 'll I do now?
  It's
}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  \set stanza = "2."
                                % It's
  hard to pass the time a -- way,
  I'm in a dang -- 'rous mood I say,
  I've smoked two cig -- ar -- ettes to -- day,
  Moth -- er what -- 'll I do now?
  _ First I stand and then I sit,
  Then I sit and stand a bit,
  But I can't stand much more of it,
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ I got such an aw -- ful \nom shock,
  I \yesm asked the time, for there's no clock,
  \nom And the \yesm ward -- en said "\"six" months old "cock.\""
  Moth -- er what -- 'll I do now?
  I
}

wordsThree = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  \set stanza = "3."
                                % I
  or -- der lunch from soup to sweet,
  But they for -- got the fish and meat,
  And since the soup there's nowt to eat,
  Mo -- ther what -- 'll I do now?
  _ I've had such a tum -- my ache
  All night long I've been a -- wake,
  Some Cas -- tor Oil they made me take,
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ I've played Pe -- ter -- \nom Fly -- a -- \yesm way Paul,
  I've played \nom Tid -- dl -- \yesm ey Winks and all,
  I've \nom writ -- ten \yesm rude words up -- on the wall,
  Mo -- ther what -- 'll I do _ _ now?
}

wordsSingle = \lyricmode {
  Mo -- ther you give good ad -- vice,
  Al -- ways you mean well,
  Now I need it more than ev -- er
  I'm in -- side this cell.
  \set stanza = "1."
  I'm be -- hind a pri -- son wall,
  The bed's too hard and much too small,
  There's no py -- ja -- mas here at all,
  Mo -- ther what -- 'll I do now?
  They told me they would treat me swell,
  Tucked in -- side my lit -- tle cell,
  But up to now it's been like H***
  Moth -- er what -- 'll I do now?
  We're part -- ed from each oth -- er,
  And that's too bad.
  You're my fav -- 'rite mo -- ther
  The best I ev -- er had.
  To -- night I've got a date you \nom see,
  But \yesm they won't let me have a key,
  \nom And the \yesm ward -- ers won't sit up for me,
  Mo -- ther what -- 'll I do now?
  \set stanza = "2."
  It's hard to pass the time a -- way,
  I'm in a dang -- 'rous mood I say,
  I've smoked two cig -- ar -- ettes to -- day,
  Moth -- er what -- 'll I do now?
  First I stand and then I sit,
  Then I sit and stand a bit,
  But I can't stand much more of it,
  Moth -- er what -- 'll I do now?
  We're part -- ed from each oth -- er,
  And that's too bad.
  You're my fav -- 'rite mo -- ther
  The best I ev -- er had.
  I got such an aw -- ful \nom shock,
  I \yesm asked the time, for there's no clock,
  \nom And the \yesm ward -- en said "\"six" months old "cock.\""
  Moth -- er what -- 'll I do now?
  I or -- der lunch from soup to sweet,
  But they for -- got the fish and meat,
  And since the soup there's nowt to eat,
  Mo -- ther what -- 'll I do now?
  \set stanza = "3."
  I've had such a tum -- my ache
  All night long I've been a -- wake,
  Some Cas -- tor Oil they made me take,
  Moth -- er what -- 'll I do now?
  We're part -- ed from each oth -- er,
  And that's too bad.
  You're my fav -- 'rite mo -- ther
  The best I ev -- er had.
  I've played Pe -- ter -- \nom Fly -- a -- \yesm way Paul,
  I've played \nom Tid -- dl -- \yesm ey Winks and all,
  I've \nom writ -- ten \yesm rude words up -- on the wall,
  Mo -- ther what -- 'll I do now?
}

midiWords = \lyricmode {
  "Mo" "ther " "you " "give " "good " ad "vice, "
  "\nAl" "ways " "you " "mean " "well, "
  "\nNow " "I " "need " "it " "more " "than " ev "er "
  "\nI'm " in "side " "this " "cell.\n"
  \set stanza = "1."
  "\nI'm " be "hind " "a " pri "son " "wall, "
  "\nThe " "bed's " "too " "hard " "and " "much " "too " "small, "
  "\nThere's " "no " py ja "mas " "here " "at " "all, "
  "\nMo" "ther " what "'ll " "I " "do " "now? "
  "\nThey " "told " "me " "they " "would " "treat " "me " "swell, "
  "\nTucked " in "side " "my " lit "tle " "cell, "
  "\nBut " "up " "to " "now " "it's " "been " "like " "H*** "
  "\nMoth" "er " what "'ll " "I " "do " "now? "
  "\nWe're " part "ed " "from " "each " oth "er, "
  "\nAnd " "that's " "too " "bad. "
  "\nYou're " "my " fav "'rite " mo "ther "
  "\nThe " "best " "I " ev "er " "had. "
  "\nTo" "night " "I've " "got " "a " "date " "you " "see, "
  "\nBut " "they " "won't " "let " "me " "have " "a " "key, "
  And the ward -- ers won't sit up for me,
  "\nMo" "ther " what "'ll " "I " "do " "now?\n"
  \set stanza = "2."
  "\nIt's " "hard " "to " "pass " "the " "time " a "way, "
  "\nI'm " "in " "a " dang "'rous " "mood " "I " "say, "
  "\nI've " "smoked " "two " cig ar "ettes " to "day, "
  "\nMoth" "er " what "'ll " "I " "do " "now? "
  "\nFirst " "I " "stand " "and " "then " "I " "sit, "
  "\nThen " "I " "sit " "and " "stand " "a " "bit, "
  "\nBut " "I " "can't " "stand " "much " "more " "of " "it, "
  "\nMoth" "er " what "'ll " "I " "do " "now? "
  "\nWe're " part "ed " "from " "each " oth "er, "
  "\nAnd " "that's " "too " "bad. "
  "\nYou're " "my " fav "'rite " mo "ther "
  "\nThe " "best " "I " ev "er " "had. "
  "\nI " "got " "such " "an " aw "ful " "shock, "
  "\nI " "asked " "the " "time, " "for " "there's " "no " "clock, "
  "\nAnd " "the " ward "en " "said " "\"six " "months " "old " "cock.\""
  "\nMoth" "er " what "'ll " "I " "do " "now? "
  "\nI " or "der " "lunch " "from " "soup " "to " "sweet, "
  "\nBut " "they " for "got " "the " "fish " "and " "meat, "
  "\nAnd " "since " "the " "soup " "there's " "nowt " "to " "eat, "
  "\nMo" "ther " what "'ll " "I " "do " "now?\n"
  \set stanza = "3."
  "\nI've " "had " "such " "a " tum "my " "ache "
  "\nAll " "night " "long " "I've " "been " a "wake, "
  "\nSome " Cas "tor " "Oil " "they " "made " "me " "take, "
  "\nMoth" "er " what "'ll " "I " "do " "now? "
  "\nWe're " part "ed " "from " "each " oth "er, "
  "\nAnd " "that's " "too " "bad. "
  "\nYou're " "my " fav "'rite " mo "ther "
  "\nThe " "best " "I " ev "er " "had. "
  "\nI've " "played " Pe "ter " Fly a "way " "Paul, "
  "\nI've " "played " Tid dl "y " "Winks " "and " "all, "
  "\nI've " writ "ten " "rude " "words " up "on " "the " "wall, "
  "\nMo" "ther " what "'ll " "I " "do " "now? "
}

pianoRHone = \relative {
  \global
  \voiceOne
  <b d g>4 |
  c' c c4. 8 |
  <f, a d>4 <f a c> <c ees aes>2-> |
  g'8 8 8 8 <ges c ees>4-> <f b d>-> |
  <e g c>2.-> r4 \section |
  <c e g>4 <c e a> <ees fis c'> <ees fis a> | % 56a
  <c e g>4 <c e a> <e g c>2 |
  <f, a d>4 <f a e'> <c' f g> <a c d> |
  g'1 |
  <g, c e>4 <g c f> <gis b e> <g b d> | % 56b
  <a c>4 <b d> <c e> <c e g> |
  <c e a>4 <c e b'> <d fis a d> <c f b> |
  g'2. r4 |
  \repeat volta 3 {
    <c, e g>4 <g c e> a'4. g8 |
    <a, d f>4 <a c d> g'4. 8 |
    <g c e>4 <e a c> <cis e a> <cis e g> |
    <a c e>4 <fis a c> <g b d> <b f' g> |
    c'4 4 4 4 | <f, a d> <f a c> <c ees aes>2 | g'8 8 8 8 f4 e | g2. e4 | % 57a
    <c e g>4 <g c e> a'4. g8 | % 57b
    <a, d f>4 <a c d> <b g'>2-> |
    <g' c e>4 <e g c> <cis e a> <cis e g> |
    <a c e> <fis a c> <g b d>4. <d' f g>8 |
    <e g c>4 4 <e bes' c> q | % 57c
    <f a d> <f a c> <c ees aes>2-> |
    g'8 8 8 8 <a, c f>4 <g b e> |
    <e g c>2. 4 |
    ges'4 4 4 4 | % 57d
    ges4 2. |
    r4 <c, f a> q <b fis' g> |
    a'2. 4 |
    c4 4 4 4 | <d, fis c'>4 2 <d fis cis'>4 | <f a d> q <d f b> <c f a> | % 58a
    g'2~4. e8 | <c e g>4 <g c e> a'4. 8 | <a, d f>4 <a c d> <b d g> <d f g> |
    <g c e>4 <e a c> <cis e a> <cis e g> | % 58c
    <a c e> <fis a c> <g b d> <b f' g> |
    <e g c> q <e bes' c> q |
    <f a d>4 <f a c> <c ees aes>2 | % 58d
    g'8 8 8 8 <ges c ees>4 <f b d> |
    \alternative {
      {<e g c>4 r <b g'>2 |}
      {<e g c>2. r4}
    }
  }
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4 | <e' g>2 <g bes> | s1 | <c, e>4 4 s2 | s1 |
  s1 | s | s | r4 <c f>(<b e>8. ees16) <b d>4 |
  s1 | s | s | <b d>4(<ais cis> <b d>) r |
  \repeat volta 3 {
    s2 r4 <cis e> | s2 r4 <b f> | s1 | s |
    r4 <e g> <e bes> q | s1 | <c e>4 q s2 | r4 <g c> <g b> q | % 57a
    s2 r4 <cis e> | s2 e4 d | s1 | s |
    s1 | s | <c e>4 4 s2 | s1 |
    r4 <c e> r q | % 57d
    r4 <c e>(<bes d> <bes c>) |
    s1 |
    r4 <d f> <c f> q |
    r4 <d fis> r q | s1 | s | % 58a
    <b d>4 <ais cis>8 <b d>8 4 r | s2 r4 <cis e> | s1 |
    s1*3 |
    s1 | s |
    \alternative {
      {s2 e4(d)}
      {s1}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f | s2. s4\< | s2 s\sfz | s2. s4\< | s1\! |
  s1\mf | s2\< s\! | s2. s4\< | s1\! |
  s1 | s2. s4\< | s2 s\! | s2 s4\> s\! |
  \repeat volta 3 {
    s1\omit\mf-\markup{\dynamic mp - \dynamic mf} | s2. s4\< | s2 s\! | s1 |
    s2. s4\< | s2 s\sfz | s1\mf | s2 s\> | % 57a
    s1\! | s | s | s |
    s1\< | s4\! s s2\sfz | s1\mf | s2.\< s4\! |
    s1 | s | s | s4 s2.\< |
    s1 | s2. s4\cresc | s1 | % 58a
    s4. s8\< s4.\> s8\! | s1 | s2. s4\< |
    s4 s2.\! | s1 | s |
    s2\< s\sfz | s2...\< s16\! |
    \alternative {
      {s2 s4...\> s32\!}
      {s2.\< s4\!}
    }
  }
}

pianoLHone = \relative {
  \global
  \voiceOne
  <g, g'>4 |
  c <e g c> c q |
  <f, f'>4 r <fis fis'>2 |
  <g g'>4 r <aes aes'>4-> <g g'>-> |
  c4-> g-> c,-> r \section |
  <c c'>4 r q r | q r e'8.(d16 c4) | g4 r <d d'> r | g'4 a(g8. fis16) f4 | % 56b
  c4 r e e, | <a e'> r <a g'> a | <d, d'> r q r | f'4( e f) r |
  \repeat volta 3 {
    c4 r a r | <d, d'> r <g g'> r | <e' c'> r <a, a'> r | <d, d'> r <g d'> g' |
    <c, c'>4 r <c, c'> r | <f f'> r <fis fis'>2 | <g g'>4 r d' g, | e'(ees d) d | % 57a
    c4 r <a e'> r | <d, d'> r g' f | c r e a, | <d, d'> r <g d'> r |
    <c, c'>4 r <e e'> r | <f f'> r <fis fis'>2 | <g g'>4 r f' g, | c g c, r |
    <g' g'>4 r <c, c'> r | g'' g(f e) | <f, f'>-^ r <c c'> r | <f f'> r <c c'> r |
    <d d'>4 r a' r | q r a r | q r d d, | % 58a
    f'4 e8 f~4 r | <c, c'> r a' r | <d, d'> r <g g'> r |
    <c c'>4 r <a a'> r | <d, d'> r g g' | <c, c'> r <c, c'> r |
    <f f'>4 r <fis fis'>2 | <g g'>4 r <aes aes'> <g g'> |
    \alternative {
      {<c, c'>4 r g''(f) |}
      {c4-^ g-^ c,-^ r |}
    }
  }
%  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s4 | s1 | s | s | s |
  s1 | s | s | g,1 |
  s1 | s | s | g2. 4 |
  \repeat volta 3 {
    s1*4 |
    s1 | s | s | g2~4 4 | % 57a
    s1 | s2 g | s1 | s |
    s1*4 |
    s1 | g2 c | s1 | s |
    s1*3 | % 58a
    g2~4 s | s1 | s |
    s1*3 |
    s1 | s |
    \alternative {
      {s2 g |}
      {s1 |}
    }
  }
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
%    \context GrandStaff
    <<
      <<
        \new FretBoards \with {
          stringTunings = #ukulele-tuning
        } \ChordTrack
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \keepWithTag #'dash \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
            \new Lyrics \lyricsto "melody" \wordsThree
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
      <<
        \new ChordNames { \ChordTrack }
      >>
    >>
    \layout {
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
  #(define output-suffix "single")
  \score {
    <<
      \new FretBoards \with {
        stringTunings = #ukulele-tuning
      } \unfoldRepeats \ChordTrack
      \new ChoirStaff
      <<
        \new Dynamics \unfoldRepeats \TempoTrack
        \new Dynamics \unfoldRepeats \dynamicsMelody
        \new Staff
        <<
          \new Voice \unfoldRepeats \RehearsalTrack
          \new Voice \melodySingle
          \addlyrics \wordsSingle
        >>
      >>
      \new PianoStaff
      <<
        \new Staff
        <<
          \new Voice \unfoldRepeats \pianoRHone
          \new Voice \unfoldRepeats \pianoRHtwo
        >>
        \new Dynamics \unfoldRepeats \dynamicsPiano
        \new Staff
        <<
          \clef "bass"
          \new Voice \unfoldRepeats \pianoLHone
          \new Voice \unfoldRepeats \pianoLHtwo
        >>
      >>
    \new ChordNames \unfoldRepeats \ChordTrack
  >>
\layout {
  indent = 1.5\cm
  \context {
    \Staff \RemoveAllEmptyStaves
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
        \new ChoirStaff
        <<
          \new Dynamics \unfoldRepeats \TempoTrack
          \new Dynamics \unfoldRepeats \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
      \new ChordNames \unfoldRepeats \ChordTrack
        \new FretBoards \with {
          stringTunings = #ukulele-tuning
        } \unfoldRepeats \ChordTrack
    >>
    \layout {
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames = ukulele \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff = melody
          <<
            \new Voice \melodySingle
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano
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
