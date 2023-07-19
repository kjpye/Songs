\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My God is a Rock"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Negro Spiritual"
  arranger    = "Arr. Alice Parker & Robert Shaw"
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
  \time 4/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Slow swing" 4=100
  s4 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s4 s1*3
  \textMark \markup { \box "2b" }    s1*4
  \textMark \markup { \box "3a" }    s1*3
  \textMark \markup { \box "3b" }    s1*4
  \textMark \markup { \box "4a" }    s1*4
  \textMark \markup { \box "4b" }    s1*3
  \textMark \markup { \box "5a" }    s1*3
  \textMark \markup { \box "5b" }    s1*3
  \textMark \markup { \box "6a" }    s1*4
  \textMark \markup { \box "6b" }    s1*3
  \textMark \markup { \box "7a" }    s1*3
  \textMark \markup { \box "7b" }    s1*3
  \textMark \markup { \box "8a" }    s1*3
  \textMark \markup { \box "8b" }    s1*3
  \textMark \markup { \box "9a" }    s1*3
  \textMark \markup { \box "9b" }    s1*3
  \textMark \markup { \box "10a" }    s1*3
  \textMark \markup { \box "10b" }    s1*3
  \textMark \markup { \box "11a" }    s1*3
  \textMark \markup { \box "11b" }    s1*3
  \textMark \markup { \box "12a" }    s1*3
  \textMark \markup { \box "12b" }    s1*3
  \textMark \markup { \box "13a" }    s1*3
  \textMark \markup { \box "13b" }    s1*3
  \textMark \markup { \box "14a" }    s1*3
  \textMark \markup { \box "14b" }    s1*2
  \textMark \markup { \box "15a" }    s1*3
  \textMark \markup { \box "15b" }    s1*3
  \textMark \markup { \box "16a" }    s1*3
  \textMark \markup { \box "16b" }    s1*3
  \textMark \markup { \box "17a" }    s1*3
  \textMark \markup { \box "17b" }    s1*3
  \textMark \markup { \box "18a" }    s1*3
  \textMark \markup { \box "18b" }    s1*3
  \textMark \markup { \box "19a" }    s1*3
  \textMark \markup { \box "19b" }    s1*5
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1*55 |
  s1 | s-\markup\upright\bold "As a heavy blues" | s | % 10b
  s1*12 |
  s1 | s | s^\markup\upright Solo | s1*3 | % 13
  s1*17 |
  s1 | s | s4. s8\> s2 | s1\! | s | s | % 17
  s1*14 |
}

solo = \relative {
  \global
  r4 | R1*14 |
  R1 | R | \time 2/2 d8^\markup\italic "crisply; rhythmically" d d d f f f f | d4 d f4 8 8 | % 4a
  d4 d f d | f d8 8~2 | 8 8 8 8 f f f f |
  d4 d f4 8 8 | d4 d f8 f d4 | g4 f8 d~2 | % 5a
  d8 d d d f f f f | d4 d f4 8 8 | \time 4/4 d4-- d-- f-- f-- |
  a4. f8 d4. r8 | R1*3 | % 6a
  R1*3 |
  R1*6 | % 7
  R1*3 | % 8a
  R1 \time 2/2 | d8 d d d f f f f | d4 8 f4 4 8 |
  d4 d f8 d4. | f4 8 d~2 | 8 8 8 8 f f f f | % 9a
  d4 8 f~4 8 8 | d4 d f f | g4 8 d~2 |
  d8 d f f a a a a | d,4 f8 a~4. 8 \time 4/4 | d,4 8 8 f f g g | % 10a
  a8(g) f d~4. r8 | R1*2 |
  R1*6 | % 11
  R1*6 | % 12
  R1 | R | d4 8 8 f f f f | % 13a
  d4 d f2 | d4 d f f | g4 8 d~2 |
  f4 8 8 a a a a | f4 f a2 | f4 8 8 g g g g | % 14a
  a4 8 d,~2 | a'8 8 8 8 d d d d |
  a4 a d2 | a4 4 8(f4) g8 | a8 4 f8 a2 | % 15a
  d8 d d d a a a a | 4 4 d2 | a4 8 8 d d d d |
  f2. 4 | d2 r8 a4 g8 | a4(d,~8) a'4 f8 | % 16a
  g4(a8 d,~2) | R1 | r2 r8 a'4 g8 |
  a4(d4~8) a4 f8 | g4(a8 d~2) | r8 d4 c8 d a f g | % 17a
  a8 a g f d4 f8 g | a4. 8 2 | g4. 8 4 a8 g |
  f4. 8 d a'4 g8 | a8 a g f d4 f8 g | a4. 8 4. r8 | % 18a
  g8 g f d f4 f | d1 | R |
  R1*8 | % 19
}

wordsSolo = \lyricmode {
  Stop 'n' let me tell you 'bout de Chap -- ter One,
  When de Lord God's work was jes' be -- gun, __
  Stop 'n' let me tell you 'bout de Chap -- ter Two,
  When de Lord God's writ -- ten His Bi -- ble through. __
  Stop 'n' let me tell you 'bout de Chap -- ter Three,
  When de Lord God dies on Cal -- va -- ry.
  Stop 'n' let me tell you 'bout de Chap -- ter Four,
  When de Lord God vis -- it 'mong de po', __
  Stop 'n' let me tell you 'bout de Chap -- ter Five __
  When de Lord God brought de dead a -- live, __
  Stop 'n' let me tell you 'bout de Chap -- ter Six, __
  He went in Je -- ru -- sa -- lem an' healed de sick. __
  Stop, let me tell you 'bout de Chap -- ter Sev'n,
  Died and ris'n an' went to Heav'n, __
  Stop, let me tell you 'bout de Chap -- ter Eight,
  John seen Him stand -- in' at de Gold -- en Gate. __
  Stop 'n' let me tell you 'bout de Chap -- ter Nine,
  Lord God turned __ de wa -- ter to wine,
  Stop 'n' let me tell you 'bout de Chap -- ter Ten,
  John says He's com -- in' in de world a -- gain.
  O my Lord, __ O my Lord, __
  O my Lord, __ O my Lord, __
  O my Je -- sus, an' I know He is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  An' I know He is a rock in a wea -- ry land,
  Shel -- ter in a time of storm.
}

