\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Frankie and Johnnie"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Fred Karger, Alex Gottlieb & Ben Weisman"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \global
  \tempo "Ad lib." 4=120 s1*14
  \tempo "Medium blues" 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "95a" s1*3
  \textMark \markup\box "95b" s1*4
  \textMark \markup\box "95c" s1*3
  \textMark \markup\box "95d" s1*4
  \repeat volta 10 {
  \textMark \markup\box "96a" s1*2
  \textMark \markup\box "96b" s1*2
  \textMark \markup\box "96c" s1*2
  \textMark \markup\box "97a" s1*2
  \textMark \markup\box "97b" s1*2
    \alternative {
      {s1 \textMark \markup\box "97c" s1}
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  c1 s s | c:7 f:7 s c2 g4:7 a:dim | c2 a:7-9 d:m7 g:7 aes:7 g:7+5 | c2 c:7 f fis:dim c4. a8:7 s2 d:m7 g:7 |
  \repeat volta 10 {
    c4. f8:7 s2 c1 | s4. f8:7 s2 c2 d4:m7 c:7 | f1:7 s2 fis:dim |
    c2 g4:7 c:dim c2 a:m7 |
    g2:7 d4.:m7 g8:7 | s2 aes4:7 g:7+5 |
    \alternative {
      {c4 c:7 f fis:dim | c aes:7 g2:7 |}
      {c4 c:7 f fis:dim | c4 des:9 c2:9}
    }
  }
}

melodyA = \relative {
  r8 c'' c a c4 c | g8 8~2. | r8 c c c c4 c |
  g1 | r8 c c a c4 a | c a8 c~4 8 a | c4 c b a |
  g4 e e ees | d1~ | 4 ees8 c ees(c) ees4 |
  c1 | R1*3 | \section \break
}

melodyB = \relative {
  \tag #'dash                          {\slurDashed c'16(16) e8 g a(a) g a8(8) \slurSolid |} % 96a
  \tag #'(v1 v2 v3 v4 v6 v7 v8 v9 v10) {            c,8      e8 g a~a  g a4               |}
  \tag #'v5                            {            c,16 16  e8 g a a  g a8 8             |}
  \tag #'dash                          {a8 c,~ \slurDashed 2 (4) \slurSolid |}
  \tag #'(v1 v2 v3 v4 v5 v6 v7 v8 v10) {a8 c~              2~ 4             |}
  \tag #'v9                            {a8 c~              2  4             |}
  \tag #'dash                       {\slurDashed c16(16 e8) g a~a g a(a) \slurSolid |} % 96b
  \tag #'v3                         {            c,8(e)     g a~a g a4  |}
  \tag #'v5                         {            c,8 e      g a~a g a a |}
  \tag #'(v1 v2 v4 v6 v7 v8 v9 v10) {            c,8 e      g a~a g a4  |}
  \tag #'dash {<<{\vt \once\hideNotes c,2. 4} \new Voice {c1}>> |}
  \tag #'(v1 v2 v3 v4 v6 v7 v8 v9 v10) { c1 |}
  \tag #'v5  { c2. 4 |}
  \tag #'dash                {\slurDashed c'8(c) a8 c~c c(a4) \slurSolid |} % 96c
  \tag #'(v1 v2 v5 v6 v7 v9) {            c8 8   a8 c~c c a4             |}
  \tag #'(v3)                {            c4     a8 c~c c a4             |}
  \tag #'(v4)                {            c4     a8 c~c4  a4             |}
  \tag #'(v8)                {            c8 c   a8 c~c4  a4             |}
  \tag #'(v10)               {            c4     a8 c~c4  a4             |}
  \tag #'dash                       {c8 \slurDashed 8(2) \slurSolid 8 a |}
  \tag #'(v1 v2 v3 v5 v6 v8 v9 v10) {c8             8(2)            8 a |}
  \tag #'v4                         {c8             8 2             8 a |}
  \tag #'v7                         {c4~              2             8 a |}
  \tag #'dash                       {\slurDashed c16(16) 8(4) b8(8) a(a) \slurSolid |} % 97a
  \tag #'v5                         {            c16 16  8 4  b8 8  a a  |}
  \tag #'v7                         {            c16 16  4.   b8 8  a4   |}
  \tag #'(v1 v2 v3 v4 v6 v8 v9 v10) {            c8      4.   b4    a    |}
  \tag #'dash {<<
    {\vt \tiny g4 \slurDashed e8(8) }
      \new Voice {\vo g2}>>
      \ov \normalsize e8(8) ees(8) |}
  \tag #'(v1 v3)              {             g2                    e4 ees |}
  \tag #'v9                   {             g2                    e8 8 ees8 8 |}
  \tag #'v5                   {             g4 e8 8               e4 ees |}
  \tag #'(v2 v4 v6 v7 v8 v10) {             g4 e                  e4 ees |}
  d1~ | % 97b
  \tag #'dash           {\slurDashed 8(ees8) 8 c ees(c) \slurSolid ees4 |}
  \tag #'(v4 v5 v6 v9)  {            8(ees8) 8 c ees c             ees4 |}
  \tag #'(v1 v2 v3 v10) {            8 ees8  8 c ees(c)            ees4 |}
  \tag #'(v7 v8)        {            8 ees8  8 c ees c             ees4 |}
}

