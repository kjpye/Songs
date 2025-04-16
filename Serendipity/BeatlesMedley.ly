\version "2.25.25"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beatles Medley"
  subtitle    = "Laughter"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
  arranger    = "Arr. Roger Emerson"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

globalPenny = {
  \key f \major
  \time 4/4
  \partial 2
}

TempoTrackPenny = {
%  \tempo 4=120
  s2 s1*44
}

TempoTrackYellow = {
  \tempo "Same tempo and feel" 4=120
  s1*39
}

TempoTrackObla = {
  \tempo "Same tempo, end swing feel" 4=120
  s1*35
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \TempoTrackPenny
  \TempoTrackYellow
  \TempoTrackObla
}

TempoTrackPianoPenny = {
  \tempo \markup{\bold Shuffle ( \rhythm { 8[8] } = \rhythm { \tuplet 3/2 { { 4 8 } } } ) } 4=120
  s2 s1*44
}

TempoTrackPianoYellow = {
  \tempo "Same tempo and feel" 4=120
  s1*39
}

TempoTrackPianoObla = {
  \tempo "Same tempo, end swing feel" 4=120
  s1*35
}

TempoTrackPiano = {
%  \set Score.tempoHideNote = ##t
  \TempoTrackPianoPenny
  \TempoTrackPianoYellow
  \TempoTrackPianoObla
}

RehearsalTrackPenny = {
  \textMark \markup { \box "23a" } s2 s1*3 |
  \textMark \markup { \box "23b" }    s1*3 |
  \textMark \markup { \box "23c" }    s1*3 |
  \textMark \markup { \box "24a" }    s1*3 |
  \textMark \markup { \box "24b" }    s1*3 |
  \textMark \markup { \box "24c" }    s1*3 |
  \textMark \markup { \box "25a" }    s1*3 |
  \textMark \markup { \box "25b" }    s1*4 |
  \textMark \markup { \box "25c" }    s1*3 |
  \textMark \markup { \box "26a" }    s1*3 |
  \textMark \markup { \box "26b" }    s1*3 |
  \textMark \markup { \box "26c" }    s1*3 |
  \textMark \markup { \box "27a" }    s1*3 |
  \textMark \markup { \box "27b" }    s1*3 |
  \textMark \markup { \box "27c" }    s1
}

RehearsalTrackYellow = {
  s1*2
  \textMark \markup\box "28a" s1*3
  \textMark \markup\box "28b" s1*3
  \textMark \markup\box "28c" s1*3
  \textMark \markup\box "29a" s1*3
  \textMark \markup\box "29b" s1*3
  \textMark \markup\box "29c" s1*3
  \textMark \markup\box "30a" s1*3
  \textMark \markup\box "30b" s1*3
  \textMark \markup\box "30c" s1*4
  \textMark \markup\box "31a" s1*3
  \textMark \markup\box "31b" s1*3
  \textMark \markup\box "31c" s1*3
}

RehearsalTrackObla = {
  \textMark \markup\box "32a" s1*3
  \textMark \markup\box "32b" s1*3
  \textMark \markup\box "32c" s1*3
  \textMark \markup\box "33a" s1*3
  \textMark \markup\box "33b" s1*3
  \textMark \markup\box "33c" s1*3
  \textMark \markup\box "34a" s1*3
  \textMark \markup\box "34b" s1*3
  \textMark \markup\box "34c" s1*3
  \textMark \markup\box "35a" s1*3
  \textMark \markup\box "35b" s1*3
  \textMark \markup\box "35c" s1*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \RehearsalTrackPenny
  \RehearsalTrackYellow
  \RehearsalTrackObla
}

ChordTrackPenny = \chordmode {
  r2 f1 bes2 c f1 | bes2 c f1 bes2 c | f1 f:m7 d:dim7 |
  des1:maj7 c2:sus c c:sus c | f1 bes2 c f1 | f:m7 d:dim7 des:maj7 | % 24
  c2:sus c bes1 ees | ees/g aes s ees | ees/g aes c |
  f1 bes2 c f1 | f:m7 d:dim7 des:maj7 | c2:sus c | c:sus c | f1 | % 26
  f1/a bes s | f f/a bes | d
}

ChordTrackYellow = \chordmode {
  g2. f4 c1 |
  s2. bes4 f1 c:7 | f2. d4:m g1 c2. f4 | c1:7 f2. d4:m g1 | % 28
  c2. f4 c1:7 f2. d4:m | g1 c2. f4 c1:7 | f2. d4:m g1 c |
  f1 c:7 s | f f c:7 | s f c2. bes4 f1 | % 30
  d2. c4 g1 d:7 | s g g | d:7 s g |
}

ChordTrackObla = \chordmode {
  ees1 s s | bes:7 s ees | s aes ees2 bes | % 32
  ees1 s bes2 c:m | ees bes ees1 s | bes2 c:m ees bes ees1 |
  s1 bes:7 s | ees s aes | ees2 bes ees1 s | % 34
  bes2 c:m ees bes ees1 | s bes2 c:m ees bes | c1:m s bes2:7 ees |
}

ChordTrack = {
  \ChordTrackPenny
  \ChordTrackYellow
  \ChordTrackObla
}

wordsPenny = \lyricmode {
  Pen -- ny Lane __ there is a bar -- ber
  show -- ing pho -- to -- graphs __
  of ev -- ’ry head __ he’s had the plea -- sure to __ know. __
  And all the peo -- ple that come and go, __
  stop and say __ hel -- lo. __
  On the cor -- ner is a bank -- er with a mo -- tor -- car: __
  The lit -- tle chil -- dren laugh at him __ be -- hind his \set associatedVoice = wordsmen back.
  And the bank -- er nev -- er wears a mac __
  in the pour -- ing rain, ver -- y strange! __
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  wet be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  \set associatedVoice = wordswomen
  And mean -- while back in Pen -- ny Lane __
  there is a fire -- man with an ho -- ur glass, __
  and in his pock -- et is a por -- trait of the \set associatedVoice = wordsmen Queen.
  He likes to keep his fi -- re en -- gine clean. __
  It’s a clean ma -- chine!
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  there be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  And mean -- while \set associatedVoice = wordswomen back,
}