wordsSoloMidi = \lyricmode {
  "Stop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "One, "
  "\nWhen " "de " "Lord " "God's " "work " "was " "jes' " be "gun, " 
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Two, "
  "\nWhen " "de " "Lord " "God's " writ "ten " "His " Bi "ble " "through. " 
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Three, "
  "\nWhen " "de " "Lord " "God " "dies " "on " Cal va "ry. "
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Four, "
  "\nWhen " "de " "Lord " "God " vis "it " "'mong " "de " "po', " 
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Five " 
  "\nWhen " "de " "Lord " "God " "brought " "de " "dead " a "live, " 
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Six, " 
  "\nHe " "went " "in " Je ru sa "lem " "an' " "healed " "de " "sick. " 
  "\nStop, " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Sev'n, "
  "\nDied " "and " "ris'n " "an' " "went " "to " "Heav'n, " 
  "\nStop, " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Eight, "
  "\nJohn " "seen " "Him " stand "in' " "at " "de " Gold "en " "Gate. " 
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Nine, "
  "\nLord " "God " "turned "  "de " wa "ter " "to " "wine, "
  "\nStop " "'n' " "let " "me " "tell " "you " "'bout " "de " Chap "ter " "Ten, "
  "\nJohn " "says " "He's " com "in' " "in " "de " "world " a "gain. "
  "\nO " "my " "Lord, "  "O " "my " "Lord, " 
  "\nO " "my " "Lord, "  "O " "my " "Lord, " 
  "\nO " "my " Je "sus, " "an' " "I " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nAn' " "I " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*7 |
  s2. s4\f | s1 | s | s | s2 s4\< s\! | s1 | s | % 3
  s1*7 | % 4
  s1*6 | % 5
  s1\mp | s1*6 | % 6
  s1 | s2 s8 s4.\f | s2.\> s4\! | s1*3 | % 7
  s1*3 | s1\> | s\! | s1\omit\p-\markup{\dynamic p \italic "poco marc."} | % 8
  s1 | s | s2. s4\mp | s1*3 | % 9
  s1 | s\mf | s\< | s2.\> s4\mp | s1 | s | % 10
  s1*5 | s2 s8 s4.\f | % 11
  s1*6 | % 12
  s1*6 | % 13
  s1 | s | s2 s\mp\< | s1\! | s | % 14
  s8 s2..\mf | s1 | s2 s\< | s1\f | s | s\< | % 15
  s1\! | s\ff | s1*4 | % 16
  s1 | s | s4. s8\> s2 | s1\! | s | s | % 17
  s2 s8 s4.\p | s1*5 | % 18
  s1*8 | % 19
}

soprano = \relative {
  \global
  a'4 | a g8 f d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g |
  f4. 8 d2~ | d1~ | d2. r4 | g8 g f d f4 f |
  d2 r4 d' | d8 a g f d4 f8 g |a4. 8 4 r | % 3a
  g4. 8 4 a8 g | f4. 8 d4 d' | d8 a g f d4 f8 g | a4. 8 4 r |
  g8 g f d f4 f | d2. r4 \time 2/2 | d1->~ | 2 r8 d4^\markup "(almost spoken)" 8 | % 4a
  d1~ | 2 r8 4 8 | d1~ |
  d2 r8 4 8 | 1~ | 2 r8 4 8 | % 5a
  f4 d2.~ | 2 r8 4 8 \time 4/4 | d1 |
  a'4. f8 d a'4 g8 |a4 g8 f d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g | % 6a
  f4. 8 d4 a' | a g8 f d4 f8 g | a4. 8 4 r |
  g8 g f d f4 f | d2 r8 d'4 c8 | d2. 4-^ | % 7a
  c4 a8 c~4 d8 c | a2. g4 | a2 r8 d4 c8 |
  d2. 4-^ | c-^ a8 c~4 d8 c | a a a a c4 c | % 8a
  \voiceOne d1~ | \time 2/2 d1 \oneVoice | d,8 4 8 f4 f |
  a1~ | 2 r8 a a g | a2. d,8 d | % 9a
  d8 4 d8 f4 f | a1 | r8 d4 c8 d4 a~ |
  a1 | 4 4 c2 \time 4/4 | d1( | % 10a
  c2 d4) \breathe a8 g | a4 g8 f d4 f8 g | a4 8 8~4. r8 |
  g4 8 8~4 a8 g | f4 8 d~4 a'8(g) | a4 g8 f d4 f8 g | % 11a
  a4 8 8~4. r8 | g g f d f4 f | d2 r8 d'4-- c8 |
  d4^^ a2^^ 8 8 | g4 a8 d~8 d4-- c8 | d4 g,2 8 8 | % 12a
  a4 8 d~8 e(f) e | d4 a r8 f'4^^ e8 | d4 a r8 d4 e8 |
  f4-- f-- e4.-- c8-- | d1-> | R | % 13a
  R1*3 |
  R1*2 r2 a2~ | % 14a
  a4 8 8 8 8 8 8 | d4 8 d,~2 |
  r8 d4 8 4 4 | r8 d4 8 4 4 | r8 d4 8 d d f a | % 15a
  d4 d r8 d4 8 | d4 d r8 d4 e8 | f2 g |
  a1( | d,8-.) 4-- c8 d4 a | r8 d4 c8 d4 a | % 16a
  r8 d4 c8 d4 g, | r8 d'4 c8 d e f g | r a4 g8 a4^^ d,^^ |
  r8 a'4 g8 a4^^ d,^^ ~ | 4 8 e e4 f8(e) | d1 | % 17a
  R1*3 |
  r2 r8 a4(~8 | d a g f d4 f8 g | a2~4.) r8 | % 18a
  g4(f8 d f2 | d1) | R |
  R1*3 | % 19a
  R1*5 |
  \bar "|."
}