melodyC = \relative {c'1 | R1 |}
melodyD = \relative {c'1~ | 2.\fermata r4 |}

melody = \relative {
  \global
  \melodyA
  \repeat volta 10 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \bar "|."
}

melodySingle = \relative {
  \global
  \melodyA
  \keepWithTag #'v1  \melodyB \melodyC
  \keepWithTag #'v2  \melodyB \melodyC
  \keepWithTag #'v3  \melodyB \melodyC
  \keepWithTag #'v4  \melodyB \melodyC
  \keepWithTag #'v5  \melodyB \melodyC
  \keepWithTag #'v6  \melodyB \melodyC
  \keepWithTag #'v7  \melodyB \melodyC
  \keepWithTag #'v8  \melodyB \melodyC
  \keepWithTag #'v9  \melodyB \melodyC
  \keepWithTag #'v10 \melodyB \melodyD
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  This sto -- ry has no mor -- al, __
  This sto -- ry has no end;
  This sto -- ry on -- ly goes to show __
  That there ain’t no good in men.
  They’ll do you wrong, __
  Yes, they’ll do __ you wrong.
  \set stanza = "(Johnnie:) 1."
  Frank -- ie and me, __ we are lov -- ers, __
  \nom Oh, __ _ Lord -- y, \yesm how __ we can love;
  _ \nom Vowed we’d \yesm be true __ \nom to each \yesm oth -- er, __
  Just as true as stars a -- bove. __ _
  I’m your \nom man, __ _
  I’ll \yesm nev -- er do __ you wrong.
}

wordsTwo = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Johnnie:) 2."
  I knew that I __ was a win -- ner, __
  \nom When  __ _ a \yesm new girl __ caught my eye; _
  \nom But I \yesm could -- n’t \nom two -- time \yesm Frank -- ie, __
  For that chick named Nel -- lie Bly.
  I’m Frank -- ie’s \nom man, __ _
  I \yesm would -- n’t do __ her wrong.
}

wordsThree = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Johnnie:) 3."
  Ba -- by, leave me __ here to gam -- ble, __
  I’ll __ be home __ be -- fore dawn;
  _ Don’t wait up __ \nom for me, \yesm hon -- ey, __
  Don’t you wor -- ry while I’m gone.
  \set stanza = "(Frankie:)"
  _ You’re my \nom man, _
  Now \yesm don’t you do __ me wrong.
}

wordsFour = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Group:) 4."
  John -- nie he was -- n’t too luck -- y, __
  \nom He __ _ was \yesm a  -- los -- in’ that night;
  _ So he tried __ \nom _ to \yesm change \nom his luck \yesm
  With the gal who was -- n’t right.
  He’s Frank -- ie’s man, __
  But he’s \nom do -- ing \yesm her wrong.
}