wordsSepWomenPenny = \lyricmode {
  Pen -- ny Lane __ there is a bar -- ber
  show -- ing pho -- to -- graphs __
  of ev -- ’ry head __ he’s had the plea -- sure to __ know. __
  And all the peo -- ple that come and go, __
  stop and say __ hel -- lo. __
  On the cor -- ner is a bank -- er with a mo -- tor -- car: __
  The lit -- tle chil -- dren laugh at him __ be -- hind his back.
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  wet be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  And mean -- while back in Pen -- ny Lane __
  there is a fire -- man with an ho -- ur glass, __
  and in his pock -- et is a por -- trait of the Queen.
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  there be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  And mean -- while back,
}

wordsSepWomenMidiPenny = \lyricmode {
  "Pen" "ny " "Lane "  "there " "is " "a " bar "ber "
  "\nshow" "ing " pho to "graphs " 
  "\nof " ev "’ry " "head "  "he’s " "had " "the " plea "sure " "to "  "know. " 
  "\nAnd " "all " "the " peo "ple " "that " "come " "and " "go, " 
  "\nstop " "and " "say "  hel "lo. " 
  "\nOn " "the " cor "ner " "is " "a " bank "er " "with " "a " mo tor "car: " 
  "\nThe " lit "tle " chil "dren " "laugh " "at " "him "  be "hind " "his " "back. "
  "\nPen" "ny " "Lane "  "is " "in " "my " "ears "  "and " "in " "my " "eyes, " 
  "\nwet " be "neath " "the " "blue "  sub ur "ban " "skies "  "I " "sit. "
  "\nAnd " mean "while " "back " "in " Pen "ny " "Lane " 
  "\nthere " "is " "a " fire "man " "with " "an " ho "ur " "glass, " 
  "\nand " "in " "his " pock "et " "is " "a " por "trait " "of " "the " "Queen. "
  "\nPen" "ny " "Lane "  "is " "in " "my " "ears "  "and " "in " "my " "eyes, " 
  "\nthere " be "neath " "the " "blue "  sub ur "ban " "skies "  "I " "sit. "
  "\nAnd " mean "while " "back, "
}

wordsSepBassPenny = \lyricmode {
  Pen -- ny Lane __ there is a bar -- ber
  show -- ing pho -- to -- graphs __
  of ev -- ’ry head __ he’s had the plea -- sure to __ know. __
  And all the peo -- ple that come and go, __
  stop and say __ hel -- lo. __
  And the bank -- er nev -- er wears a mac __
  in the pour -- ing rain, ver -- y strange! __
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  wet be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  And mean -- while back
  He likes to keep his fi -- re en -- gine clean. __
  It’s a clean ma -- chine!
  Pen -- ny Lane __ is in my ears __ and in my eyes, __
  there be -- neath the blue __ sub -- ur -- ban skies __ I sit.
  And mean -- while back,
}

wordsSepBassMidiPenny = \lyricmode {
  "Pen" "ny " "Lane "  "there " "is " "a " bar "ber "
  "\nshow" "ing " pho to "graphs " 
  "\nof " ev "’ry " "head "  "he’s " "had " "the " plea "sure " "to "  "know. " 
  "\nAnd " "all " "the " peo "ple " "that " "come " "and " "go, " 
  "\nstop " "and " "say "  hel "lo. " 
  "\nAnd " "the " bank "er " nev "er " "wears " "a " "mac " 
  "\nin " "the " pour "ing " "rain, " ver "y " "strange! " 
  "\nPen" "ny " "Lane "  "is " "in " "my " "ears "  "and " "in " "my " "eyes, " 
  "\nwet " be "neath " "the " "blue "  sub ur "ban " "skies "  "I " "sit. "
  "\nAnd " mean "while " "back "
  "\nHe " "likes " "to " "keep " "his " fi "re " en "gine " "clean. " 
  "\nIt’s " "a " "clean " ma "chine! "
  "\nPen" "ny " "Lane "  "is " "in " "my " "ears "  "and " "in " "my " "eyes, " 
  "\nthere " be "neath " "the " "blue "  sub ur "ban " "skies "  "I " "sit. "
  "\nAnd " mean "while " "back, "
}

wordsYellow = \lyricmode {
  In the town __ where I was born
  lived a man __ who sailed to sea.
  And he told __ us of his life
  in the land __ of sub -- mar -- ines.
  So we sailed __ up to the sun
  till we found __ the sea of green.
  And we lived __ be -- neath the waves
  in our yel -- low sub -- ma -- rine.
  We all live in a yel -- low sub -- mar -- ine,
  yel -- low sub -- ma -- rine,
  yel -- low sub -- ma -- rine.
  We all live in a yel -- low sub -- mar -- ine,
  yel -- low sub -- ma -- rine,
  yel -- low sub -- ma -- rine.
  We all live in a yel -- low sub -- mar -- ine,
  yel -- low sub -- ma -- rine,
  yel -- low sub -- ma -- rine.
  We all live in a yel -- low sub -- mar -- ine,
  yel -- low sub -- ma -- rine,
  yel -- low sub -- ma -- rine.
}

wordsMidiYellow = \lyricmode {
  "\nIn " "the " "town "  "where " "I " "was " "born "
  "\nlived " "a " "man "  "who " "sailed " "to " "sea. "
  "\nAnd " "he " "told "  "us " "of " "his " "life "
  "\nin " "the " "land "  "of " sub mar "ines. "
  "\nSo " "we " "sailed "  "up " "to " "the " "sun "
  "\ntill " "we " "found "  "the " "sea " "of " "green. "
  "\nAnd " "we " "lived "  be "neath " "the " "waves "
  "\nin " "our " yel "low " sub ma "rine. "
  "\nWe " "all " "live " "in " "a " yel "low " sub mar "ine, "
  "\nyel" "low " sub ma "rine, "
  "\nyel" "low " sub ma "rine. "
  "\nWe " "all " "live " "in " "a " yel "low " sub mar "ine, "
  "\nyel" "low " sub ma "rine, "
  "\nyel" "low " sub ma "rine. "
  "\nWe " "all " "live " "in " "a " yel "low " sub mar "ine, "
  "\nyel" "low " sub ma "rine, "
  "\nyel" "low " sub ma "rine. "
  "\nWe " "all " "live " "in " "a " yel "low " sub mar "ine, "
  "\nyel" "low " sub ma "rine, "
  "\nyel" "low " sub ma "rine. "
}