wordsSop = \lyricmode {
  My God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land. __
  Shel -- ter in a time of storm.
  I know He is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  I know He is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 4a
  Hum, __
  Chap -- ter One. __ Hal -- le -- lu, __
  Chap -- ter Two, __ O de Bi -- ble, __ % 5a
  Chap -- ter Three, Cal -- va -- ry!
  An' my God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  My God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 7a
  An' I know my God's a rock in a wea -- ry land,
  An' I know my God's a rock, __
  An' a shel -- ter in a time of storm. __
  Lis -- sen tuh Chap -- ter Four, __
  He know de po',
  Stop 'n' lis -- sen to Chap -- ter Five,
  Hal -- le -- lu -- jah, __
  Chap -- ter Six, Ah, __ % 10a
  O my God is a rock in a wea -- ry land, __
  wea -- ry land, __ in a wea -- ry land, __
  My __ God is a rock in a wea -- ry land, __
  Shel -- ter in a time of storm.
  Oh, I know Him in a wea -- ry land, __ % 12a
  Oh, I know Him in a wea -- ry land, __
  Oh, __ I know Him, Oh, __ I know Him,
  he's a shel -- ter in de storm. % 13a
  Oh, __ He was knock -- in' at de Gold -- en Gate, __ % 14
  O my Je -- sus, O my Je -- sus,
  O my Je -- sus, hear me, Je -- sus,
  O my Je -- sus, Hal -- le -- lu, my Lord. __

  O my Je -- sus, O my Je -- sus,
  O my Je -- sus, O my Je -- sus, an' a,
  O my Je -- sus, O my Je -- sus, __
  in a time of __ storm.
  Hm __ Hm __
}

wordsSopMidi = \lyricmode {
  "My " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land. " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 4a
  "\nHum, " 
  "\nChap" "ter " "One. "  Hal le "lu, " 
  "\nChap" "ter " "Two, "  "O " "de " Bi "ble, "  % 5a
  "\nChap" "ter " "Three, " Cal va "ry! "
  "\nAn' " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 7a
  "\nAn' " "I " "know " "my " "God's " "a " "rock " "in " "a " wea "ry " "land, "
  "\nAn' " "I " "know " "my " "God's " "a " "rock, " 
  "\nAn' " "a " shel "ter " "in " "a " "time " "of " "storm. " 
  "\nLis" "sen " "tuh " Chap "ter " "Four, " 
  "\nHe " "know " "de " "po', "
  "\nStop " "'n' " lis "sen " "to " Chap "ter " "Five, "
  "\nHal" le lu "jah, " 
  "\nChap" "ter " "Six, " "Ah, "  % 10a
  "\nO " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nwea" "ry " "land, "  "in " "a " wea "ry " "land, " 
  "\nMy "  "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nOh, " "I " "know " "Him " "in " "a " wea "ry " "land, "  % 12a
  "\nOh, " "I " "know " "Him " "in " "a " wea "ry " "land, " 
  "\nOh, "  "I " "know " "Him, " "Oh, "  "I " "know " "Him, "
  "\nhe's " "a " shel "ter " "in " "de " "storm. " % 13a
  "\nOh, "  "He " "was " knock "in' " "at " "de " Gold "en " "Gate, "  % 14
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "hear " "me, " Je "sus, "
  "\nO " "my " Je "sus, " Hal le "lu, " "my " "Lord. " 

  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "an' " "a, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " 
  "\nin " "a " "time " "of "  "storm. "
  "\nHm "  "Hm " 
}

sopranoSolo = \relative {
  \global \voiceTwo
  s4 | s1*43 |
  r8^\markup{\tiny \box "One voice solo"} d''4 c8 d c a g | f(d4.~2) | % 8b
}

wordsSopSolo = \lyricmode {
  And a shel -- ter in a storm. __
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*7 |
  s2. s4\f | s1 | s | s | s | s | s | % 3
  s1 | s | s\p | s1*4 | % 4
  s1*6 | % 5
  s1\mp | s1*6 | % 6
  s1 | s2 s8 s4.\f | s1*4 | % 7
  s1*3 | s1\> | s\! | s1\omit\p-\markup{\dynamic p \italic "poco marc."} | % 8
  s1 | s | s2. s4\mp | s1*3 | % 9
  s1\mf | s | s\< | s2.\> s4\mp | s1 | s | % 10
  s1*6 | % 11
  s1\f | s1*5 | % 12
  s1*4 | s8 s\omit\p-\markup{\dynamic p \italic legato} s2. | s1 | % 13
  s8 s2..\mp | s1 | s8 s2..\mp | s1 | s2 s8 s4.\mf | % 14
  s1 | s | s | s1\f | s | s\< | % 15
  s1\! | s\ff | s1*4 | % 16
  s1 | s | s4. s8\> s2 | s8\! s2..\p | s1 | s | % 17
  s1*6 | % 18
  s1 | s | s2. s4\pp | s1 | s | s | s\ppp | s | % 19
}

rq = { \oneVoice r4 \voiceOne }
re = { \oneVoice r8 \voiceOne }

