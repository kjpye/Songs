\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'll See You Again"
  subtitle    = \markup {from \italic "Bitter Sweet"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Noel Coward"
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
  \key des \major
  \time 4/4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo Moderato 4=114
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "54a" } s1*4
  \textMark \markup { \box "54b" } s1*5
  \textMark \markup { \box "54c" } s1*4
  \textMark \markup { \box "55a" } s1*5
  \textMark \markup { \box "55b" } s1*5
  \textMark \markup { \box "55c" } s1*4
  \textMark \markup { \box "55d" } s1*4
  \textMark \markup { \box "56a" } s1*5
  \textMark \markup { \box "56b" } s1*5
  \textMark \markup { \box "56c" } s1*5
  \textMark \markup { \box "56d" } s1*5
  \textMark \markup { \box "57a" } s1*4
  \textMark \markup { \box "57b" } s1*4
  \textMark \markup { \box "57c" } s1*4
  \textMark \markup { \box "57d" } s1*5
  \repeat volta 2 {
    \textMark \markup { \box "58a" } s2.*6
    \textMark \markup { \box "58b" } s2.*6
    \textMark \markup { \box "58c" } s2.*7
    \textMark \markup { \box "59a" } s2.*6
    \textMark \markup { \box "59b" } s2.*4
    \alternative {
      { s2. \textMark \markup { \box "59c" } s2.*2 }
      { s2.}
    }
  }
  s2.*2
}