wordsObla = \lyricmode {
  Des -- mond has his bar -- row in the mar -- ket \set associatedVoice = wordsmen place.
  Mol -- ly is the sin -- ger in a \set associatedVoice = wordswomen band.
  Des -- mond says to Mol -- ly, “Girl, I like your face,” __
  and Mol -- ly says this as she takes him by the hand:
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  Des -- mond takes a trol -- ley to the jew -- ’ler’s store; __
  buys a twen -- ty car -- at gold -- en \set associatedVoice = wordsmen ring.
  Takes __ it back to Mol -- ly wait -- ing at the door;
  and as he gives it to her she be -- gins to \set associatedVoice = wordswomen sing:
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  And if you want some fun take ob -- la -- di bla da!
}

wordsSepWomenObla = \lyricmode {
  Des -- mond has his bar -- row in the mar -- ket place.
  Des -- mond says to Mol -- ly, “Girl, I like your face,” __
  and Mol -- ly says this as she takes him by the hand:
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  Des -- mond takes a trol -- ley to the jew -- ’ler’s store; __
  buys a twen -- ty car -- at gold -- en ring.
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  And if you want some fun take ob -- la -- di bla da!
}

wordsSepWomenMidiObla = \lyricmode {
  "\nDes" "mond " "has " "his " bar "row " "in " "the " mar "ket " "place. "
  "\nDes" "mond " "says " "to " Mol "ly, " "“Girl, " "I " "like " "your " "face,” " 
  "\nand " Mol "ly " "says " "this " "as " "she " "takes " "him " "by " "the " "hand: "
  "\n“Ob" la "di "  ob la "da " 
  "\nlife " "goes " "on "  "bra "  "la "  "la " "how " "the " "life " "goes " "on. " 
  "\nOb" la "di "  ob la "da "  "life " "goes " "on " 
  "\nbra "  "la "  "la " "how " "the " "life " "goes " "on.” " 
  "\nDes" "mond " "takes " "a " trol "ley " "to " "the " jew "’ler’s " "store; " 
  "\nbuys " "a " twen "ty " car "at " gold "en " "ring. "
  "\n“Ob" la "di "  ob la "da " 
  "\nlife " "goes " "on "  "bra "  "la "  "la " "how " "the " "life " "goes " "on. " 
  "\nOb" la "di "  ob la "da "  "life " "goes " "on " 
  "\nbra "  "la "  "la " "how " "the " "life " "goes " "on.” " 
  "\nAnd " "if " "you " "want " "some " "fun " "take " ob la "di " "bla " "da! "
}

wordsSepBassObla = \lyricmode {
  Mol -- ly is the sin -- ger in a band.
  Des -- mond says to Mol -- ly, “Girl, I like your face,” __
  and Mol -- ly says this as she takes him by the hand:
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  Takes __ it back to Mol -- ly wait -- ing at the door;
  and as he gives it to her she be -- gins to sing:
  “Ob -- la -- di __ ob -- la -- da __
  life goes on __ bra __ la __ la how the life goes on. __
  Ob -- la -- di __ ob -- la -- da __ life goes on __
  bra __ la __ la how the life goes on.” __
  And if you want some fun take ob -- la -- di bla da!
}

wordsSepBassMidiObla = \lyricmode {
  "\nMol" "ly " "is " "the " sin "ger " "in " "a " "band. "
  "\nDes" "mond " "says " "to " Mol "ly, " "“Girl, " "I " "like " "your " "face,” " 
  "\nand " Mol "ly " "says " "this " "as " "she " "takes " "him " "by " "the " "hand: "
  "\n“Ob" la "di "  ob la "da " 
  "\nlife " "goes " "on "  "bra "  "la "  "la " "how " "the " "life " "goes " "on. " 
  "\nOb" la "di "  ob la "da "  "life " "goes " "on " 
  "\nbra "  "la "  "la " "how " "the " "life " "goes " "on.” " 
  "\nTakes "  "it " "back " "to " Mol "ly " wait "ing " "at " "the " "door; "
  "\nand " "as " "he " "gives " "it " "to " "her " "she " be "gins " "to " "sing: "
  "\n“Ob" la "di "  ob la "da " 
  "\nlife " "goes " "on "  "bra "  "la "  "la " "how " "the " "life " "goes " "on. " 
  "\nOb" la "di "  ob la "da "  "life " "goes " "on " 
  "\nbra "  "la "  "la " "how " "the " "life " "goes " "on.” " 
  "\nAnd " "if " "you " "want " "some " "fun " "take " ob la "di " "bla " "da! "
}

words = {
  \wordsPenny
  \wordsYellow
  \wordsObla
}

wordsSepWomen = {
  \wordsSepWomenPenny
  \wordsYellow
  \wordsSepWomenObla
}

wordsSepMidiWomen = {
  \wordsSepWomenMidiPenny
  \wordsMidiYellow
  \wordsSepWomenMidiObla
}

wordsBassPenny = \lyricmode {
  \repeat unfold 122 \skip 1
}

wordsBassYellow = \lyricmode {
  \repeat unfold 28 \skip 1
  So we sailed __ up to the sun
  till we found __ the sea of green.
  And we lived __ be -- neath the waves
  in our yel -- low sub -- ma -- rine.
  \repeat unfold 80 \skip 1
}

wordsBassObla = \lyricmode {
  \repeat unfold 136 \skip 1
}

wordsBass = {
  \wordsBassPenny
  \wordsBassYellow
  \wordsBassObla
}

wordsSepBass = {
  \wordsSepBassPenny
  \wordsYellow
  \wordsSepBassObla
}

wordsBassMidi = {
  \wordsSepBassMidiPenny
  \wordsMidiYellow
  \wordsSepBassMidiObla
}