wordsFive = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Girl:) 5."
  \nom Frank -- ie, I don’t wan -- na __ \yesm make \nom you no \yesm trou -- ble, __
  \nom Hon -- ey, I don’t wan -- na __ \yesm tell \nom you no \yesm lie,
  But! \nom I saw \yesm your sweet __ man, __ John -- nie, __
  He was \nom mess -- in’ a -- round with that Nel -- lie \yesm Bly.
  \nom Hon -- ey, \yesm he’s your man, __
  And he’s \nom do -- in’ \yesm you wrong.
}

wordsSix = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Instrumental:) 6."
  \repeat unfold 15 \skip 1
  \set stanza = "(Frankie:)"
  \nom If Johnnie’s \yesm out cheat -- \nom in’ with \yesm Nel -- lie, __
  Then I’ll have to do him in.
  ’Cause he’s my man, __
  But he’s \nom do -- in’ \yesm me wrong.
}

wordsSeven = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Group:) 7." 
  Frank -- ie went out __ to find John -- nie, __
  \nom She  __ _ was -- n’t \yesm look -- in’ for fun;
  _ \nom In her \yesm sweet dainty __ \nom lit -- tle \yesm hand, __ _
  She was \nom tot -- in’ \yesm a \nom for -- ty -- \yesm four gun.
  To shoot her \nom man, __ _
  ’Cause \yesm he was \nom do -- in’ \yesm her wrong.
}

wordsEight = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Group:) 8."
  Frank -- ie looked in -- to the bar -- room, __
  \nom Right __ _ there \yesm in front __ of her eye;
  _ \nom There was \yesm her sweet __ \nom _ man, \yesm John -- nie, __
  Mak -- in’ love to Nel -- lie Bly.
  He was her \nom man, __ _
  She \yesm caught him \nom do -- in’ \yesm her wrong.
}

wordsNine = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Johnnie:) 9."
  Frank -- ie, I beg __ you don’t shoot \nom me, __ _
  They’ll put __ _ you \yesm a -- way __ in a cell;
  _ \nom They’ll put \yesm you where __ the \nom cold wind \yesm blows, __
  From the hot -- test corner of hell. __ ""
  \set stanza = "(Frankie:)"
  \nom John -- nie, you’re my \yesm man, __
  But you’re \nom do -- in’ \yesm me wrong.
}

wordsTen = \lyricmode {
  \repeat unfold 37 \skip 1
  \set stanza = "(Johnnie:) 10."
  Please roll me o -- ver real eas -- y, __
  \nom Please __ _ roll \yesm me o -- ver real slow;
  _ Roll me o \nom _ -- ver \yesm gen -- tly, __
  ’Cause my wound it hurts me so.
  I was your \nom man, __ _
  I \yesm know I done __ you _ wrong.
}