woman = \relative {
  \global
  R1*5
  des'8(ees f ges aes bes c des | ees des f c ees des aes f | des1) | R1 |
  R1*4 |
  e8(fis gis a b cis dis e | fis e gis dis fis e b gis | e1) | R1 | R | % 55a
  R1*18 |
  R1 | r8 ees'8(aes ees des c bes aes | c aes bes c aes bes c aes | c1~ | c) | % 56b
  f,2. ges4 | d ees ges bes | c2 ees | des4 c bes2 | f2. ges4 |
  d4 ees ges bes | c2 f | \tuplet 3/2 {ees4(des)c} bes2 | r8 c(f c bes c aes bes | c1) |
  r8 c(f c bes c aes bes | c1) | r4 ges4 4 4 | 4 8 8 4 4 | % 57a
  aes1 | 4 8 8 4 4 | bes1 | ges4 8 8 4 4 |
  c1 | cis4 8 8 4 4 | e1 | ees4 c bes aes |
  c4 aes g f | 1~ | 2. bes4 | e,1~ | e \section \time 3/4 \break |
  \repeat volta 2 {
    f2. | bes | f2 ees4 | 4. f8 ges aes | bes2. | ees | % 58a
    bes2 aes4 | 2. | ees'4 des c | bes c8 r r des | aes2.~ | 4. bes8 b c |
    ges2.~ | 4. aes8 a bes | f2. | e | aes | bes | f2 ees4 |
    ees4. f8 ges aes | bes2. | f'2. | ees2 des4 | 2. | f8 ees ges f ees d | % 59a
    c2. | ees8 des f ees des c | bes2. | c8 bes des c bes aes |
    \alternative {
      { ges2 f4 | des2 r4 | R2. |}
      {ges2 <f f'>4\fermata |}
    }
  }
  des'2.~ | 4 r r |
}

wordsWoman = \lyricmode {
  Ah __
  Ah __
  Ah __
  Learn -- ing scales will nev -- er seem so sweet a -- gain
  Till our des -- ti -- ny shall let us meet a -- gain.
  Ah __ Ah __
  When I'm re -- call -- ing the hours we've had
  Why will the fool -- ish tears
  Trem -- ble a -- cross the years?
  Why shall I feel so sad,
  Trea -- sur -- ing the mem -- 'ry of these days __ al -- ways? __
  \repeat volta 2 {
    I'll see you a -- gain
    When -- ev -- er spring breaks through a -- gain.
    Time may lie heav -- y be -- tween, __
    But what has been __ is past for -- get -- ting.
    This sweet mem -- o -- ry
    A -- cross the years will come to me;
    Tho' my world may go a -- wry.
    In my heart will ev -- er lie
    Just the ech -- o of a
    \alternative {
      { sigh, good -- bye. }
      { sigh, good -- }
    }
  }
  bye! __
}

wordsWomanMidi = \lyricmode {
  "Ah " 
  "\nAh " 
  "\nAh " 
  "\nLearn" "ing " "scales " "will " nev "er " "seem " "so " "sweet " a "gain "
  "\nTill " "our " des ti "ny " "shall " "let " "us " "meet " a "gain. "
  "\nAh "  "Ah " 
  "\nWhen " "I'm " re call "ing " "the " "hours " "we've " "had "
  "\nWhy " "will " "the " fool "ish " "tears "
  "\nTrem" "ble " a "cross " "the " "years? "
  "\nWhy " "shall " "I " "feel " "so " "sad, "
  "\nTrea" sur "ing " "the " mem "'ry " "of " "these " "days "  al "ways? " 
  \repeat volta 2 {
    "\nI'll " "see " "you " a "gain "
    "\nWhen" ev "er " "spring " "breaks " "through " a "gain. "
    "\nTime " "may " "lie " heav "y " be "tween, " 
    "\nBut " "what " "has " "been "  "is " "past " for get "ting. "
    "\nThis " "sweet " mem o "ry "
    "\nA" "cross " "the " "years " "will " "come " "to " "me; "
    "\nTho' " "my " "world " "may " "go " a "wry. "
    "\nIn " "my " "heart " "will " ev "er " "lie "
    "\nJust " "the " ech "o " "of " "a "
    \alternative {
      { "\nsigh, " good "bye. " }
      { "\nsigh, " good }
    }
  }
  "bye! " 
}

melody = \relative {
  \global
  R1\fermata | des'4 f aes des | c aes bes2 | 4 aes f ees |
  des1 | R | R | R | R |
  e4 gis b e | dis b cis2 | cis4 b gis fis | e1 |
  R1 | R | R | f2. ges4 | d ees ges bes | % 55a
  c2 ees | des4 c bes2 | f2. ges4 | d4 ees ges bes | c2 f |
  \tuplet 3/2 {ees4(des) c} bes2 | r4 aes4 4 4 | 1 | r4 aes4 4 4 |
  aes1 | r4 ges4 4 4 | 4 4 4 4 | aes1 |
  aes4 8 8 4 4 | bes1 | ges4 8 8 4 4 | c1 | cis4 8 8 4 4 | % 56a
  e1 | ees4 c bes aes | c aes g f | c'1( | d,) |
  R1*5 |
  R1 | R | R | r4 aes'4 4 4 | 1 |
  r4 aes4 4 4 | 1 | R | R | % 57a
  R1*4 |
  R1 | R | R | r8 ees'( aes ees des c bes aes |
  c8 aes bes c aes bes c aes | c1) | R | R | R | \section \time 3/4
  \repeat volta 2 {
    aes2. | f | aes2 ges4 | 4. aes8 bes c | ges'2. | c, | % 58a
    g2 aes4 | aes2. | 4 4 4 | des c8 r r bes | c2.~ | 4. 8 ges' ges |
    bes,2.~ | 4. ges8 8 8 | des'2. | c | aes | f | aes2 ges4 |
    ges4. aes8 bes c | ges'2. | c,2. | aes2 4 | ces2. | R | % 59a
    R2. | R | R | f8 8 8 8 d d |
    \alternative {
      { ees2 aes4 | f2 r4 | R2. | }
      { ees2 aes4 | }
    }
  }
  f2.~ | 4 r r |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Now, Miss Sar -- ah, if you please,
  Sing a scale for me.
  Take a breath and then re -- prise in a dif -- f'rent key.
  All my life I shall re -- mem -- ber know -- ing you;
  All the plea -- sure I have found in show -- ing you
  The dif -- f'rent ways
  That one may phrase,
  The chang -- ing light and chang -- ing shade,
  Hap -- pi -- ness that must die,
  Mel -- o -- dies that must fly.
  Mem -- o -- ries that must fade
  Dus -- ty and for -- got -- ten by and by. __
  The will of fate
  may come too late.
  Ah __
  \repeat volta 2 {
    I'll see you a -- gain
    When -- ev -- er spring breaks through a -- gain.
    Time may lie heav -- y be -- tween, __
    But what has been __ is past for -- get -- ting.
    This sweet mem -- o -- ry
    A -- cross the years will come to me;
    Just the ech -- o of a
    \alternative {
      { sigh, good -- bye.}
      { sigh, good -- }
    }
  }
  bye! __
}