alto = \relative {
  \global
  a'4 | a g8 f d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g |
  f4. 8 d4 \breathe a'4^^ | a g8 f d4 f8 g | a4. 8 4 r | g8 g f d f4 f |
  d2 r4 d | 2. 8 8 | 4. 8 4 8 8 | % 3a
  d4. 8 4 r | a4. 8 d4 d | 2. 8 8 | 4. 8 4 r |
  g,8 8 8 8 a4 a | d2. r4 \time 2/2 | d1-> ~ | 2 r8 4^\markup "(almost spoken)" 8 | % 4a
  d1~ | 2 r8 4 8 | 1~ |
  d2 r8 4 8 | 1~ | 2 r8 4 8 | % 5a
  f4 d2.~ | 2 r8 4 8 \time 4/4 | 1 |
  f4. e8 d8 4 8 | 4 8 8 4 8 8 | 4. 8 4 r | 4. 8 4 8 8 | % 6a
  d4. 8 4 4 | 4 8 8 4 8 8 | 4. 8 4 r |
  g,8 8 8 8 a4 a | d2 r8 a'4 8 | a a g f d4 f8 g | % 7a
  a4. 8 4 r | g4. 8 4 a8 g | f4. 8 d4 a' |
  a8 a g f d4 f8 g | a4. 8 4 r | g8 g f d f4 f | % 8a
  d1~ | \time 2/2 d | d8 4 8 f4 f |
  a1~ | 2 r8 d, d d | d2. 8 8 | % 9a
  d8 4 8 f4 f | a1 | r8 a4 8 4 4 \breathe |
  d,4 8 8 f8 4 8 | 4 4 2 \time 4/4 | f1( | % 10a
  g2 f4) \breathe a8 g | f4 e8 d8 4 8 e | f4 8 8~4. r8 |
  d4 8 8~4 8 8 | cis4 8 d~4 f | f e8 d8 4 8 e | % 11a
  f4 8 8~4. r8 | d8 d d d cis4 4 | d1 |
  a'4-> g8 f d4 f8 g | a4 8 8~4. r8 | g4 8 8~4 a8 g | % 12a
  f4 8 d~4. r8 | a'4 g8 f d4 f8 g | a4 8 8~4. r8 |
  g8 g f d f4 f | d1 | R | % 13a
  R1 | r8 d4 8 4 4 | r8 d4 8 4 4 |
  r8 d4 8 4 4 | r8 \voiceOne f4^\markup div. 8 2 | \re f4 8 g2 | % 14a
  \re f4 8 a4 a | a a \re a4 8 |
  a4 a \re 4 8 | g4 g \re a4 bes8 | a4 2. | % 15a
  a4 a \re 4 8 | 4 4 \re 4 8 | bes2 2 |
  a2~8 4-- g8 | a4 g8 f d4 f8 g | a4 8 8~2 | % 16a
  g4 8 8~4 a8 g | f4 8 d~4 a' | d4 8 8 a4 8 8 |
  d4 a8 d~4. \re | bes8 8 8 d cis4 4 | d1 | % 17a
  \re a4 g8 a4 d, | \re a'4 g8 a4 d, | \re g4 a8 bes4 g |
  \re a4 g8 a4 d, | \oneVoice r8 d4^\markup unis. 8 4 4 | r8 4 8 4 4 | % 18a
  r2 d | 1 | R |
  R1 | R | r2 r4 a'4(~ | % 19a
  a4 g8 f d4 f8 g | a1 | g2 f4 d) | f1 | d\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  My God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land. __
  My God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm.
  I know in a wea -- ry land,
  in a wea -- ry land, wea -- ry land,
  I know in a wea -- ry land,
  Shel -- ter in a time of storm. % 4a
  Hum, __
  Chap -- ter One. __ Hal -- le -- lu, __
  Chap -- ter Two, __ O de Bi -- ble, __ % 5a
  Chap -- ter Three, Cal -- va -- ry!
  An' my God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  My God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 7a
  An' I know He is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  I know He is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. __
  Lis -- sen tuh Chap -- ter Four, __
  He know de po',
  Stop 'n' lis -- sen to Chap -- ter Five,
  Hal -- le -- lu -- jah, __
  Stop, look 'n' lis -- sen tuh Chap -- ter Six, Ah, __ % 10a
  O my God is a rock in a wea -- ry land, __
  wea -- ry land, __ in a wea -- ry land, __
  My __ God is a rock in a wea -- ry land, __
  Shel -- ter in a time of storm.
  He is a rock in a wea -- ry land, __ % 12a
  wea -- ry land, __ in a wea -- ry land. __
  He is a rock in a wea -- ry land, __
  Shel -- ter in a time of storm. % 13a
  O my Je -- sus, O my Je -- sus,
  O my Je -- sus, Hal -- le -- lu, Hal -- le -- lu
  Hal -- le -- lu -- jah Je -- sus,
  O my Je -- sus, O my Je -- sus,
  O my Je -- sus, Je -- sus,
  O my Je -- sus, Hal -- le -- lu, my Lord. __
  O my God is a rock in a wea -- ry land, __
  wea -- ry land in a wea -- ry land, __
  My God is a rock in a wea -- ry land, __
  Shel -- ter in a time of storm. % 17a
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  A -- men. Hm. __ A -- men.
}

wordsAltoMidi = \lyricmode {
  "My " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land. " 
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nI " "know " "in " "a " wea "ry " "land, "
  "\nin " "a " wea "ry " "land, " wea "ry " "land, "
  "\nI " "know " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 4a
  "\nHum, " 
  "\nChap" "ter " "One. "  Hal le "lu, " 
  "\nChap" "ter " "Two, "  "O " "de " Bi "ble, "  % 5a
  "\nChap" "ter " "Three, " Cal va "ry! "
  "\nAn' " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 7a
  "\nAn' " "I " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " 
  "\nLis" "sen " "tuh " Chap "ter " "Four, " 
  "\nHe " "know " "de " "po', "
  "\nStop " "'n' " lis "sen " "to " Chap "ter " "Five, "
  "\nHal" le lu "jah, " 
  "\nStop, " "look " "'n' " lis "sen " "tuh " Chap "ter " "Six, " "Ah, "  % 10a
  "\nO " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nwea" "ry " "land, "  "in " "a " wea "ry " "land, " 
  "\nMy "  "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nHe " "is " "a " "rock " "in " "a " wea "ry " "land, "  % 12a
  "\nwea" "ry " "land, "  "in " "a " wea "ry " "land. " 
  "\nHe " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 13a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " Hal le "lu, " Hal le "lu "
  "\nHal" le lu "jah " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " Je "sus, "
  "\nO " "my " Je "sus, " Hal le "lu, " "my " "Lord. " 
  "\nO " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nwea" "ry " "land " "in " "a " wea "ry " "land, " 
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 17a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nA" "men. " "Hm. "  A "men. "
}

