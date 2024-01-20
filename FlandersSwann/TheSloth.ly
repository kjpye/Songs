\version "2.19.80"

\include "kjp.ly"

instructions = {
  s4 s2.*8
  s2.-\markup\musicglyph "scripts.segno"
  s2.*34 |
  s2 s8.. s32-\markup{\halign #RIGHT to \musicglyph "scripts.coda"}
  s1*3 | s2... s32-\markup{\halign #RIGHT \bold Fine}
  s2.-\markup{\halign #LEFT \musicglyph "scripts.coda"}
  s2.*30
  s2 s8.. s32 -\markup{\halign #RIGHT \bold "Dal segno" \musicglyph "scripts.segno"}
}

RehearsalTrack = {
  \textMark \markup \box "185a" s4 s2.*7
  \textMark \markup \box "186a" s2.
  \repeat volta 3 {
    s2.*7
  \textMark \markup \box "186b" s2.*8
  \textMark \markup \box "186c" s2.*8
  \textMark \markup \box "186d" s2.*5
    \alternative {
      \volta 1 {  s2.*3
                  \textMark \markup \box "187a" s2.
                }
      \volta 2 { s2.*4 }
      \volta 4 { s1*2
                  \textMark \markup \box "187b" s1*2
               }
    }
  }
  s2.*3
  \textMark \markup \box "187c" s2.*4
  \textMark \markup \box "187d" s2.*4
  \textMark \markup \box "188a" s2.*4
  \textMark \markup \box "188b" s2.*4
  \textMark \markup \box "188c" s2.*5
  \textMark \markup \box "188d" s2.*8
}

RehearsalTrackSingle = {
  \textMark \markup \box "185a" s4 s2.*7
  \textMark \markup \box "186a" s2.*8
  \textMark \markup \box "186b" s2.*8
  \textMark \markup \box "186c" s2.*8
  \textMark \markup \box "186d" s2.*8
  \textMark \markup \box "187a" s2.*8
  \textMark \markup \box "186b" s2.*8
  \textMark \markup \box "186c" s2.*8
  \textMark \markup \box "186d" s2.*5
  s2.*4
  s2.*3
  \textMark \markup \box "187c" s2.*4
  \textMark \markup \box "187d" s2.*4
  \textMark \markup \box "188a" s2.*4
  \textMark \markup \box "188b" s2.*4
  \textMark \markup \box "188c" s2.*5
  \textMark \markup \box "188d" s2.*8
  s2.*7
  \textMark \markup \box "186b" s2.*8
  \textMark \markup \box "186c" s2.*8
  \textMark \markup \box "186d" s2.*5
  s1*2
  \textMark \markup \box "187b" s1*2
}

global = {
  \time 3/4
  \key bes \major
  \tempo "Gently Swaying" 4=132
%  \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
  \partial 4
}

dynamicsMelodyA = {
  s4 | s2.*7 | s2 s4\p |
}

dynamicsMelodyB = { s2.*28 }
dynamicsMelodyC = { s2.*4 }
dynamicsMelodyD = { s2.*4 }
dynamicsMelodyE = { s1-\markup\upright\bold "meno mosso" | s1*3 |}
dynamicsMelodyF = { s2.\omit\f-\markup{\italic più \dynamic f} | s2.*30 s2 s4\p | }

dynamicsMelody = {
  \dynamicsMelodyA
  \repeat volta 3 {
    \dynamicsMelodyB
    \alternative {
      \volta 1 \dynamicsMelodyC
      \volta 2 \dynamicsMelodyD
      \volta 4 \dynamicsMelodyE
    }
  }
  \dynamicsMelodyF
}

melodyA = \relative c {
  \global
  s4
  s2.
  s2.
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s2 f4
}

melodyB = \relative {
    bes2 d4
    f2 bes,4 % 10
    ees2 g4
    bes2 bes4
    a2 f4
    ees2 c4
    bes2 r4 % 15
    r4 r f4
    bes2 d4
    f2 bes,4
    ees2 g4
    bes2 d4 % 20
    c2 bes4
    a2 g4
    f2.~ %
    f4 r f
    bes2 a4 % 25
    c2 bes4
    c,2 b4
    d2 c4
    c'2 bes4
    d2 c4 % 30
    a2. %
    r4 r f4
    bes,2 d4
    f2 bes,4
    ees2 g4 % 35
    bes2 bes4
  }

melodyC = \relative {
  a'2 f4
  ees2 c4
  bes2. %
  r4 r f % 40
}

melodyD = \relative {
  a'2 f4 | ees2 c4 | bes2. | R |
}

melodyE = \relative {
  \time 4/4 
  f'4 f'8(g f4) f,
  ees4 f'8(g f4) c,
  bes1 r
}

melodyF = \relative {
  \time 3/4
  bes'8 bes bes a a a
  c8 c c c bes bes
  f8 f f f fis fis
  g8 g g g g f
  f8 f f f f d
  g8 g g g g f
  a8 a a a a a
  a8 a a a a a
  r4 c b
  d8 d d d c4
  g8 g g g gis4
  a8 a a a a4
  r4 f8 f f4
  r4 f8 f f4
  d8 ees f4 4 %%%%%?
  g8 f g f g a
  bes8 bes bes bes a a
  c4 bes r
  f8 f f f fis fis
  g4 f r
  r8 f c' bes c bes
  c8 bes c bes c d
  c2.
  r4 r d
  c2 bes4
  ges4 d' d
  c2 bes4
  f4 r fis
  g2 ees4
  a2 f4
  bes2.
  r4 r f,
}

melody = {
  \melodyA
  \repeat volta 3 {
    \melodyB
    \alternative {
      \volta 1 { \melodyC }
      \volta 2 { \melodyD }
      \volta 4 { \melodyE \bar "|." }
    }
  }
  \melodyF
  \bar "||"
}

melodySingle = {
  \melodyA
  \melodyB \melodyC
  \melodyB \melodyD
  \melodyF
  \melodyB \melodyE
}

trebleOneA = \relative {
  \global \oneVoice
  d'''4(
  c2 bes4
  ges2) d'4(
  c2 bes4
  f2) <fis, fis'>4(
  <g g'>2) ees'4( % 5
  <a, a'>2) f'4(
  <bes, d bes'>2.)
  <d, f>4 <c ees> <a c>
}

trebleOneB = \relative {
  r4 f4(<bes d>)
  r4 f4(<bes f'>)% 10
  r4 bes(<ees g>)
  r4 bes(<ees g>)
  r4 bes(<ees f>)
  r4 f,(<a ees'>)
  r4 f(f) %%%%% 15
  <f ees' f>2.
  r4 f(<bes d>)
  r4 f4(<bes f'>)
  r4 <bes ees g>2
  r4 <ees g>2 % 20
  \voiceOne r4 <e g>2 \oneVoice
  r4 g,4(<bes e>)
  r4 <a c f>2
  r4 <a c f> q
  r4 <f bes d>(<d' f>) % 25
  r4 <bes d f>(<d fis bes>)
  r4 <g, c>(<ees' g>)
  r4 <bes c>(<ees g>)
  r4 <c e>(<e g>)
  r4 <bes c>(<e g>) % 30
  r4 <a, c>(q) %%%%%
  \voiceOne f'2 <a, c ees f>4 \oneVoice
  r4 f(<bes d f>)
  r4 q(<f' bes>)
  r4 <bes, ees g> r % 35
  r4 <ees g>2
}

trebleOneC = \relative {
  r4 <bes d f> r
  r4 <f a c ees>2
  r4 f(<bes d>) %%%%%%%%
  r4 <c ees> <a c> % 40
}

trebleOneD = \relative {
  r4 <bes d f> r
  r4 <f a c ees>2
  r4 <f bes> <bes d>
  <ees f>2.
}

trebleOneF = \relative {
  bes''2 a4 % 45
  c2 bes4
  f2 fis4
  g4 r d
  \voiceOne f2 d4
  g2 f4 % 50
  a2.~
  a2 g4 \oneVoice
  c2 b4
  d2 c4
  g2 gis4 % 55
  a2 g4
  f2 <f a>4
  <g bes>2 <a c>4
  <bes d>2 s4
  r4 r f4 % 60
  bes2 a4
  c2 bes4
  <bes, d f>2 <bes d fis>4->
  <bes d g>4-> r ges'->
  f2 bes4 % 65
  c2 d4
  c2.~
  c2 <d, d'>4
  <c c'>2 <bes bes'>4
  <ges ges'>4 ges' <d d'>
  <c c'>2 <bes bes'>4
  <f f'>2 <fis ais e' fis>4
  <bes g'>2 <g ees'>4
  <c a'>2 <a f'>4
  <bes d bes'>2.
  <a, c ees>2.
}

trebleOneE = \relative {
  \time 4/4
  <bes d f>2 r
  <f a ees'>2 r
  \vo r4 <bes' d>8 <f c'> <d bes'> <bes' d> <d bes'> <f c'>
  <bes d>1 \ov
}

trebleOne = {
  \trebleOneA
  \repeat volta 4 {
    \trebleOneB
    \alternative {
      \volta 1 { \trebleOneC }
      \volta 2 { \trebleOneD }
      \volta 4 { \trebleOneE }
    }
  }
  \trebleOneF
  \bar "||"
}

trebleOneSingle = {
  \trebleOneA
  \trebleOneB \trebleOneC
  \trebleOneB \trebleOneD
  \trebleOneF
  \trebleOneB \trebleOneE
}

trebleTwoA = \relative c' {
  s4
  s2.
  s2.
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s2.
}

trebleTwoB = \relative {
  s2.
  s2. % 10
  s2.
  s2.
  s2.
  s2.
  s2. % 15
  s2.
  s2.
  s2.
  s2.
  s2. % 20
  c'2(bes4)
  s2.
  s2.
  s2.
  s2. % 25
  s2.
  s2.
  s2.
  s2.
  s2. % 30
  s2.
  <f a>4 <g bes> s4
  s2.
  s2.
  s2. % 35
  s2.
}

trebleTwoC = \relative { s2.*4 }

trebleTwoD = \relative { \time 4/4 s2.*4 | }

trebleTwoF = \relative {
  s2.*4
  r4 <f' bes>2
  r4 <g bes>2 % 50
  r4 <a ees'> q
  q2 r4
  s2.
  s2.
  s2. % 55
  s2.
  s2.
  s2.
  s2.
  s2. % 60
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
}

trebleTwoE = \relative {
  s1*2
  <f bes d>1~q
}

trebleTwo = {
  \global \voiceTwo
  \trebleTwoA
  \repeat volta 3 {
    \trebleTwoB
    \alternative {
      \volta 1 \trebleTwoC
      \volta 2 \trebleTwoD
      \volta 4 \trebleTwoE
    }
  }
  \trebleTwoF
}

trebleTwoSingle = {
  \global \voiceTwo
  \trebleTwoA
  \trebleTwoB \trebleTwoC
  \trebleTwoB \trebleTwoD
  \trebleTwoB \trebleTwoE
  \trebleTwoF
}

dynamicsPianoA = {
  s4\p | s2.*8 |
}

dynamicsPianoB = { s2.*28 | }

dynamicsPianoC = { s2.*4 | }

dynamicsPianoD = { s2. | s | s | s | }

dynamicsPianoE = { | \time 4/4 s1 | s | s | s | }

dynamicsPianoF = {
  \time 3/4 s2.\omit\f-\markup{\italic più \dynamic f} | s2.*10 |
}

dynamicsPiano = {
  \dynamicsPianoA
  \repeat volta 3 {
    \dynamicsPianoB
    \alternative {
      \volta 1 { \dynamicsPianoC }
      \volta 2 { \dynamicsPianoD }
      \volta 4 { \dynamicsPianoE }
    }
  }
  \dynamicsPianoF
}

dynamicsPianoSingle = {
  \dynamicsPianoA
}

bassA = \relative {
  r4
  <ees, ees'>4(<bes'' ees g>2)
  <ees,, bes' ges'>4-\arpeggio(<bes'' ees ges>2)
  <d,, bes' f'>4-\arpeggio(<bes'' d f>2)
  <f,, d' bes'>4-\arpeggio(<bes'' d f>) <cis, ais'>
  <c bes'>4(<g' ees'>2) % 5
  <f, c a'>4-\arpeggio(<a' ees' d>2)
  <bes,, bes'>4 d' g(
  f2.)
}

bassB = \relative {
  <bes,, bes'>2.
  <d d'>2. % 10
  <ees ees'>2.
  <c c'>2.
  <f f'>2.
  <f, f'>2.
  <bes bes'>2. % 15
  <f f'>4-.->
  <g g'>-.->
  <a a'>-.->
  <bes bes'>2.
  <d d'>2. % 20
  <ees ees'>2(g'4
  bes2.)
  <g, e'>2.
  <c, c'>2.
  <f f'>4.(g'8 g g) %%%%%%%%% 25
  ees4(d) c
  <bes, bes'>2.
  <d d'>2.
  <ees ees'>2.
  g'2. % 30
  bes2.
  <g, e'>2.
  <f f'>2.
  <ees ees'>4-.-> <d d'>-.-> <c c'>-.->
  <bes bes'>2. % 35
  <d d'>2.
  <ees ees'>2 g'4(
  bes2) g4(
}

bassC = \relative {
  f2) f4(
  f,2) f4(
  bes2.) %%%%%%% % 40
  \clef treble f''' \clef bass
}

bassD = \relative {
  f2\repeatTie f4
  f,2 f4
  <bes, bes'>2.
  f''4(g a)
}

bassF = \relative {
  <bes, f'>4(<f' bes d>2) % 45
  <f, bes d>4(<f' bes d>2)
  <bes, f'>4(<f' bes d>2)
  <f, bes d>4(<f' bes d>2)
  <bes, f'>4(<bes' d>2)
  <f, d'>4(<bes' d>2) % 50
  <c, f a>4(a' c
  f2) r4
  <c,, c'>4(<g'' c ees>2)
  ees4(<g c>2)
  c,4(<c' ees g>2) % 55
  ees,4(<g c>2)
  f4(<a ees' f>2)
  <f, f'>4(<a' ees' d>2)
  <bes,, bes'>4(f'' <bes d>4)
  <f a ees' f>2. % 60
  <bes,, bes'>4(<f'' bes d>2)
  f,4(<f' bes d>2)
  <bes, f'>2 <f' bes d>4->
  <f bes d>4-> r r
  <bes, f'>4(<f' bes d>2) % 65
  <bes, f'>4(<bes' d f>2)
  << ees,2.~
     \new Voice {s4 g2~}
     \new Voice {s4 s c~}
   >> % 67
  <ees, g c ees>2 r4
  <ees, ees'>4(<g' c ees>2)
  <ees, bes' ges'>4-\arpeggio(<bes'' ees ges>2) % 70
  <d,, bes' f'>4-\arpeggio(<bes'' d f>2)
  <d, bes'>4(d') <cis, fis ais>
  <c g'>4(<bes' ees>2)
  <f, c'>4(<a' ees' f>2)
  <bes, f'>4(<f' d'>2)
  f4(ees) c
}