wordsSingle = \lyricmode {
  This sto -- ry has no mor -- al, __
  This sto -- ry has no end;
  This sto -- ry on -- ly goes to show __
  That there ain’t no good in men.
  They’ll do you wrong, __
  Yes, they’ll do __ you wrong.
  \set stanza = "(Johnnie:) 1."
  Frank -- ie and me, __ we are lov -- ers, __
  Oh, Lord -- y, how __ we can love;
  Vowed we’d be true __ to each oth -- er, __
  Just as true as stars a -- bove. __
  I’m your man, __
  I’ll nev -- er do __ you wrong.

  \set stanza = "(Johnnie:) 2."
  I knew that I __ was a win -- ner, __
  When a new girl __ caught my eye;
  But I could -- n’t two -- time Frank -- ie, __
  For that chick named Nel -- lie Bly.
  I’m Frank -- ie’s man, __
  I would -- n’t do __ her wrong.

  \set stanza = "(Johnnie:) 3."
  Ba -- by, leave me __ here to gam -- ble, __
  I’ll __ be home __ be -- fore dawn;
  Don’t wait up __ for me, hon -- ey, __
  Don’t you wor -- ry while I’m gone.
  \set stanza = "(Frankie:)"
  You’re my man,
  Now don’t you do __ me wrong.

  \set stanza = "(Group:) 4."
  John -- nie he was -- n’t too luck -- y, __
  He was a  -- los -- in’ that night;
  So he tried __ to change his luck
  With the gal who was -- n’t right.
  He’s Frank -- ie’s man, __
  But he’s do -- ing her wrong.

  \set stanza = "(Girl:) 5."
  Frank -- ie, I don’t wan -- na __ make you no trou -- ble, __
  Honey, I don’t wanna __ tell you no lie,
  But! I saw your sweet __ man, __ _ John -- nie, __
  He was mess -- in’ a -- round with that Nell -- ie Bly.
  Hon -- ey, he’s your man, __
  And he’s do -- in’ you wrong.

  \set stanza = "(Instrumental:) 6."
  \repeat unfold 15 \skip 1
  \set stanza = "(Frankie:)"
  If Johnnie’s out cheat -- in’ with Nel -- lie, __
  Then I’ll have to do him in.
  ’Cause he’s my man, __
  But he’s do -- in’ me wrong.

  \set stanza = "(Group:) 7." 
  Frank -- ie went out __ to find John -- nie, __
  She was -- n’t look -- in’ for fun;
  In her sweet dainty __ lit -- tle hand, __
  She was tot -- in’ a for -- ty -- four gun.
  To shoot her man, __
  ’Cause he was do -- in’ her wrong.

  \set stanza = "(Group:) 8."
  Frank -- ie looked in -- to the bar -- room, __
  Right there in front __ of her eye;
  There was her sweet __ man, John -- nie, __
  Mak -- in’ love to Nel -- lie Bly.
  He was her man, __
  She caught him do -- in’ her wrong.

  \set stanza = "(Johnnie:) 9."
  Frank -- ie, I beg __ you don’t shoot me, __
  They’ll put you a -- way __ in a cell;
  They’ll put you where __ the cold wind blows, __
  From the hot -- test corner of hell. __
  \set stanza = "(Frankie:)"
  John -- nie, you’re my man, __
  But you’re do -- in’ me wrong.

  \set stanza = "(Johnnie:) 10."
  Please roll me o -- ver real eas -- y, __
  Please roll me o -- ver real slow;
  Roll me o -- ver gen -- tly, __
  ’Cause my wound it hurts me so.
  I was your man, __
  I know I done __ you wrong.
}