altoTwo = \relative {
  \global \voiceTwo
  s4 | s1*77 |
  s8 d'4 8 2 | s8 4 8 2 | % 14a
  s8 d4 8 4 4 | 4 4 s8 d4 8 |
  d4 4 s8 4 8 | 4 4 s8 4 8 | 4 2. | % 15a
  d4 4 s8 4 8 | 4 4 s8 4 a'8 | g2 e |
  e'2(a,8) 4-- 8 | d,4 8 8 4 8 8 | 4 8 8~2 | % 16a
  d4 8 8~4 8 8 | 4 8 8~4 a' | a g8 f d4 f8 g |
  a4 8 8~4. s8 | g8 g f d f4 f | d1 | % 17a
  s8 d4 8 4 4 | s8 4 8 4 4 | s8 4 8 4 4 |
  s8 d4 8 4 4 | s1*2 | % 18a
  s1*3 |
  s1*8 | % 19
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*7 |
  s2. s4\f | s1 | s | s | s2 s4\< s\! | s1 | s | % 3
  s1 | s | s\p | s1*4 | % 4
  s1*6 | % 5
  s1\mp | s1*6 | % 6
  s1 | s4 s2.\f | s2.\> s4\! | s1*3 | % 7
  s1*3  s1\> | s\! | s1\omit\p-\markup{\dynamic p \italic "poco marc."} | % 8
  s1 | s | s2. s4\mp | s1*3 | % 9
  s1 | s\mf | s\< | s2.\> s4\mp | s1 | s | % 10
  s1*5 | s8 s2..\f | % 11
  s1*6 | % 12
  s1*5 | s2 s8 s4.\omit\p-\markup{\dynamic p \italic legato} | % 13
  s1*5 | % 14
  s8 s2..\mf | s1 | s2 s\< | s1\f | s | s\< | % 15
  s1\! | s1*5 | %% 16
  s1 | s | s4. s8\> s2 | s8\! s2..\p | s1 | s | % 17
  s1*4 | s2. s4\pp | s1 | % 18
  s1*6 | s1\ppp | s | % 19
}

tenor = \relative {
  \global
  a4 | a g8[f] d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g |
  f4. 8 d2~ | 1~ | 2. r4 | g8 g f d f4 f |
  d2 r4 d' | 8 a g f d4 f8 g | a4. 8 4 r | % 3a
  g4. 8 4 a8 g | f4. 8 d4 d' | 8 a g f d4 f8 g | a4. 8 4 r |
  g8 g f d f4 f | d2. r4 \time 2/2 d1->~ | 2 r8 4^\markup "(almost spoken)" 8 | % 4a
  d1~ | 2 r8 4 8 | 1~ |
  d2 r8 4 8 | 1~ | 2 r8 4 8 | % 5a
  f4 d2.~ | 2 r8 4 8 \time 4/4 | d1 |
  a'4. 8 8 4 8 | 4 g8 f d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g | % 6a
  f4. 8 d d'4 c8 | a4 g8 f d4 f8 g | a4. 8 4 r |
  g8 g f d f4 f | 8(d) f a d2~ | 2. 4^^ | % 7a
  c4 a8 c~4 d8 c a2. g4 | a2 r8 d4 c8 |
  d2. 4^^ | c^^ a8 c~4 d8 c | a8 a a a c4 e | % 8a
  d2( a~ \time 2/2 | 1) d,8 4 8 f4 f |
  a1~ | 2 r8 8 8 g | a2. d,8 d | % 9a
  d8 4 8 f4 f | a1 | r8 d4 c8 d4 a~ |
  a1 | 4 4 2 \time 4/4 a1~ | % 10a
  a2~4 \breathe 8 8 | d4 8 8 a4 8 8 | d4 8 8~4. r8 |
  bes4 8 8~4 c8 bes | a4 g8 f~4 a | d4 8 8 a4 8 8 | % 11a
  d4 8 8~4. r8 | bes8 8 8 8 a4 a | 8 \breathe d4-- c8 d4 a~ |
  a2 r8 d4-- c8 | d4 a2. | r8 d4-- c8 d4 g, | % 12a
  r8 d'4-- c8 d f4 r8 | r d4-- c8 d4 a | r8 d4-- c8 d a a a |
  bes4-- 4-- c4.-- 8-- | d1-> | R | % 13a
  R1 | R | r2 r8 d4 c8 |
  d4 d,2 r4 | r2 d4 4 | 1 | % 14a
  R1 | R |
  r8 d4 8 4 4 | r8 4 8 4 4 | r8 4 8 8 8 f a | % 15a
  d4 d r8 d4 8 | 4 4 r8 4 8 | 2 2 |
  cis1( | d8-.) f4-- e8 f4 d | r8 f4 e8 f4 d | % 16a
  r8 g4 d8 g4 d | r8 f4 e8 f4 d | r8 f4 e8 f4^^ e^^ |
  r8 f4 e8 f4^^ d^^~ | 4 f8 f g4 a | d,1 | % 17a
  r8 d8~(2. | c4 a8 c~4 d8 c | a2. g4 |
  a1) | r2 r8 4 8 | 4 2. | % 18a
  r2 bes | a2. d,8. 16 | a'2.~8 8 |
  c2. d8 c | a2. g4 | a1~ | % 19a
  a1~ | a~ | a | bes1 | a1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  My God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land. __
  Shel -- ter in a time of storm.
  I know He is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  I know He is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 4a
  Hum, __
  Chap -- ter One. __ Hal -- le -- lu, __
  Chap -- ter Two, __ O de Bi -- ble, __ % 5a
  Chap -- ter Three, Cal -- va -- ry!
  An' my God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  Oh, my God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 7a
  An' I know __ my God's a rock __ in a wea -- ry land,
  an I know My God's a rock, __
  An' a shel -- ter in a time of storm. __
  Lis -- sen tuh Chap -- ter Four, __
  He know de po',
  Stop 'n' lis -- sen to Chap -- ter Five,
  Hal -- le -- lu -- jah, __
  Chap -- ter Six, Ah, __ % 10a
  O my God is a rock in a wea -- ry land, __
  wea -- ry land, __ in a wea -- ry land, __
  My __ God is a rock in a wea -- ry land, __
  Shel -- ter in a time of storm.
  O my Je -- sus, __ O my Je -- sus, O my Je -- sus, % 12a
  O my Je -- sus, __ O my Je -- sus,
  O my Je -- sus is a shel -- ter in de storm. % 13a
  Wid de an -- gels, Hal -- le -- lu % 14a
  O my Je -- sus, O my Je -- sus,
  O my Je -- sus, hear me, Je -- sus,
  O my Je -- sus, Hal -- le -- lu, my Lord. __
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  O my Je -- sus, O my Je -- sus, O my Je -- sus, __
  in a time of storm. % 17a
  O, __
  O my Je -- sus, A -- men.
  He's a rock, __ a rock in a wea -- ry land, __
  A -- men.
}