bassE = \relative {
  \time 4/4
  f2\repeatTie r
  f,2 r
  <bes, bes'>1 ~
  q1
}

bass = {
  \global
  \bassA
  \repeat volta 3 {
    \bassB
    \alternative {
      \volta 1 \bassC
      \volta 2 \bassD
      \volta 4 \bassE
    }
  }
  \bassF
}

bassSingle = {
  \global
  \bassA
  \bassB \bassC
  \bassB \bassD
  \bassF
  \bassB \bassE
}

verseOne = \lyricmode {
  \set stanza = "1."
  A Brad -- y -- pus or Sloth am I,
  I live a life of ease,
  Con -- tent -- ed not to do or die
  But id -- le as I please;
  I have three toes on eith -- er foot
  Or half- a- doz on both;
  With leaves and fruits and shoots to eat
  How sweet to be a sloth.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  The world is such a cheer -- ful place
  When viewed from up -- side down;
  It makes a rise of ev -- 'ry fall,
  A smile of ev -- 'ry frown;
  I watch the fleet -- ing flut -- ter by
  Of but -- ter -- fly or moth
  And think of all the things I'd try
  If _ _ _ _ _ _ I were not a Sloth.

  sweet \markup\italic "(whistle)" to be \markup\italic "(whistle)" a Sloth.
}