midiWords = \lyricmode {
  "Now, " "Miss " Sar "ah, " "if " "you " "please, "
  "\nSing " "a " "scale " "for " "me. "
  "\nTake " "a " "breath " "and " "then " re "prise " "in " "a " dif "f'rent " "key. "
  "\nAll " "my " "life " "I " "shall " re mem "ber " know "ing " "you; "
  "\nAll " "the " plea "sure " "I " "have " "found " "in " show "ing " "you "
  "\nThe " dif "f'rent " "ways "
  "\nThat " "one " "may " "phrase, "
  "\nThe " chang "ing " "light " "and " chang "ing " "shade, "
  "\nHap" pi "ness " "that " "must " "die, "
  "\nMel" o "dies " "that " "must " "fly. "
  "\nMem" o "ries " "that " "must " "fade "
  "\nDus" "ty " "and " for got "ten " "by " "and " "by. " 
  "\nThe " "will " "of " "fate "
  "\nmay " "come " "too " "late. "
  "\nAh " 
  \repeat volta 2 {
    "\nI'll " "see " "you " a "gain "
    "\nWhen" ev "er " "spring " "breaks " "through " a "gain. "
    "\nTime " "may " "lie " heav "y " be "tween, " 
    "\nBut " "what " "has " "been "  "is " "past " for get "ting. "
    "\nThis " "sweet " mem o "ry "
    "\nA" "cross " "the " "years " "will " "come " "to " "me; "
    "\nJust " "the " ech "o " "of " "a "
    \alternative {
      { "\nsigh, " good "bye. " }
      { "\nsigh, " good }
    }
  }
  "bye! " 
}