wordsTenorMidi = \lyricmode {
  "My " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land. " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 4a
  "\nHum, " 
  "\nChap" "ter " "One. "  Hal le "lu, " 
  "\nChap" "ter " "Two, "  "O " "de " Bi "ble, "  % 5a
  "\nChap" "ter " "Three, " Cal va "ry! "
  "\nAn' " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nOh, " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 7a
  "\nAn' " "I " "know "  "my " "God's " "a " "rock "  "in " "a " wea "ry " "land, "
  "\nan " "I " "know " "My " "God's " "a " "rock, " 
  "\nAn' " "a " shel "ter " "in " "a " "time " "of " "storm. " 
  "\nLis" "sen " "tuh " Chap "ter " "Four, " 
  "\nHe " "know " "de " "po', "
  "\nStop " "'n' " lis "sen " "to " Chap "ter " "Five, "
  "\nHal" le lu "jah, " 
  "\nChap" "ter " "Six, " "Ah, "  % 10a
  "\nO " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nwea" "ry " "land, "  "in " "a " wea "ry " "land, " 
  "\nMy "  "God " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nO " "my " Je "sus, "  "O " "my " Je "sus, " "O " "my " Je "sus, " % 12a
  "\nO " "my " Je "sus, "  "O " "my " Je "sus, "
  "\nO " "my " Je "sus " "is " "a " shel "ter " "in " "de " "storm. " % 13a
  "\nWid " "de " an "gels, " Hal le "lu " % 14a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "hear " "me, " Je "sus, "
  "\nO " "my " Je "sus, " Hal le "lu, " "my " "Lord. " 
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, " 
  "\nin " "a " "time " "of " "storm. " % 17a
  "\nO, " 
  "\nO " "my " Je "sus, " A "men. "
  "\nHe's " "a " "rock, "  "a " "rock " "in " "a " wea "ry " "land, " 
  "\nA" "men. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*7 |
  s2. s4\f | s1 | s | s | s | s | s | % 3
  s1 | s | s\p | s1*4 | % 4
  s1*6 | % 5
  s1\mp | s1*6 | % 6
  s1 | s2 s8 s4.\f | s1*4 | % 7
  s1*3 | s1\> | s\! | s1\omit\p-\markup{\dynamic p \italic "poco marc."} | % 8
  s1 | s | s2. s4\mp | s1*3 | % 9
  s1\mf | s | s\< | s2.\> s4\mp | s1 | s | % 10
  s1*6 | % 11
  s1\f | s1*5 | % 12
  s1 | s4 s2.\> | s1\omit\p-\markup{\dynamic p \italic "legato, mercato"} | s1*3 | % 13
  s1\mp | s | s | s | s\mf | % 14
  s1 | s | s | s1\f | s | s\< | % 15
  s1\! | s\ff | s1*4 | % 16
  s1 | s | s4. s8\> s2 | s8\! s2..\p | s1 | s | % 17
  s1*5 | s8 s2..\pp | % 18
  s1*6 | s1\ppp | s | % 19
}