dynamicsWomenPenny = {
  s2 | s1*3 | s2 s4 s\mf | s1*5 |
  s1*9 | % 24
  s1 | s2. s4\f | s1*7 | s2.\> s4\mf |
  s1*7 | s2. s4\f | s1 | % 26
  s1*6 | s2.\> s4\omit\p |
}

dynamicsWomenYellow = {
  s1*2 |
  s1 s2. s4\omit\mf | s1*7 | % 28
  s1*9 |
  s1\f | s1*9 | % 30
  s1 | s\f | s1*7 |
}

dynamicsWomenObla = {
  s1*2 | s1\omit\mf | s1*6 | % 32
  s2 s8 s4.\f | s1*8 |
  s1\mf | s1*6 | s2 s8 s4.\f | s1 | % 34
  s1*6 | s2. s16 s8.\ff | s1*2 |
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  \dynamicsWomenPenny
  \dynamicsWomenYellow
  \dynamicsWomenObla
}

sopranoPenny = \relative {
  \globalPenny
  r2 | R1*3 \break |
  r2^\markup Soprano r4^\markup Unis.  \tuplet 3/2 {f'8^\markup {\column {\bold "Penny Lane" "John Lennon and Paul McCartney"}} g a~} | a g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} 4 r8 c \tuplet 3/2 {f g a~} |
  a8 g f e f c \tuplet 3/2 {d(f) ees~} | 4 r r8 c f g | g f8 4 8 g4 aes8~ |
  aes4 r r8 f g aes~ | \tuplet 3/2 {8 f g~} 4 r2 | r r4 f8 g | % 24a
  a8 g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} 4 r8 c \tuplet 3/2 {f g a~} | a g \tuplet 3/2 {f e f~} f c d f |
  ees2 r | R1*2 |
  R1 | r2 r4 \tuplet 3/2 {g8 aes bes~} \section \key ees \major | bes4. aes8 g aes4 bes8~ | % 25a
  bes4 r8 aes g f4 ees8~ | 2. r4 | R1 | bes'4. aes8 g aes4 bes8~ |
  bes4 r8 aes^\markup Unis. g f4 ees8~ | 4 f g aes | g e c8 c \tuplet 3/2 {f g a~} \section \key f \major |
  a8 g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} bes4 r8 c \tuplet 3/2 {f g a~} | a g \tuplet 3/2 {f e f~} f c d f | % 26a
  ees2 r | R1*2 |
  R1 | r2 r4 \tuplet 3/2 {a8 b c~} | 4. bes8 a bes4 c8~ |
  c4 r8 bes a g4 f8~ | 2. r4 | R1 | % 27a
  c'4. bes8 a bes4 c8~ | 4 r8 bes^\markup Unis. a g4 f8~ | 4 g a bes |
  a4^\markup Unis. fis d r |
}

sopranoYellow = \relative {
  R1*2 |
  R1 | r2 r4 a'8.^\mf^\markup\column{\bold "Yellow Submarine" "John Lennon and Paul McCartney"} bes16 | c2~8. a16 g8. a16 | % 28a
  f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 | g2 r4 a16 bes8 c16~ |
  c2~8. a16 g8. a16 | f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 |
  g2 r4 a16 bes8 c16~ | 2~8. a16 g8. a16 | f2 r4 a8. 16 | % 29a
  g8.(f16 d4~8) 8 a'8. 16 | g2 r4 a16 bes8 c16~ | 2~8. a16 g8. a16 |
  f2 r4 a8. 16 | g8.(f16) d4 r a'8. 16 | g2 r |
  c4 4 4 8. d16 | g,8. 16 8. 16 4 r | 8. 16 8. 16 4 r | % 30a
  f8.^\markup Unis. d16 c8. d16 c4 r | c'4 4 4 8. d16 | g,8. 16 8. 16 4 r |
  g8. 16 8. 16 4 r | f8. d16 c8. d16 c4 r | R1*2 |
  R1 \section \key g \major d'4 4 4 8. e16 | a,8. 16 8. 16 4 r | % 31a
  a8. 16 8. 16 4 r | g8.^\markup Unis. e16 d8. e16 d4 r | d'4 4 4 8. e16 |
  a,8. 16 8. 16 4 r | 8. 16 8. 16 4 r | g8.^\markup Unis. e16 d8. e16 d4 r \section |
}

sopranoObla = \relative {
  \key ees \major
  R1^\markup\column{\bold "Ob-la-di, Ob-la-da" "John Lennon & Paul McCartney"} | % 32a
  R1 | g'8^\mf 8 8 8 8 8 f ees |
  d8 f4 8~4 r | R1 | r2 r4 r8 bes~ | % 32b
  bes8 8 8 8 8 8 aes g | aes bes4 c8~8 c bes aes | g g aes g f aes g f |
  ees4 r r8 ees g bes~ | 8 ees, g bes~8 es, g bes~ | 4. ees8~4 r8 bes~ | % 33a
  bes8 aes g aes g f4 ees8~ | 4 r r8 ees g bes~ | 8 ees, g bes~8 ees, g bes~ |
  bes4. ees8~4 r8 bes~ | 8 aes g aes g f4 ees8~ | 4 r r2 |
  g8 8 8 8 8 8 f ees | d f4 8~4 r | aes8 8 8 8 8 8 g f | % 34a
  ees4 r r2 | R1*2 |
  R1 | r2 r8 ees g bes~ | 8 ees, g bes~8 ees, g bes~ |
  bes4. ees8~4 r8 bes~ | 8 aes g aes g f4 ees8~ | 4 r r8 ees g bes8~ | % 34a
  bes8 ees, g bes~8 ees, g bes~ | 4. ees8~4 r8 bes~ | 8 aes g aes g f4 ees8~ |
  ees4 r r r16 c'16 16 16 | ees8 8 c4 r r8 c | bes8-> aes-. g-. d-. ees-^ r r4 |
  \bar "|."
}

soprano = {
  \sopranoPenny
  \sopranoYellow
  \sopranoObla
}

sopranoMidi = {
  \tripletFeel 8 \sopranoPenny
  \tripletFeel 8 \sopranoYellow
                 \sopranoObla
}