midiWords = \lyricmode {
  "This " sto "ry " "has " "no " mor "al, " 
  "\nThis " sto "ry " "has " "no " "end; "
  "\nThis " sto "ry " on "ly " "goes " "to " "show " 
  "\nThat " "there " "ain’t " "no " "good " "in " "men. "
  "\nThey’ll " "do " "you " "wrong, " 
  "\nYes, " "they’ll " "do "  "you " "wrong.\n"
  \set stanza = "(Johnnie:) 1."
  "\n[Johnnie] Frank" "ie " "and " "me, "  "we " "are " lov "ers, " 
  "\nOh, " Lord "y, " "how "  "we " "can " "love; "
  "\nVowed " "we’d " "be " "true "  "to " "each " oth "er, " 
  "\nJust " "as " "true " "as " "stars " a "bove. " 
  "\nI’m " "your " "man, " 
  "\nI’ll " nev "er " "do "  "you " "wrong.\n"

  \set stanza = "(Johnnie:) 2."
  "\n[Johnnie] I " "knew " "that " "I "  "was " "a " win "ner, " 
  "\nWhen " "a " "new " "girl "  "caught " "my " "eye; "
  "\nBut " "I " could "n’t " two "time " Frank "ie, " 
  "\nFor " "that " "chick " "named " Nel "lie " "Bly. "
  "\nI’m " Frank "ie’s " "man, " 
  "\nI " would "n’t " "do "  "her " "wrong.\n"

  \set stanza = "(Johnnie:) 3."
  "\n[Johnnie] Ba" "by, " "leave " "me "  "here " "to " gam "ble, " 
  "\nI’ll "  "be " "home "  be "fore " "dawn; "
  "\nDon’t " "wait " "up "  "for " "me, " hon "ey, " 
  "\nDon’t " "you " wor "ry " "while " "I’m " "gone. "
  \set stanza = "(Frankie:)"
  "\n[Frankie] You’re " "my " "man, "
  "\nNow " "don’t " "you " "do "  "me " "wrong.\n"

  \set stanza = "(Group:) 4."
  "\n[Group] John" "nie " "he " was "n’t " "too " luck "y, " 
  "\nHe " "was " a los "in’ " "that " "night; "
  "\nSo " "he " "tried "  "to " "change " "his " "luck "
  "\nWith " "the " "gal " "who " was "n’t " "right. "
  "\nHe’s " Frank "ie’s " "man, " 
  "\nBut " "he’s " do "ing " "her " "wrong.\n"

  \set stanza = "(Girl:) 5."
  "\n[Girl] Frank" "ie, " "I " "don’t " wan "na "  "make " "you " "no " trou "ble, " 
  "\nHoney, " "I " "don’t " "wanna "  "tell " "you " "no " "lie, "
  "\nBut! " "I " "saw " "your " "sweet "  "man, "  "" John "nie, " 
  "\nHe " "was " mess "in’ " a "round " "with " "that " Nell "ie " "Bly. "
  "\nHon" "ey, " "he’s " "your " "man, " 
  "\nAnd " "he’s " do "in’ " "you " "wrong.\n"

  \set stanza = "(Instrumental:) 6."
  "\n[Instrumental]\n" \repeat unfold 14 \skip 1
  \set stanza = "(Frankie:)"
  "\n[Frankie] If " "Johnnie’s " "out " cheat "in’ " "with " Nel "lie, " 
  "\nThen " "I’ll " "have " "to " "do " "him " "in. "
  "\n’Cause " "he’s " "my " "man, " 
  "\nBut " "he’s " do "in’ " "me " "wrong.\n"

  \set stanza = "(Group:) 7." 
  "\n[Group] Frank" "ie " "went " "out "  "to " "find " John "nie, " 
  "\nShe " was "n’t " look "in’ " "for " "fun; "
  "\nIn " "her " "sweet " "dainty "  lit "tle " "hand, " 
  "\nShe " "was " tot "in’ " "a " for ty "four " "gun. "
  "\nTo " "shoot " "her " "man, " 
  "\n’Cause " "he " "was " do "in’ " "her " "wrong.\n"

  \set stanza = "(Group:) 8."
  "\n[Group] Frank" "ie " "looked " in "to " "the " bar "room, " 
  "\nRight " "there " "in " "front "  "of " "her " "eye; "
  "\nThere " "was " "her " "sweet "  "man, " John "nie, " 
  "\nMak" "in’ " "love " "to " Nel "lie " "Bly. "
  "\nHe " "was " "her " "man, " 
  "\nShe " "caught " "him " do "in’ " "her " "wrong.\n"

  \set stanza = "(Johnnie:) 9."
  "\n[Johnnie] Frank" "ie, " "I " "beg "  "you " "don’t " "shoot " "me, " 
  "\nThey’ll " "put " "you " a "way "  "in " "a " "cell; "
  "\nThey’ll " "put " "you " "where "  "the " "cold " "wind " "blows, " 
  "\nFrom " "the " hot "test " "corner " "of " "hell. " 
  \set stanza = "(Frankie:)"
  "\n[Frankie] John" "nie, " "you’re " "my " "man, " 
  "\nBut " "you’re " do "in’ " "me " "wrong.\n"

  \set stanza = "(Johnnie:) 10."
  "\n[Johnnie] Please " "roll " "me " o "ver " "real " eas "y, " 
  "\nPlease " "roll " "me " o "ver " "real " "slow; "
  "\nRoll " "me " o "ver " gen "tly, " 
  "\n’Cause " "my " "wound " "it " "hurts " "me " "so. "
  "\nI " "was " "your " "man, " 
  "\nI " "know " "I " "done "  "you " "wrong. "
}