verseThree = \lyricmode {
  \set stanza = "3."
  I could climb the ve -- ry high -- est Him -- a -- lay -- as,
  Be a -- mong the great -- est ev -- er ten -- nis play -- ers,
  Al -- ways win at chess or mar -- ry a prin -- cess or
  Stud -- y hard and be an em -- in -- ent pro -- fes -- sor,
  I could be a mill -- ion -- aire, play the clar -- i -- net,
  Trav -- el ev -- 'ry -- where,
  Learn to cook, catch a crook,
  Win a war, then write a book a -- bout it,
  I could paint a Mon -- a Li -- sa,
  I could be an -- oth -- er Cae -- sar,
  Com -- pose an or -- a -- tor -- i -- o that was sub -- lime:
  The door's not shut on my gen -- ius but
  I just don't have the time!
}

verseFour = \lyricmode {
  \set stanza = "4."
  For days and days a -- mong the trees
  I sleep and dream and doze,
  Just gent -- ly sway -- ing in the breeze
  Sus -- pend -- ed by my toes;
  While eag -- er beav -- ers o -- ver -- head
  Rush through the un -- der -- growth,
  I watch the clouds be -- neath my feet—
  How
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  A Brad -- y -- pus or Sloth am I,
  I live a life of ease,
  Con -- tent -- ed not to do or die
  But id -- le as I please;
  I have three toes on eith -- er foot
  Or half- a- doz on both;
  With leaves and fruits and shoots to eat
  How sweet to be a sloth.

  \set stanza = "2."
  The world is such a cheer -- ful place
  When viewed from up -- side down;
  It makes a rise of ev -- 'ry fall,
  A smile of ev -- 'ry frown;
  I watch the fleet -- ing flut -- ter by
  Of but -- ter -- fly or moth
  And think of all the things I'd try
  If I were not a Sloth.

  \set stanza = "3."
  I could climb the ve -- ry high -- est Him -- a -- lay -- as,
  Be a -- mong the great -- est ev -- er ten -- nis play -- ers,
  Al -- ways win at chess or mar -- ry a prin -- cess or
  Stud -- y hard and be an em -- in -- ent pro -- fes -- sor,
  I could be a mill -- ion -- aire, play the clar -- i -- net,
  Trav -- el ev -- 'ry -- where,
  Learn to cook, catch a crook,
  Win a war, then write a book a -- bout it,
  I could paint a Mon -- a Li -- sa,
  I could be an -- oth -- er Cae -- sar,
  Com -- pose an or -- a -- tor -- i -- o that was sub -- lime:
  The door's not shut on my gen -- ius but
  I just don't have the time!

  \set stanza = "4."
  For days and days a -- mong the trees
  I sleep and dream and doze,
  Just gent -- ly sway -- ing in the breeze
  Sus -- pend -- ed by my toes;
  While eag -- er beav -- ers o -- ver -- head
  Rush through the un -- der -- growth,
  I watch the clouds be -- neath my feet—
  How sweet \markup\italic "(whistle)" to be \markup\italic "(whistle)" a Sloth.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " Brad y "pus " "or " "Sloth " "am " "I, "
  "\nI " "live " "a " "life " "of " "ease, "
  "\nCon" tent "ed " "not " "to " "do " "or " "die "
  "\nBut " id "le " "as " "I " "please; "
  "\nI " "have " "three " "toes " "on " eith "er " "foot "
  "\nOr " half- a- "doz " "on " "both; "
  "\nWith " "leaves " "and " "fruits " "and " "shoots " "to " "eat "
  "\nHow " "sweet " "to " "be " "a " "sloth.\n"

  \set stanza = "2."
  "\nThe " "world " "is " "such " "a " cheer "ful " "place "
  "\nWhen " "viewed " "from " up "side " "down; "
  "\nIt " "makes " "a " "rise " "of " ev "'ry " "fall, "
  "\nA " "smile " "of " ev "'ry " "frown; "
  "\nI " "watch " "the " fleet "ing " flut "ter " "by "
  "\nOf " but ter "fly " "or " "moth "
  "\nAnd " "think " "of " "all " "the " "things " "I'd " "try "
  "\nIf " "I " "were " "not " "a " "Sloth.\n"

  \set stanza = "3."
  "\nI " "could " "climb " "the " ve "ry " high "est " Him a lay "as, "
  "\nBe " a "mong " "the " great "est " ev "er " ten "nis " play "ers, "
  "\nAl" "ways " "win " "at " "chess " "or " mar "ry " "a " prin "cess " "or "
  "\nStud" "y " "hard " "and " "be " "an " em in "ent " pro fes "sor, "
  "\nI " "could " "be " "a " mill ion "aire, " "play " "the " clar i "net, "
  "\nTrav" "el " ev 'ry "where, "
  "\nLearn " "to " "cook, " "catch " "a " "crook, "
  "\nWin " "a " "war, " "then " "write " "a " "book " a "bout " "it, "
  "\nI " "could " "paint " "a " Mon "a " Li "sa, "
  "\nI " "could " "be " an oth "er " Cae "sar, "
  "\nCom" "pose " "an " or a tor i "o " "that " "was " sub "lime: "
  "\nThe " "door's " "not " "shut " "on " "my " gen "ius " "but "
  "\nI " "just " "don't " "have " "the " "time!\n"

  \set stanza = "4."
  "\nFor " "days " "and " "days " a "mong " "the " "trees "
  "\nI " "sleep " "and " "dream " "and " "doze, "
  "\nJust " gent "ly " sway "ing " "in " "the " "breeze "
  "\nSus" pend "ed " "by " "my " "toes; "
  "\nWhile " eag "er " beav "ers " o ver "head "
  "\nRush " "through " "the " un der "growth, "
  "\nI " "watch " "the " "clouds " be "neath " "my " "feet— "
  "\nHow " "sweet " "to " "be " "a " "sloth. "
}