altoPenny = \relative {
  \globalPenny
  r2 | R1*3 |
  r2_\markup Alto r4 \tuplet 3/2 {f'8 g a~} | a g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} 4 r8 c \tuplet 3/2 {f g a~} |
  a8 g f e f c \tuplet 3/2 {d(f) ees~} | 4 r r8 c f g | g f8 4 8 g4 aes8~ |
  aes4 r r8 f g aes~ | \tuplet 3/2 {8 f g~} 4 r2 | r r4 f8 g | % 24a
  a8 g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} 4 r8 c \tuplet 3/2 {f g a~} | a g \tuplet 3/2 {f e f~} f c d f |
  ees2 r | R1*2 |
  R1 | r2 r4 \tuplet 3/2 {g8 aes bes~} \section \key ees \major | bes4. aes8 g aes4 bes8~ | % 25a
  bes4 r8 aes g f4 ees8~ | 2. r4 | R1 | ees4. 8 8 4 8~ |
  ees4 r8 aes g f4 ees8~ | 4 f g ees | e4 4 c8 c \tuplet 3/2 {f g a~} \section \key f \major |
  a8 g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} bes4 r8 c \tuplet 3/2 {f g a~} | a g \tuplet 3/2 {f e f~} f c d f | % 26a
  ees2 r | R1*2 |
  R1 | r2 r4 \tuplet 3/2 {a8 b c~} | 4. bes8 a bes4 c8~ |
  c4 r8 bes a g4 f8~ | 2. r4 | R1 | % 27a
  f4. 8 8 4 8~ | 4 r8 bes^\markup Unis. a g4 f8~ | 4 g a f |
  a4^\markup Unis. fis d r |
}

altoYellow = \relative {
  R1*2 |
  R1 | r2 r4 a'8. bes16 | c2~8. a16 g8. a16 | % 28a
  f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 | g2 r4 a16 bes8 c16~ |
  c2~8. a16 g8. a16 | f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 |
  g2 r4 a16 bes8 c16~ | 2~8. a16 g8. a16 | f2 r4 a8. 16 | % 29a
  g8.(f16 d4~8) 8 a'8. 16 | g2 r4 a16 bes8 c16~ | 2~8. a16 g8. a16 |
  f2 r4 a8. 16 | g8.(f16) d4 r a'8. 16 | g2 r |
  a4 g f e8. 16 | 8. 16 d8. 16 e4 r | 8. 16 d8. 16 e4 r | % 30a
  f8. d16 c8. d16 c4 r | a' g f e8. 16 | 8. 16 d8. 16 e4 r |
  e8. 16 d8. 16 e4 r | f8. d16 c8. d16 c4 r | R1*2 |
  R1 \section \key g \major b'4 a g fis8. 16 | 8. 16 e8. 16 fis4 r | % 31a
  fis8. 16 e8. 16 fis4 r | g8. e16 d8. e16 d4 r | b'4 a g fis8. 16 |
  fis8. 16 e8. 16 fis4 r | 8. 16 e8. 16 fis4 r | g8. e16 d8. e16 d4 r \section |
}

altoObla = \relative {
  \key ees \major
  R1*2 | g'8 8 8 8 8 8 f ees | % 32a
  d8 f4 8~4 r | R1 | r2 r4 r8 bes~ |
  bes8 8 8 8 8 8 aes g | aes bes4 c8~8 c bes aes | g g aes g f aes g f |
  ees4 r r8 ees g bes~ | 8 ees, g bes~8 es, g f~ | 4. g8~4 r8 g~ | % 33a
  g8 f ees f ees d4 bes8~ | 4 r r8 ees g bes~ | 8 ees, g bes~8 ees, g f~ |
  f4. g8~4 r8 g~ | 8 f ees f ees d4 bes8~ | 4 r r2 |
  g'8 8 8 8 8 8 f ees | d f4 8~4 r | aes8 8 8 8 8 8 g f | % 34a
  ees4 r r2 | R1*2 |
  R1 | r2 r8 ees g bes~ | 8 ees, g bes~8 ees, g f~ |
  f4. g8~4 r8 g~ | 8 f ees f ees d4 bes8~ | 4 r r8 ees g bes8~ | % 35a
  bes8 ees, g bes~8 ees, g f~ | 4. g8~4 r8 g~ | 8 f ees f ees d4 c8~ |
  c4 r r r16 c'16 16 16 | g8 8 4 r r8 c, | d8-> d-. d-. d-. bes-^ r r4 |
}

alto = {
  \altoPenny
  \altoYellow
  \altoObla
}

altoMidi = {
  \tripletFeel 8 \altoPenny
  \tripletFeel 8 \altoYellow
                 \altoObla
}

dynamicsBassPenny = {
  s2 | s1*3 | s2. s4\mf | s1*5 |
  s1*9 | % 24
  s1 | s2. s4\f | s1*7 | s2\> s8 s4.\omit\p |
  s1*3 | s2 s8 s4.\mf | s1*3 | s2. s4\f | s1 | % 26
  s1*6 | s2.\> s4\omit\p |
}

dynamicsBassYellow = {
  s1*2 |
  s1 | s2. s4\mf | s1*7 | % 28
  s1*9 |
  s1\f | s1*9 | % 30
  s1 | s\f | s1*7 |
}

dynamicsBassObla = {
  s1*3 | s2.. s8\mf | s1*5 | % 32
  s2 s8 s4.\f | s1*8 |
  s1*3 | s2.. s8\mf | s1*3 | s2 s8 s4.\f | s1 | % 34
  s1*6 | s2. s16 s8.\ff | s1*2 |
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  \dynamicsBassPenny
  \dynamicsBassYellow
  \dynamicsBassObla
}