pianoRHone = \relative {
  \global \vo
  r8 c'' c a c4 c | g8 8~2. | r8 c c c c4 c |
  \ov <bes, e g>1 | \vo r8 c' c a c4 a | c4 a8 c~4 8 a | c4 c b a |
  g4 e e ees | d1~ | 4 ees8 c ees(c) ees4 |
  c4 c e8 c4 e8 | f c f fis~4 r | \ov <c e g>4. <cis g' a>8~2 | <c a'>8 e ees4 <b d> <b d g> | \section
  \repeat volta 10 {
    \vo c8 e g a~a g a4 | \ov <e a>8 c~2. | % 96a
    c8 e g a~a g a4 | \ov c,1 |
    \vo c'8 8 a c~c c a4 | c8 8~2 8 a |
    c8 4. b4 a | g2 e4 ees | % 97a
    d1~ | 8 ees8 8 c ees c ees4 |
    \alternative {
      {
        \ov <e, g c>4 <bes' e>8. g'16 <a, f'>4 <ees' a>8. c'16 |
        <e, g c>4 <c f bes>8 <b e g>8~4 r |
      }
      {
        c8. c'16 bes8. g16 ges8. f16 ees8. c16 |
        g'4 \caesura <ces, ees bes'>-- <bes d g>--\fermata r |
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  <e' g>1 | <c e> | <e g> |
  s1 | <ees \parenthesize a>~ | 1 | <e g>2 <d f>4 <c fis> |
  <c e>4 r <g bes cis>2 | r4 <f a c> r <f b> | r <ges bes> r <f b> |
  <e g>2 bes' | a4. <a c>8~4 r | s1*2 \section |
  \repeat volta 10 {
    c4. <c ees>8~4 4 | s1 | % 96a
    c4. <c ees>8~4 ees | s1 |
    ees1~ | 2. 4 |
    <e g>2 <d f>4 <cis d fis> | <c e>2 <g c> | % 97a
    r4 <f b> r <f a c>8 <f b>~ | 8 r r4 <ges bes> <f b> |
    \alternative { {s1*2 |} {s1*2 |} }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp |
}

pianoLH = \relative {
  \global
  <c, g' e'>1\arpeggio~ | q~ | q~ |
  q | <f c' a'>1\arpeggio~ | q | c4 c d dis |
  e4 r a2 | d,4. a'8 g4. 8 | aes4. 8 g4 4 |
  c,4 r e r | f4. fis8~4 r | g4. a8~2 | d,8 e f fis g4 <g, g'> | \section
  \repeat volta 10 {
    <c g' e'>4.\arpeggio <f c' a'>8~2 | <c g' e'>4.\arpeggio e8~8 a g e | % 96a
    <c g' e'>4.\arpeggio <f c' a'>8\arpeggio ~2 | r8 \arpeggioParenthesis <c e'>4.\arpeggio <d f'>4\arpeggio <e g'>\arpeggio |
    \arpeggioNormal <f c' a'>1\arpeggio ~ | 2 fis4 <ees' a> |
    g,4 g' <d, d'> <dis dis'> | <e e'>2 a | % 97a
    g4 r d4. g8~ | 4 r aes g |
    \alternative {
      {c,4 e f fis | g <aes ges'>8 <f f'>8~4 g, |}
      {c4 e f fis | g \caesura <des aes'>-- <c g'>--\fermata r |}
    }
  }
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
            \addlyrics \wordsFive
            \addlyrics \wordsSix
            \addlyrics \wordsSeven
            \addlyrics \wordsEight
            \addlyrics \wordsNine
            \addlyrics \wordsTen
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melodySingle
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
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