bass = \relative {
  \global
  a4 | a g8[f] d4 f8 g | a4. 8 4 r | g4. 8 4 a8 g |
  f4. 8 d4 \breathe a'^^ | a g8 f d4 f8 g | a4. 8 4 r | g8 g f d f4 f |
  d4 \breathe d d d | 2. 8 8 | 4. 8 4 8 8 | % 3a
  d4. 8 4 r | a4. 8 d4 d | 2. 8 8 | 4. 8 4 r |
  g,8 8 8 8 a4 4 | d2. r4 \time 2/2 | 1->~ 2 r8 4^\markup "(almost spoken)" 8 | % 4a
  d1~ | 2 r8 4 8 | 1~ |
  d2 r8 4 8 | 1~ | 2 r8 4 8 | % 5a
  f4 d2.~ | 2 r8 4 8 \time 4/4 | 1 |
  a4. 8 d a'4-> 8 | d,4 8 8 2~ | 8 4 8 4 4 | 2~8 4 8 | % 6a
  d4. 8 4 r | 4 8 8 2~ | 8 4 8 4 8 8 |
  g,8 8 8 8 a4 4 | d2 r8 a'4 8 | 8 8 g f d4 f8 g | % 7a
  a4. 8 4 r | g4. 8 4 a8 g | d4. 8 d4 a' |
  a8 a g f d4 f8 g | a4. 8 4 r | g8 g f d f4 f | % 8a
  d1~ \time 2/2 | 1 | 8 4 8 f4 f |
  a1~ | 2 r8 d, d d | 2. 8 8 | % 9a
  d8 4 8 f4 f | a1 | r8 4 8 4 4 \breathe |
  d,4 8 8 f8 4 8 | 4 4 d2 \time 4/4 | a1~( | % 10a
  a2 d4) \breathe a'8 g | d1~ | 8 4 8 8 4 8 |
  d2. 4 | a2(d8) r r4 | d1~ | % 11a
  d8 4 8 8 8 8 f | g4 g a a, | d1 | \voiceOne
  a'4^\markup div. 8 8 4 8 8 | 4 8 8~4. \re | bes4 8 8~4. \re | % 12a
  a4 8 8~4. \re | 4 8 8 4 8 8 | 4 8 8~4. \re |
  g8 8 8 8 a4 a | 4 8 8 8 8 8 8 | 4 4 \re 4 8 | % 13a
  a4 4 \re 4 8 | bes4 4 \re 4 8 | a4 2. |
  a4 4 \re 4 8 | 4 4 \re 4 8 | 4 4 \re 4 8 | % 14a
  a4 2. | 4 4 \re 4 8 |
  a4 4 \re 4 8 | g4 4 \re a4 bes8 | a4 2. | % 15a
  a4 4 \re 4 8 | 4 4 \re 4 8 | 2 2 |
  a2~8 4-- g8 | a4 g8 f e4 f8 g | a4 8 8~2 | % 16a
  bes4 8 8~4 c8 bes | a4 8 f~4 a | d4 8 8 a4 8 8 |
  d4 a8 d~4. \re | bes8 8 8 d cis4 4 | d1 | % 17a
  \re a4 g8 a4 d, | \re a'4 g8 a4 d, | \re g4 a8 bes4 g |
  \re a4 g8 a4 d, | \oneVoice r8 4^\markup unis. 8 4 4 | r8 4 8 4 4 | % 18a
  r4 g,2. | d'1 | r8^\markup div. \voiceOne a'4 g8 a4 d, |
  \re a'4 g8 a4 d, | \re g4 a8 bes4 d | \re a4 g8 a4 4~( | % 19a
  a4 g8 f d4 f8 g | a1 | g2 f4 d) | d1 | d1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  My God is a rock in a wea -- ry land,
  wea -- ry land, in a wea -- ry land. __
  My God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm.
  Oh yes, I know in a wea -- ry land,
  in a wea -- ry land, wea -- ry land,
  I know in a wea -- ry land,
  Shel -- ter in a time of storm. % 4a
  Hum, __
  Chap -- ter One. __ Hal -- le -- lu, __
  Chap -- ter Two, __ O de Bi -- ble, __ % 5a
  Chap -- ter Three, Cal -- va -- ry!
  An' my God is a rock __ in a wea -- ry land, __
  in a wea -- ry land,
  God is a rock __ in the land,
  An' a shel -- ter in a time of storm. % 7a
  An' I know He is a rock __ in a wea -- ry land,
  wea -- ry land, in a wea -- ry land,
  I know He is a rock in a wea -- ry land,
  Shelt -- ter in a time of storm. __
  Lis -- sen tuh Chap -- ter Four, __
  He know de po',
  Stop 'n' lis -- sen to Chap -- ter Five,
  Hal -- le -- lu -- jah, __
  Stop, look 'n' lis -- sen tuh Chap -- ter Six, Ah, __ % 10a
  O my Lord, He's a rock in a wea -- ry land, __
  Rock __ in the land,
  O He's a shel -- ter in the storm.
  He is a rock in a wea -- ry land, __
  wea -- ry land, __ wea -- ry land, __
  He is a rock in a wea -- ry land, __ % 12b
  Shel -- ter in a time of storm. % 13a
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  O my Je -- sus, O my Je -- sus,
  Je -- sus, O my Je -- sus, % 14a
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  Je -- sus, O my Je -- sus, O my Je -- sus, % 15a
  Je -- sus, O my Je -- sus,
  Hal -- le -- lu, my Lord. __
  O my God is a rock in a wea -- ry land, __ % 16a
  wea -- ry land, in a wea -- ry land, __
  My God is a rock in a wea -- ry land,
  Shel -- ter in a time of storm. % 17a
  O my Je -- sus, O my Je -- sus, O my Je -- sus,
  O my Je -- sus, O my Je -- sus, O my Je -- sus, % 18a
  A -- men. \set associatedVoice = basstwo
  O my Je -- sus, O my Je -- sus, __ O my Je -- sus, __
  O my Je -- sus, O my Je -- sus, O my Je -- sus, __
  A -- men.
}