bassPenny = \relative {
  \globalPenny
  r2 | R1*3 |
  r2^\markup Baritone r4 \tuplet 3/2 {f8 g a~} | a g \tuplet 3/2 {f e f~} f e \tuplet 3/2 {d c d~} | \tuplet 3/2 {d c bes~} 4 r8 c \tuplet 3/2 {f g a~} |
  a8 g f e f c \tuplet 3/2 {d(f) ees~} | 4 r r8 c f g | g f8 4 8 g4 aes8~ |
  aes4 r r8 f g aes~ | \tuplet 3/2 {8 f g~} 4 r2 | R1 | % 24a
  R1*3 |
  r2 r4 f8 g | g f8 8 8 4 g8 aes~ | 4 r r8 f g aes~ |
  aes8 f g4 r2 | \tuplet 3/2 {g8 d f~} 4 r \tuplet 3/2 {g8 aes bes~} \section \key ees \major | 4. aes8 g aes4 bes8~ | % 25a
  bes4 r8 aes8 g f4 ees8~ | 2. r4 | R1 | bes'4. c8 bes c4 bes8~ |
  bes4 r8 c bes8 4 aes8~ | 4 4 bes c | c g e8 r r4 \section \key f \major |
  R1*3 | % 26a
  r2 r8 c f g | g f8 8 8 4 g8 aes~ | 4 r r8 f g aes~ |
  aes8 f g4 r2 | r2 r4 \tuplet 3/2 {a8 bes c~} | 4. bes8 a bes4 c8~ |
  c4 r8 bes a g4 f8~ | 2. r4 | R1 | % 27a
  c'4. d8 c d4 c8~ | 4 r8 d c8 4 bes8~ | 4 4 c d |
  d4 a fis r |
}

bassAltPenny = { s2 s1*44 }

bassYellow = \relative {
  R1*2 |
  R1 | r2 r4 a8. bes16 | c2~8. a16 g8. a16 | % 28a
  f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 | g2 r4 a16 bes8 c16~ |
  c2~8. a16 g8. a16 | f2 r4 a8. 16 | g8.(f16 d4~8) 8 a'8. 16 |
  g2 r | r4 a16 bes8 c16~2~ | 8. a16 g8. a16 f2 | % 29a
  r4 a8. 16 g8.(f16 d4~8) 8 a'8. 16 g2 | r4 a16 bes8 c16~2~ |
  c8. a16 g8. a16 f2 | r4 a8. 16 g8.(f16) d4 | r a'8. 16 g4 r |
  c4 4 4 8. d16 | g,8. 16 8. 16 4 r | 8. 16 8. 16 4 r | % 30a
  f8. 16 8. 16 4 r | c'4 4 4 8. e16 | g,8. 16 8. 16 4 r |
  g8. 16 8. 16 4 r | f8. 16 8. 16 4 r | R1*2 |
  R1 \section \key g \major | d'4 4 4 8. e16 | a,8. 16 8. 16 4 r | % 31a
  a8. 16 8. 16 4 r | g8. 16 8. 16 4 r | d'4 4 4 8. e16 |
  a,8. 16 8. 16 4 r | 8. 16 8. 16 4 r | g8. 16 8. 16 4 r \section |
}

bassAltYellow = \tiny \relative {
  s1*30 |
  s1 | b4 a g fis8. 16 | 8. 16 e8. 16 f4 r |
  fis8. 16 e8. 16 fis4 r | s1 | b4 a g fis8. 16 |
  fis8. 16 e8. 16 fis4 r | 8. 16 e8. 16 fis4 r | s1 |
}

bassObla = \relative {
  \key ees \major
  R1*3 | % 32a
  r2 r4 r8 aes~ | 8 8 8 8 8 8 g f | e4 r r r8 bes'~ |
  bes8 8 8 8 8 8 aes g | aes bes4 c8~8 8 bes aes | g8 g aes g f aes g f |
  ees4 r r8 ees g bes~ | 8 ees, g bes~8 ees, g d'~ | 4. c8~4 r8 ees~ | % 33a
  ees8 c bes c bes8 4 g8~ | 4 r r8 ees g bes~ | 8 ees, g bes~8 ees, g d'~ |
  d4. c8~4 r8 ees~ | 8 c bes c bes8 4 g8~ | 4 r r2 |
  R1*3 | % 34a
  r2 r4 r8 bes~ | 8 8 8 8 8 8 aes g | aes bes4 c8~8 8 bes aes |
  g8 g aes g f aes g f | ees4 r r8 ees g bes~ | 8 ees, g bes~8 ees, g d'~ |
  d4. c8~4 r8 ees~ | 8 c bes c bes8 4 g8~ | 4 r r8 ees g bes~ | % 35a
  bes8 ees, g bes~8 ees, g d'~ | 4. c8~4 r8 ees~ | 8 c bes c bes8 4 g8~ |
  g4 r r r16 c c c | 8 8 4 r r8 c | bes8-. aes-. bes-. aes-. g-^ r r4 |
}

bassAltObla = \relative {
}

bass = {
  \bassPenny
  \bassYellow
  \bassObla
}

bassAlt = {
  \bassAltPenny
  \bassAltYellow
  \bassAltObla
}

bassMidi = {
  \tripletFeel 8 \bassPenny
  \tripletFeel 8 \bassYellow
                 \bassObla
}

bassAltMidi = {
  \tripletFeel 8  \bassAltPenny
  \tripletFeel 8 \bassAltYellow
                 \bassAltObla
}

pianoRHonePenny = \relative {
  \globalPenny
  r2 | <f' a c>4-. q-. q-. q-. | <d f bes>-. q-. <e g c>-. q-. | <c f a>-. q-. q-. q-. |
  <bes d f>4-. q-. <c e g>-. q-. | <f a c>-. q-. q-. q-. | <d f bes>-. q-. <e g c>-. q-. |
  <c f a>4-. q-. q-. q-. | <c ees aes> q q q | <c f aes> q q q |
  q4 q q q | <c f g> q <c e g> q | <c f g> q <c e g> q | % 24a
  <f a c>4-. q-. q-. q-. | <d f bes>-. q-. <e g c>-. q-. | <c f a>-. q-. q-. q-. |
  <c ees aes>4 4 4 4 | <c f aes> q q q | q q q q |
  <c f g>4 q <c e g>8 c <e g> c | <bes d f> bes <d f> bes <bes d f>4 r | % 25a
  \section \key ees \major <bes ees g>-. q-. q-. q-. |
  <bes ees bes'>4-. q-. q-. q-. | <c ees aes>4. <bes' des>8 r <aes c> r <f bes> | % 25b
  <ees aes>4. <aes des>8 r <aes c> r <ees aes> | <ees g bes>4-. q-. q-. q-. |
  <ees bes'>4-. q-. q-. q-. | <ees aes c>4-. q-. q-. q-. | % 25c
  <e g c>4-. q-. q-. r \section \key f \major |
  <f a c>4-. q-. q-. q-. | <d f bes>-. q-. <e g c>-. q-. | <c f a>-. q-. q-. q-. | % 26a
  <c ees aes>4-. q-. q-. q-. | <c f aes>-. q-. q-. q-. | q-. q-. q-. q-. |
  <c f g>4 q <c e g>8 c <e g> c | % 26c
  <c f g>4 4 <c e g>8 c <e g> c |
  <c f a>4-. q-. q-. q-. |
  <c f c'>4-. q-. q-. q-. | <d f bes>4. <c' ees>8 r <bes d> r <g c> | % 27a
  <f bes>4. <bes ees>8 r <bes d> r <f bes> |
  <f a c>4-. q-. q-. q-. | <f c'>-. q-. q-. q-. | <f bes d>-. q-. q-. q-. | % 27b
  <fis a d>4-. q-. q-. r |
}