\header {
  title = "The Sloth"
  composer = "Michael Flanders, Donald Swann"
}

\book {
  \bookOutputSuffix repeat
  \score {
    <<
        <<
          \new Staff = melody <<
            \new Dynamics \RehearsalTrack
            \new Dynamics \with {alignAboveContext=melody} \instructions
            \new Dynamics \with {alignAboveContext=melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics { \verseOne The }
            \addlyrics { \verseTwo \verseThree \set stanza = "4." For }
            \addlyrics { \verseFour }
          >>
	  \context PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
            \new Dynamics \dynamicsPiano
	    \new Staff = bass <<
	      \new Voice { \clef bass \bass }
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
  \bookOutputSuffix single
  \score {
    <<
        <<
          \new Staff = melody <<
            \new Dynamics \RehearsalTrackSingle
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
	  \new PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice \trebleOneSingle
              \new Voice \trebleTwoSingle
	    >>
              \new Dynamics \dynamicsPianoSingle
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassSingle }
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
  \bookOutputSuffix singlepage
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
          \new Staff = melody <<
            \new Dynamics \RehearsalTrackSingle
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
	  \new PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice \trebleOneSingle
              \new Voice \trebleTwoSingle
	    >>
              \new Dynamics \dynamicsPianoSingle
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassSingle }
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
  \bookOutputSuffix midi
  \score {
    <<
      \new Staff = melody \melodySingle
      \addlyrics \wordsMidi
      \context PianoStaff
      <<
        \new Staff = treble <<
          \new Voice \trebleOneSingle
          \new Voice \trebleTwoSingle
        >>
        \new Staff = bass <<
          \new Voice \bassSingle
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