pianoRHone = \relative {
  \global
  R1\fermata | <f aes des>1 | \voiceOne c''4(aes) \voiceTwo aes^(ges) | \voiceOne <bes, bes'> <aes aes'> \oneVoice <ges bes aes'> <ges c ees> |
  <f aes des>1 | <aes des> <des f aes> | <f, aes des>~ | 4 4 <fis a d> <a b dis> |
  <gis b e>1 | \voiceOne dis''4(b) \voiceTwo b(a) \voiceOne | <cis, cis'> <b b'> \oneVoice <a cis gis'> <a dis fis> | <gis b e>1 |
  <b e>1 | <e gis b> | \voiceOne e2 dis4 e | f2. ges4 | d4(ees <bes des g> <des ees g bes>) | % 55a
  <c c'>2 <ees ees'> | <des f aes des>4 <c c'> <bes bes'>2 | <f f'>2. <ges ges'>4 | d'4(ees ges bes) | <c, c'>2 <f f'> |
  \tuplet 3/2 {<ees aes ees'>4 <des des'> <c c'>} <bes bes'>2 | \arpeggioParenthesis <c f c'>4\arpeggio \oneVoice r r2 | r4 \voiceOne <f aes>2. | \grace <c f aes c>8 q4 \oneVoice r r2 |
  r8 \voiceOne c(d f aes c bes aes) | ges4 4(bes des) | 4(c8 bes c4 aes) | <bes, f' bes>1 |
  bes'4(aes8 ges aes4 ees) | <bes f'>1 | des'4(c8 bes c4 aes) | <c, f a c>1 | <e gis cis e>4(<dis dis'>8 <c c'> <dis dis'>4 <b b'>) | % 56a
  <cis cis'>1 | ees'4 c bes aes | c aes g f | <d aes' c> <aes' c d> <c des f> <c des f aes> | <f aes c> <c d f aes> <aes c des f> <d, aes' c> |
  f2. ges4 | d(ees ges bes) | <c, c'>2 <ees ees'> | <des f aes des>4 <c c'> <bes bes'>2 | <f f'>2. <ges ges'>4 |
  d'(ees ges bes) | <c, c'>2 <f f'> | \tuplet 3/2 {<ees aes ees'>4 <des des'> <c c'>} <bes bes'>2 | <c f c'>4 \oneVoice r4 r2 | r4 \voiceOne <f aes>2. |
  \grace <c f aes c>8 q4 \oneVoice r4 r2 | r8 \voiceOne c(d f aes c bes aes) | ges4 4(bes des) | des(c8 bes c4 aes) | % 57a
  <bes, f' aes bes>1 | bes'4( aes8 ges aes4 ees) | <bes f'>1 | des'4(c8 bes c4 aes) |
  <c, f a c>1 | <e gis cis e>4(<dis dis'>8 <c c'> <dis dis'>4 <b b'>) | <cis cis'>1 | ees'4 c bes aes |
  c4 aes g f | <d aes' c> <aes' c d> <c d f> <c d f aes> | <d f aes c> <c d f aes> <aes c d f> <f aes c d> | <e g bes> <g bes des e> <bes des e g> <des e g bes> | <c e bes'> <bes e ges> <ges bes e> <c, e bes'> \section \time 3/4 |
  \repeat volta 2 {
    <f, f'>2. | <bes bes'> | <f f'> | ees'4.(<f, f'>8 <ges ges'> <aes aes'>) | <bes bes'>2. | <ees ees'> | % 58a
    <bes bes'>2 <aes des f aes>4 | <aes aes'>2. | <ees' ees'>4 <des f aes des> <c c'> | <bes bes'> <c e g c> \caesura \oneVoice r8 \voiceOne <des des'> | <aes aes'>2.~ | 4. <bes bes'>8 <b ges' b> <c c'> |
    <ges ges'>2.~ | 4. <aes aes'>8 <a a'> <bes bes'> | <f f'>2. | <ees ees'> | <f f'> | <bes bes'> | <f f'>2 <ees ees'>4 |
    <ees ees'>4. <f f'>8 <ges ges'> <aes aes'> | <bes bes'>2. | <f' f'> | <ees ees'>2 <des f bes des>4 | <des des'>2. | <f f'>8 <ees ees'> <ges ges'> <f f'> <ees ees'> <des des'> | % 59a
    <c c'>2. | <ees ees'>8 <des des'> <f f'> <ees ees'> <des des'> <c c'> | <bes bes'>2. | <c c'>8 <bes bes'> <des des'> <c c'> <bes bes'> <aes aes'> |
    \alternative {
      {<ges ges'>2 <f' aes c f>4 | <des f des'>4 f'(aes, | g c <ges bes>) |}
      {<ges, ges'>2 <aes' c f aes>4 |}
    }
  }
  <des f aes>2.\fermata | s2. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1 | s | <c' f>2 \voiceOne <bes des> | \voiceTwo f'2 s |
  s1 | s | s | s | s |
  s1 | <dis gis>2 \voiceOne <cis e cis'> | \voiceTwo ges'2 s | s1 |
  s1 | s | <gis, b>1 | r4 <ges bes>2~4 | 2 s | % 55a
  r4 <ges aes> r q | s2 r4 <des f> | r4 <ges bes>2 r4 | <ges bes>2 s | r4 <ges' aes> r q |
  s2 r4 <des f> | s1 | s4  des8(c b4 des) | s1 |
  s1 | des1 | <des ges>2 <c ges'> | s1 |
  <c ges'>2 c | s1 | <des ges>2 <c ges'> | s1 | s1 | % 56a
  r4 <e g>2 4 | <ees aes>1 | <c f>2 <aes c> | s1 | s |
  r4 <ges bes>2~4 | 2 <bes ees> | r4 <ges' aes> r q | s2 r4 <des f> | r4 <ges bes>2. |
  <ges, bes>2 s | r4 <ges' aes> r <aes c> | s2 r4 <des, f> | s1 | s4 des8(c b4 des) |
  s1 | s | des1 | <des ges>2 <c ges'> | % 57a
  s1 | <c ges'>2 c | s1 | <des ges>2 <c ges'> |
  s1 | s | r4 <e g>2 4 | <ees aes>1 |
  <c f>2 <aes c> | s1 | s | s | s |
  \repeat volta 2 {
    r4 <aes des>4 4 | r <d f> q | r <ges, bes> <ees ees'> | r q s | r <des' ges> q | r <ges aes> q | % 58a
    r4 <des f> s | r q q | s2. | s | r4 <c ges'> q | r q s |
    r4 <bes ees> q | r q s | r <g des'> q | r <bes c>8~(<aes c>) <g c>~(<ges c>) | r4 <aes des> q | r <d f> q | r <ges, bes> s |
    r4 <ges bes> s | r <des' ges> q | r <aes' c> q | r <f aes> s | r <f ces'> q | bes2. | % 59a
    r4 <ees, ges>(~<ees f>) | <f bes>2. | r4 <des g> q | << <f aes>2. \new Voice {s2 \voiceFour d4}>> |
    \alternative {
      {r4 <bes des ees>4 s | s2. | des2 c4 |}
      {r4 <bes des ees> s}
    }
  }
  r8 <f' des'> <aes f'> <des aes'> <f des'> <aes f'> | <des aes'>4 \oneVoice r4 r |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\p\< | s\> | s\! |
  s1*27 |
  s1 | s | s | s | s1\< | % 56a
  s1\! s\p | s | s | s |
  s1*18 |
  s1 | s\< | s\! | s | % 57c
  s1 | s | s | s\< | s\> |
  \repeat volta 2 {
    s2.-\markup  {\dynamic p - \dynamic f} | s | s | s | s | s | % 58a
    s2.*23
    \alternative {
      {s2\> s4\p | s2. | s |}
      {s2.}
    }
  }
  s2. | s\sf |
}

dynamicsPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s1 | s\p\< | s\> | s\! |
  s1*27 |
  s1 | s | s | s | s1\< | % 56a
  s1\! s\p | s | s | s |
  s1*18 |
  s1 | s\< | s\! | s | % 57c
  s1 | s | s | s\< | s\> |
  s2.\p f | s | s | s | s | s | % 58a
  s2.*22
  s2\> s4\p | s2. | s |
  s2.\f | f | s | s | s | s | s | % 58a
  s2.*22
  s2.
  s2. | s\sf |
}