pianoRHoneYellow = \relative {
  <d' g b>2. <c f a>4 | <c e g>1 |
  <c e g>2. <bes d f>4 | <a c f>2. a8. bes16 | <bes e g>1 | % 28a
  <a c f>2. <a d f>4 | <b d g>1 | <c e g>2. <a c f>4 |
  <bes e g>1 | <a c f>2. <a d f>4 | <b d g>1 |
  <c e g>2. <a c f>4 | <bes e g>8 r q r q r q r | <a c f>8 r q r q r q r | % 29a
  <b d g>8 r q r q r q r | <c e g> r q r q r <c f a> r | <bes e g> r q r q r q r |
  <a c f>8 r q r q r q r | <b d g> r q r q r q r | <c e g> r q r q r q r |
  <c f a>4 4 4 8. 16 | <bes e g>4 4 4 8. 16 | 4 4 4 8. 16 | % 30a
  <a c f>4 4 4 8. 16 | <c f a>4 4 4 8. 16 | <bes e g>4 4 4 8. 16 |
  <bes e g>4 4 2 | <a c f>1 | <g c e>2. <f bes d>4 | <f a c>1 |
  <a d fis>2. <g c e>4 \section \key g \major | <d' g b>4 4 4 8. 16 | <c fis a>4 4 4 8. 16 | % 31a
  <c fis a>4 4 4 8. 16 | <b d g>4 4 2 | <d g b>4 4 4 8. 16 |
  <c fis a>4 4 4 8. 16 | 4 4 2 | <b d g>1 \section |
}

pianoRHoneObla = \relative {
  \key ees \major
  r8 <bes ees g> r q r q r q | r q r q r q r q | r q r q r q r q | % 32a
  r8 <d f aes> r q r q r q | r q r q r q r q | r <bes ees g> r q r q r q |
  r8 q r q r q r q | r <c ees aes> r q r q r q | r <bes ees g> r q r q r q |
  r8 <g bes ees> r q r q r q | r q r q r q r q | r <bes d f> r q r q r q | % 33a
  r8 <ees g bes> r q r <d f bes> r q | r <bes ees g> r q r q r q | r <g bes ees> r q r q r q |
  r8 <bes d f> r q r <c ees g> r q | r8 <ees g bes> r q r <d f bes> r q | r <bes ees g> r q r q r q |
  r8 q r q r q r q | r <d f aes> r q r q r q | r q r q r q r q | % 34a
  r8 <bes ees g> r q r q r q | r q r q r q r q | r <c ees aes> r q r q r q |
  r8 <bes ees g> r q r q r q | r <g bes ees> r q r q r q | r q r q r q r q |
  r8 <bes d f> r q r <c ees g> r q | r <ees g bes> r q r <d f bes> r q | r <bes ees g> r q r q r q | % 35a
  r8 <g bes ees> r q r q r q | r <bes d f> r q r <c ees g> r q | r <ees g bes> r q r <d f bes> r q |
  r8 <ees g c> r q r q r q | r q r q r q r q | <d aes' bes>8-> q-> q-> q-> <ees g bes>-^ r <ees' ees'>-^ r |
}

pianoRHone = {
  \pianoRHonePenny
  \pianoRHoneYellow
  \pianoRHoneObla
}

pianoRHoneMidi = {
  \tripletFeel 8 \pianoRHonePenny
  \tripletFeel 8 \pianoRHoneYellow
                 \pianoRHoneObla
}

pianoRHtwoPenny = \relative {
  \globalPenny
  s2 | s1*44 |
}

pianoRHtwoYellow = \relative {
  s1*40
}

pianoRHtwoObla = \relative {
  s1*35
}

pianoRHtwo = {
  \pianoRHtwoPenny
  \pianoRHtwoYellow
  \pianoRHtwoObla
}

pianoRHtwoMidi = {
  \tripletFeel 8 \pianoRHtwoPenny
  \tripletFeel 8 \pianoRHtwoYellow
                 \pianoRHtwoObla
}

dynamicsPianoPenny = {
  \tuplet 3/2 {s4 s8\mf} s4 | s1-\markup\italic detached | s1*8 |
  s1*9 | % 24
  s1\< | s2 s\omit\ff | s1\f | s1*6 | s2\> s\omit\p |
  s1\mf | s1*5 | s1\< | s | s\f | % 26
  s1*6 | s2.\> s4\omit\p |
}

dynamicsPianoYellow = {
  s1\omit\mf-\markup{\dynamic mf \italic "(Ship’s Bell and ocean sounds)"} | s1 |
  s1*9 | % 28
  s1*8 | s1\< | |
  s1\f | s1*7 | s1*2-\markup\italic "(Ship’s Bell & ocean sounds)" | % 30
  s1 | s\f | s1*7 |
}

dynamicsPianoObla = {
  s1\mf | s1*8 | % 32
  s1\< | s\f | s1*6 | s4 s2.\> |
  s1\mf | s1*6 | s8 s2..\< | s1\f | % 34
  s1*6 | s8 s2..\< | s1\ff | s |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \dynamicsPianoPenny
  \dynamicsPianoYellow
  \dynamicsPianoObla
}