wordsBassMidi = \lyricmode {
  "My " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land. " 
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. "
  "\nOh " "yes, " "I " "know " "in " "a " wea "ry " "land, "
  "\nin " "a " wea "ry " "land, " wea "ry " "land, "
  "\nI " "know " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 4a
  "\nHum, " 
  "\nChap" "ter " "One. "  Hal le "lu, " 
  "\nChap" "ter " "Two, "  "O " "de " Bi "ble, "  % 5a
  "\nChap" "ter " "Three, " Cal va "ry! "
  "\nAn' " "my " "God " "is " "a " "rock "  "in " "a " wea "ry " "land, " 
  "\nin " "a " wea "ry " "land, "
  "\nGod " "is " "a " "rock "  "in " "the " "land, "
  "\nAn' " "a " shel "ter " "in " "a " "time " "of " "storm. " % 7a
  "\nAn' " "I " "know " "He " "is " "a " "rock "  "in " "a " wea "ry " "land, "
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, "
  "\nI " "know " "He " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShelt" "ter " "in " "a " "time " "of " "storm. " 
  "\nLis" "sen " "tuh " Chap "ter " "Four, " 
  "\nHe " "know " "de " "po', "
  "\nStop " "'n' " lis "sen " "to " Chap "ter " "Five, "
  "\nHal" le lu "jah, " 
  "\nStop, " "look " "'n' " lis "sen " "tuh " Chap "ter " "Six, " "Ah, "  % 10a
  "\nO " "my " "Lord, " "He's " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nRock "  "in " "the " "land, "
  "\nO " "He's " "a " shel "ter " "in " "the " "storm. "
  "\nHe " "is " "a " "rock " "in " "a " wea "ry " "land, " 
  "\nwea" "ry " "land, "  wea "ry " "land, " 
  "\nHe " "is " "a " "rock " "in " "a " wea "ry " "land, "  % 12b
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 13a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "
  "\nJe" "sus, " "O " "my " Je "sus, " % 14a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nJe" "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, " % 15a
  "\nJe" "sus, " "O " "my " Je "sus, "
  "\nHal" le "lu, " "my " "Lord. " 
  "\nO " "my " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "  % 16a
  "\nwea" "ry " "land, " "in " "a " wea "ry " "land, " 
  "\nMy " "God " "is " "a " "rock " "in " "a " wea "ry " "land, "
  "\nShel" "ter " "in " "a " "time " "of " "storm. " % 17a
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, "
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, " % 18a
  "\nA" "men. " \set associatedVoice = basstwo
  "\nO " "my " Je "sus, " "O " "my " Je "sus, "  "O " "my " Je "sus, " 
  "\nO " "my " Je "sus, " "O " "my " Je "sus, " "O " "my " Je "sus, " 
  "\nA" "men. "
}

bassTwo = \relative {
  \global \voiceTwo
  s4 | s1*64 |
  d4 8 8 4 8 8 | 4 8 8~4. s8 | 4 8 8~4. s8 | % 12a
  d4 8 8~4. s8 | 4 8 8 4 8 8 | 4 8 8~4. s8 |
  a8 8 8 8 4 4 | d4 8 8 8 8 8 8 | 4 4 s8 4 8 | % 13a
  d4 4 s8 4 8 | 4 4 s8 4 8 | 4 2. |
  d4 4 s8 4 8 | 4 4 s8 4 8 | 4 4 s8 4 8 | % 14a
  d4 2. | 4 4 s8 4 8 |
  d4 4 s8 4 8 | 4 4 s8 4 8 | 4 2. | % 15a
  d4 4 s8 4 8 | 4 4 s8 4 8 | a2 2 |
  a2~8 4 8 | d4 8 8 4 8 8 | 4 8 8~2 | % 16a
  d4 8 8~4 8 8 | a4 8 d~4 a' | a g8 f d4 f8 g |
  a4 8 8~4. s8 | g8 g f d f4 a, | d1 | % 17a
  s8 d4 8 4 4 | s8 4 8 4 4 | s8 4 8 4 4 |
  s8 d4 8 4 4 | s1 | s | % 18a
  s1 | s | s8 d4 8 4 4 |
  s8 d4 8 4 4 | s8 4 8 4 4 | s8 4 8 4 4 | % 19a
  r8 d4 8 4 4 | r8 4 8 4 4~ | 1 | g,1 | d'\fermata |
}

wordsBassOne = \lyricmode {
  \repeat unfold 375 _
  O my Lord, Hm. __
  A -- men.
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1 |
}

#(set-global-staff-size 17)

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopsolo \wordsSopSolo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
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
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
            \addlyrics \wordsBass
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bass \wordsBassOne
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
%        \Staff \RemoveAllEmptyStaves
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
  \bookOutputSuffix "singlepage-noacc"
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
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopsolo \wordsSopSolo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
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
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
            \addlyrics \wordsBass
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bass \wordsBassOne
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
%        \Staff \RemoveAllEmptyStaves
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
  \bookOutputSuffix "singlepage-noacc-sop"
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
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \tiny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopsolo \wordsSopSolo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tiny \dynamicsAlto
            \new Voice \altoTwo
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
            \new Dynamics \with {alignAboveContext = tenor} \tiny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \tiny \dynamicsBass
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
            \addlyrics {\tiny \wordsBass}
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bass {\tiny \wordsBassOne}
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
%        \Staff \RemoveAllEmptyStaves
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
  \bookOutputSuffix "singlepage-noacc-bass"
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
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \tiny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \tiny \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopsolo {\tiny \wordsSopSolo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \tiny \dynamicsAlto
            \new Voice \altoTwo
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
            \new Dynamics \with {alignAboveContext = tenor} \tiny \dynamicsTenor
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
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
            \addlyrics \wordsBass
            \new Lyrics \with {alignAboveContext = bass} \lyricsto bass \wordsBassOne
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
%        \Staff \RemoveAllEmptyStaves
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
  \bookOutputSuffix "midi-solo"
  \score {
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
%          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \tripletFeel 8 \solo
          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \tripletFeel 8 \sopranoSolo
            \new Voice \tripletFeel 8 \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \tripletFeel 8 \altoTwo
            \new Voice \tripletFeel 8 \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tripletFeel 8 \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = basstwo \tripletFeel 8 \bassTwo
            \new Voice = bass \tripletFeel 8 \bass
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
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
%          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
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
  \bookOutputSuffix "midi-alto"
  \score {
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
%          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
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
  \bookOutputSuffix "midi-tenor"
  \score {
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
%          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
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
    <<
      <<
                                % Solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
          shortInstrumentName = #"Solo"
%          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
          \RemoveAllEmptyStaves
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice = sopsolo \sopranoSolo
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoTwo
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice = basstwo \bassTwo
            \new Voice = bass \bass
            \addlyrics \wordsBassMidi
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