pianoLHone = \relative {
  \global
  aes1\fermata | <des,, aes'> \arpeggioParenthesis <f c' aes'>2\arpeggio <ges des> | aes aes, |
  des4( g bes aes) | <des, aes' f'>1\arpeggio | <des' aes'> | <des, des'>1~ | 4 <des aes'> <d a'> <b fis'> |
  <e b'>1 | <gis dis' b'>2\arpeggio <a e'> | b b, | e4( gis cis b) |
  <e b gis'>1\arpeggio | <e b'> | <e, b'> | ees4 bes'2 ges'4 | \voiceOne d(ees ges bes) \oneVoice | % 55a
  aes,4 ees' aes aes, | des, aes' f'2 | ees,4 bes'2 ees4 | \voiceOne d(ees ges bes) \oneVoice | aes, ees' aes aes, |
  des,4 aes' f'2 | <f, c' aes'>4\arpeggio r r2 | f4(c' aes'2) | <f, c' aes'>4\arpeggio r r2 |
  f4(c' f aes) | <ees bes'>1 | \voiceOne ees2 aes \oneVoice | des,,4(aes' f' aes) |
  \voiceOne ees2 aes \oneVoice | des,,4(aes' f' aes) | \voiceOne ees2 aes \oneVoice | f,4( c' f a) | cis,,( gis' e' gis) | % 56a
  ais,4(e' g ais) | <ees c'>1 | <f aes>2 <f, c'> | <bes aes'>1~ | q
  \voiceOne f'2.\arpeggio ges4 | d(ees ges bes) \oneVoice | aes, ees' aes aes, | des, aes' f'2 | ees,4 bes'2 ees4 |
  \voiceOne d4(ees ges bes) \oneVoice | aes, ees' aes aes, | des, aes' f'2 | <f, c' aes'>4\arpeggio r r2 | f4(c' aes'2) |
  <f, c' aes'>4\arpeggio r r2 | f4(c' aes'2) | <ees bes'>1 | \voiceOne ees2 aes \oneVoice | % 57a
  des,,4(aes' f' aes) | \voiceOne ees2 aes \oneVoice | des,,4( aes' f' aes) | \voiceOne ees2 aes \oneVoice |
  f,4(c' f a) | cis,,(gis' e' gis) | ais,(e' g ais) | <ees c'>1 |
  <f aes>2 <f, c'> | <bes f' aes>1~ | 1 | <ees, des' g>1 | <aes ges' c> \section \time 3/4 |
  \repeat volta 2 {
    <des, des'>2. | <bes bes'> | ees | ees | <ees ges'>\arpeggio | <aes c'>\arpeggio | % 58a
    des,4 <aes' f'> aes, | des <aes' f'>2 | \voiceOne r4 <des aes'>2 | r4 <des g> r \oneVoice | ees,2. | aes, |
    \voiceOne r4 <bes' ges'>2 \oneVoice | ees,4 <bes' ges'>2 | ees,2. | aes2 aes,4 | des2. | bes | ees4 bes' bes, |
    ees4 <bes' ges'> r | ees,2. | <aes ges'> | des,4 <aes' f'>2 | des,4 d'2 | ges,4 <ges' bes>2 | % 59a
    \voiceOne f,4 bes'(a) \oneVoice | bes,4 bes'2 | e,,2. | \voiceOne f4 <des' aes'> bes \oneVoice |
    \alternative {
      {ees,2 aes4 | des, aes'(f' | \voiceOne fes2 ees4) \oneVoice }
      {ees,2 <aes' ges'>4 |}
    }
  }
  \arpeggioNormal <des,, aes'' f' aes>2.\arpeggio\fermata | <des aes'>4 r r |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s1*13 |
  s1 | s | s | s | ges, | % 55a
  s1 | s | s | ges | s |
  s1*4 |
  s1 | s | aes | s |
  aes1 | s | aes | s | s | % 56a
  s1*5 |
  \override Staff.Arpeggio.stencil = #ly:arpeggio::brew-chord-slur % \arpeggioParenthesis
  <ees bes'>1\arpeggio | ges | s | s | s |
  ges1 | s | s | s | s |
  s1 | s | s | aes | % 57a
  s1 | aes | s | aes |
  s1*4 |
  s1*5 |
  \repeat volta 2 {
    s2.*6 | % 58a
    s2. | s | f | e | s | s |
    ees2. | s | s | s | s | s | s |
    s2.*6 | % 59a
    ges2. | s | s | ges2 bes4 |
    \alternative {
      {s2. | s | aes |}
      {s2.}
    }
  }
  s2. | s |
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff = woman \with {
            instrumentName = "She"
            shortInstrumentName = "She"
            \consists "Volta_engraver"
          }
          <<
            \new Voice \woman
            \addlyrics \wordsWoman
          >>
          \new Staff = melody \with {
            instrumentName = "He"
            shortInstrumentName = "He"
            \consists "Volta_engraver"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
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
          \new Staff \with {
            \consists "Span_arpeggio_engraver"
          }
          <<
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff = woman \with {
            instrumentName = "She"
            shortInstrumentName = "She"
            \consists "Volta_engraver"
          }
          <<
            \new Voice \woman
            \addlyrics \wordsWoman
          >>
          \new Staff = man \with {
            instrumentName = "He"
            shortInstrumentName = "He"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff \with {
            \consists "Span_arpeggio_engraver"
          }
          <<
            \clef "bass"
            \set Staff.connectArpeggios = ##t
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
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "woman" \woman
            \new Lyrics \lyricsto "woman" { \wordsWomanMidi }
          >>
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