pianoLHPenny = \relative {
  \globalPenny
  \tuplet 3/2 {r4 c8} \tuplet 3/2 {f c f} | r4 e-. d-. c-. | bes-. g-. c-. c8 e, | f4-. e-. d-. c-. |
  bes'4-. g-. c-. c8 e, | f'4-. e-. d-. c-. | bes-. g-. c-. c8 e, |
  f4-. e-. d-. c-. | f1 | d |
  des1 | c4. 8~8 g' c,4 | 4. 8~8 g' c,4 | % 24a
  f'4-. e-. d-. c-. | bes-. g-. c-. 8 e, | f4-. e-. d-. c-. |
  f1 | d | des |
  c4. 8~8 g' c,4 | bes'4 f bes, r \section \key ees \major | % 25a
  ees4. 8~8 bes ees4 |
  g4. 8~8 ees f g | aes4 4 8 bes c des | % 25b
  ees4 aes,8 ees'~8 8 aes,4 | ees4. 8~8 f g ees |
  g4. 8~8 aes bes g | aes4. 8~8 ees aes4 | g e c r \section \key f \major | % 25c
  f'4-. e-. d-. c-. | bes-. g-. c-. 8 e, | f4-. e-. d-. c-. | % 26a
  f1 | d | des |
  c4. 8~8 g' c,4 | 4. 8~8 g' c,4 | f4. 8~8 c f4 |
  a4. 8~8 f g a | bes4 4 8 c d ees | f4 bes,8 f'~8 8 bes,4 | % 27a
  f4. 8~8 g a f | a4. 8~8 bes c a | bes4. 8~8 f bes4 |
  a4 fis d r |
}

pianoLHYellow = \relative {
  g,2. f4 | c1 |
  c'2. bes4 | f c' f, r | c' c,-. 2 | % 28a
  f4 c-. f d | g d-. g2 | c,2. f4 |
  c'4 c,-. 2 | f4 c-. f d | g d-. g2 |
  c,2. f4 | c'2. g4 | f2. d4 | % 29a
  g2. d4 | c2. f4 | c'2. g4 |
  f2. d4 | g2. b4 | c2 r8 bes a8. g16 |
  f4 a c a | c g c g' | c, g c g' | % 30a
  f4 c f8. d16 c8. a16 | f'4 c f c | c g c g' |
  c,4 g c8. b16 a8. g16 | f4 c8. 16 f2 | c'2. bes4 | f1 |
  d'2. c4 \section \key g \major | g4 b d b | d a d a' | % 31a
  d,4 a d a' | g d g8. e16 d8. b16 | g'4 d g d |
  d4 a d a' | d, a d8. c16 b8. a16 | g4 d8. 16 g4 r8 d \section |
}

pianoLHObla = \relative {
  \key ees \major
  \repeat unfold 3 {ees,8 r g bes ees, r g bes |} % 32a
  \repeat unfold 2 {bes8 r d f bes, r d f |}
  \repeat unfold 2 {ees, r g bes ees, r g bes |}
  aes8 r c ees aes, r c ees | % 32c+
  ees,8 r g bes bes r d f |
  \repeat unfold 2 {ees,8 r g bes ees, r g bes |} % 33a
  bes8 r g bes c r g f |
  ees8 r g bes bes, r d f | % 33b
  \repeat unfold 2 {ees8 r g bes ees, r g bes |}
  bes8 r g bes c r g f | % 33c
  ees8 r g bes ees, r d f |
  \repeat unfold 2 {ees8 r g bes ees, r g bes |}
  \repeat unfold 2 {bes8 r d f bes, r d f |} % 34a+
  \repeat unfold 2 {ees,8 r g bes ees, r g bes |} % 34b
  aes8 r c ees aes, r c ees |
  ees,8 r g bes bes r d f | % 34c
  \repeat unfold 2 {ees, r g bes ees, r g bes |}
  bes8 r g bes c r g f | % 35a
  ees r g bes bes, r d f |
  \repeat unfold 2 {ees8 r g bes ees, r g bes |}
  bes8 r g bes c r g f | % 35b+
  ees8 r g bes bes, r d f |
  c8 r g' r c, r g' r | % 35c
  c,8 r g' r c, r g' r |
  bes8-> aes-> g-> f-> ees-^ r <ees, ees'>-^ r |
}

pianoLH = {
  \pianoLHPenny
  \pianoLHYellow
  \pianoLHObla
}

pianoLHMidi = {
  \tripletFeel 8 \pianoLHPenny
  \tripletFeel 8 \pianoLHYellow
                 \pianoLHObla
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine \soprano \alto
            \new NullVoice = wordsmen \bass
            \new NullVoice = wordswomen \soprano
            \addlyrics \words
%            \new Voice \alto
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = single-sep
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSepWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsSepWomen
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics \wordsSepBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSepWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \teeny \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics {\tiny \wordsSepBass}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \soprano
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsSepWomen
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \teeny \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics {\tiny \wordsSepBass}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = single-men
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \soprano
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics \wordsSepBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = singlepage-sep
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSepWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsSepWomen
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics \wordsSepBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsSepWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \teeny \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics {\tiny \wordsSepBass}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \soprano
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsSepWomen
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \teeny \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics {\tiny \wordsSepBass}
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    output-suffix = singlepage-men
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \soprano
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsSepWomen}
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsBass
            \new Voice \partCombine \bass \bassAlt
            \new NullVoice \bass
            \addlyrics \wordsSepBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \sopranoMidi
            \addlyrics \wordsSepMidiWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoMidi
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bassMidi
            \new Voice \bassAlt
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
                      midiInstrument = "acoustic grand piano"
                    }
          <<
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHoneMidi
            \new Voice \pianoRHtwoMidi
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHMidi
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsWomen
            \new Voice \sopranoMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \altoMidi
          >>
                                % Single bass staff
          \new Staff = men \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bassMidi
            \addlyrics \wordsBassMidi
            \new Voice \bassAlt
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
                      midiInstrument = "acoustic grand piano"
                    }
          <<
            \new Voice \TempoTrackPiano
            \new Voice \pianoRHoneMidi
            \new Voice \pianoRHtwoMidi
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHMidi
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
