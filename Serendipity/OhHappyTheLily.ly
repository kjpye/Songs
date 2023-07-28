\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Happy the Lily"
  subtitle    = \markup{from \italic Ruddigore}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 9/8
}

TempoTrack = {
  \tempo "Allegro con spirito" 4.=138
  s4.*3
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "126a" } s4.*9
  \textMark \markup { \box "126b" } s4.*9
  \textMark \markup { \box "126c" } s4.*9
  \textMark \markup { \box "127a" } s4.*9
  \textMark \markup { \box "127b" } s4.*9
  \textMark \markup { \box "127c" } s4.*9
  \textMark \markup { \box "128a" } s4.*9
  \textMark \markup { \box "128b" } s4.*9
  \textMark \markup { \box "128c" } s4.*9
  \textMark \markup { \box "129a" } s4.*9
  \textMark \markup { \box "129b" } s4.*9
  \textMark \markup { \box "129c" } s4.*9
  \textMark \markup { \box "130a" } s4.*9
  \textMark \markup { \box "130b" } s4.*9
  \textMark \markup { \box "130c" } s4.*9
  \textMark \markup { \box "130d" } s4.*9
  \textMark \markup { \box "131a" } s4.*9
  \textMark \markup { \box "131b" } s4.*9
  \textMark \markup { \box "132a" } s4.*9
  \textMark \markup { \box "132b" } s4.*9
  \textMark \markup { \box "133a" } s4.*12
  \textMark \markup { \box "133b" } s4.*12
  \textMark \markup { \box "133c" } s4.*12
  \textMark \markup { \box "133d" } s4.*12
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*9/8*45 |
  s1*9/8\f |
  s1*9/8*22 |
}

soprano = \relative {
  \global
  R1*9/8 | ees''4.^\markup SOPRANO bes8 c bes aes bes aes | g4. 4 8 4. |
  ees'4. bes8 c bes aes bes aes | g4. f4 8 ees4. | ees' bes8 c bes aes bes aes |
  g4. 4 8 8 r r  f4. 8 g a bes a bes | g4. 8(a) bes c bes c |
  a4. 8(bes) c d c d | bes4. c f, | bes2. r4. | % 127a
  R1*9/8*6 |
  R1*9/8*3 | % 128a
  R1*9/8*2 | f'4. d8 c bes d c bes |
  c4. bes4 g8 bes4. | f'4. d8 c bes d c bes | c4. bes4 g8 bes4. |
  f'4. d8 c bes d c bes | c4. bes4 g8 bes4. | d4. 8 ees f g ees d | % 129a
  c4. 8(d) ees f d c | bes4. 8(c) d ees c bes | a4 r8 f4 r8 a4 r8 |
  bes2. r4. | d4. a8 b a g a g | fis4. 4 8 4. |
  d'4. a8 b a g a g | fis4. e4 8 d4. | d' a8 b a g a g | % 130a
  fis4. 4 8 4. | a4. d,8 fis a bes a g | a4. d,4 a'8 bes a g |
  a4. d,4 a'8 bes a g | bes4. bes bes | 2. r4. \section |
  ees4.^\markup CHORUS bes8 c bes aes bes aes | g4. 4 8 4. | ees'4. bes8 c bes aes bes aes |
  g4. f4 8 ees4. | ees' bes8 c bes aes bes aes | g4. 4 8 4. | % 131a
  bes4. 8 c d ees d ees | c4. 8(d) ees f ees f | d4. 8(ees) f g f g |
  ees4 r8 f4 r8 bes,4 r8 | <bes bes'>4.~8 r r r4 ees8 | 4 r8 f4 r8 bes,4 r8 | % 132a
  <bes bes'>4.~8 r r r4 ees8 | f2.~4.~ | 2.~4. |
  q2.~4.~ | 2. 4. | ees2.~4.~ | 2. r4. | % 133a
  R1*9/8*12 |
  \bar "|."
}

wordsSop = \lyricmode {
  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride!

  O hap -- py the blos -- som
  That blooms on the lea,
  Like -- wise the o -- pos -- sum
  That sits on a tree,
  When you come a -- cross 'em,
  They can -- not com -- pare
  With those who are tread -- ing
  The dance at a wed -- ding,
  While peo -- ple are spread -- ing
  The best of good fare!

  Oh, wretch -- ed the debt -- or
  Who's sign -- ing a deed!
  And wretch -- ed the let -- ter
  That no one can read!
  But ver -- y much bet -- ter
  Their lot it must be
  Than that of the per -- son
  I'm mak -- ing this verse on,
  Whose head there's a curse on—
  Al -- lud -- ing to me!

  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride! __
  Em -- brac -- es his bride! __
  Em -- brac -- es __ his bride! __
}

wordsSopMidi = \lyricmode {
  "Oh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride!\n"

  "\nO " hap "py " "the " blos "som "
  "\nThat " "blooms " "on " "the " "lea, "
  "\nLike" "wise " "the " o pos "sum "
  "\nThat " "sits " "on " "a " "tree, "
  "\nWhen " "you " "come " a "cross " "'em, "
  "\nThey " can "not " com "pare "
  "\nWith " "those " "who " "are " tread "ing "
  "\nThe " "dance " "at " "a " wed "ding, "
  "\nWhile " peo "ple " "are " spread "ing "
  "\nThe " "best " "of " "good " "fare!\n"

  "\nOh, " wretch "ed " "the " debt "or "
  "\nWho's " sign "ing " "a " "deed! "
  "\nAnd " wretch "ed " "the " let "ter "
  "\nThat " "no " "one " "can " "read! "
  "\nBut " ver "y " "much " bet "ter "
  "\nTheir " "lot " "it " "must " "be "
  "\nThan " "that " "of " "the " per "son "
  "\nI'm " mak "ing " "this " "verse " "on, "
  "\nWhose " "head " "there's " "a " "curse " "on— "
  "\nAl" lud "ing " "to " "me!\n"

  "\nOh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es "  "his " "bride! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*9/8*45 |
  s1*9/8\f |
  s1*9/8*22 |
}

alto = \relative {
  \global
  R1*9/8*12
  bes'4.^\markup ALTO f8 g f ees f ees | d4. 4 8 4 r8 | bes'4. f8 g f ees d ees | % 127b
  d4. c4 8 bes4 r8 | bes'4. f8 g f ees(f) ees | d4. 4 8 4 r8 |
  f4. 8 g a bes a bes | g4. 8(a) bes c bes c | a4. 8(bes) c d c d | % 128a
  bes4. c f, | bes2. r4. | d,4. f8 ees d f ees d |
  ees4. g4 ees8 g4. | d4. f8 ees d f ees d | ees4. g4 ees8 d4. |
  d4. f8 ees d f ees d | ees4. g4 ees8 g4 8 | f g a bes4. 4 g8 | % 129a
  ees8 f g a4. 4 f8 | d ees f g4. 4 ees8 | c4 r8 d4 r8 c4 r8 |
  bes2. r4. | R1*9/8*11 |
  g'4. 8 aes g f g f | ees4. 4 8 4. | g4. 8 aes g f g f | % 130d
  ees4. d4 8 ees4. | g4. 8 aes g f g f | ees4. 4 8 4. | % 131a
  ees4. 8 8 8 8 8 bes | f'4. 4 8 8 8 c | g'4. 4 8 8 8 8 |
  g4 r8 f4 r8 f4 r8 | bes4.~8 r r r4 ees,8 | g4 r8 f4 r8 f4 r8 | % 132a
  bes4.~8 r r r4 g8 | f2.~4.~ | 2.~4. |
  aes2.~4.~ | 2. 4. | g2.~4.~ | 2. r4. | % 133a
  R1*9/8*12 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Oh, hap -- py the flow -- ers
  That blos -- som in June,
  And hap -- py the bow -- ers
  That gain by the boon,
  But hap -- pier by hours
  The man of de -- scent,
  Who, fol -- ly re -- gret -- ting
  Is bent on for -- get -- ting
  His bad bar -- on -- et -- ting,
  And means to re -- pent!

  O hap -- py the blos -- som
  That blooms on the lea,
  Like -- wise the o -- pos -- sum
  That sits on a tree,
  When you come a -- cross 'em,
  They can -- not com -- pare
  With those who are tread -- ing
  The dance at a wed -- ding,
  While peo -- ple are spread -- ing
  The best of good fare!

  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride! __
  Em -- brac -- es his bride! __
  Em -- brac -- es __ his bride! __
}

wordsAltoMidi = \lyricmode {
  "Oh, " hap "py " "the " flow "ers "
  "\nThat " blos "som " "in " "June, "
  "\nAnd " hap "py " "the " bow "ers "
  "\nThat " "gain " "by " "the " "boon, "
  "\nBut " hap "pier " "by " "hours "
  "\nThe " "man " "of " de "scent, "
  "\nWho, " fol "ly " re gret "ting "
  "\nIs " "bent " "on " for get "ting "
  "\nHis " "bad " bar on et "ting, "
  "\nAnd " "means " "to " re "pent!\n"

  "\nO " hap "py " "the " blos "som "
  "\nThat " "blooms " "on " "the " "lea, "
  "\nLike" "wise " "the " o pos "sum "
  "\nThat " "sits " "on " "a " "tree, "
  "\nWhen " "you " "come " a "cross " "'em, "
  "\nThey " can "not " com "pare "
  "\nWith " "those " "who " "are " tread "ing "
  "\nThe " "dance " "at " "a " wed "ding, "
  "\nWhile " peo "ple " "are " spread "ing "
  "\nThe " "best " "of " "good " "fare!\n"

  "\nOh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es "  "his " "bride!\n" 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*9/8*45 |
  s1*9/8\f |
  s1*9/8*22 |
}

tenor = \relative {
  \global
  R1*9/8 | ees'4.^\markup TENOR g,8 aes bes8 8 8 8 | 4. 4 8 4. |
  ees4. g8 aes g f g f | ees4. d4 8 ees4. | 4. g,8 aes bes bes bes bes |
  bes4. 4 8 8 r bes | bes c d bes4. f4 bes8 | c d ees c4. g4 c8 |
  d8 ees f d4. a4 8 | bes4. c f, | bes2. r4. | % 127a
  R1*9/8*33 |
  ees4. bes8 8 8 8 8 8 | 4. 4 8 4. | ees4. bes8 8 8 8 8 8 | % 130d
  bes4. aes4 8 g4. | ees' bes8 8 8 8 8 8 | 4. 4 8 4 8 | % 131a
  ees8 d c bes4. 4 ees8 | f ees d c4. 4 f8 | g f ees d4. 4 8 |
  ees4 r8 4 r8 d4 r8 | ees4.~8 r r r4 bes8 | ees4 r8 4 r8 d4 r8 | % 132a
  ees4.~8 r r r4 8 | 2.~4.~ | 2.~4. |
  d2.~4.~ | 2. 4. | ees2.~4.~ | 2. r4. | % 133a
  R1*9/8*12 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride!

  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride! __
  Em -- brac -- es his bride! __
  Em -- brac -- es __ his bride! __
}

wordsTenorMidi = \lyricmode {
  "Oh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride!\n"

  "\nOh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es "  "his " "bride! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*9/8*45 |
  s1*9/8\f |
  s1*9/8*22 |
}

bass = \relative {
  \global
  R1*9/8*12
  bes4.^\markup BASS d,8 ees f f f f | 4. 4 8 4 r8 | bes4. d8 ees d c d c | % 127b
  bes4. a4 8 bes4 r8 | 4. d,8 ees d8 4 8 | 4. 4 8 8 r f |
  bes8 a g f4. 4 bes8 | c bes a g4. 4 c8 | d c bes a4. 4 8 | % 128a
  bes4. c  f, | bes2. r4. | bes,4. bes'8 8 8 8 8 8 |
  bes4. 4 8 4. | bes,4. bes'8 8 8 8 8 8 | 4. 4 8 4. |
  bes,4. bes'8 8 8 8 8 8 | 4. 4 8 4. | 4. 8 8 8 ees,8 8 8 | % 129a
  a4. 4 8 d,8 8 8 | g4. 4 8 c,8 8 8 | f4 r8 d4 r8 f4 r8 |
  bes,2. r4. | R1*9/8*2 |
  R1*9/8*9 |
  ees4. 8 8 8 8 8 8 | 4. 4 8 4. | 4. 8 8 8 8 8 8 | % 130d
  ees4. 4 8 4. | 4. 8 8 8 8 8 8 | 4. 4 8 4. | % 131a
  g4. 8 8 8 8 8 8 | a4. 4 8 8 8 8 | bes4. 4 8 8 8 8 |
  c4 r8 aes4 r8 bes4 r8 | g4.~8 r r r4 g8 | c4 r8 aes4 r8 bes4 r8 | % 132a
  g4.~8 r r r4 c8 | aes2.~4.~ | 2.~4. |
  bes2.~4.~ | 2. 4. | ees,2.~4.~ | 2. r4. | % 133a
  R1*9/8*12 |
  \bar "|."
}

wordsBass = \lyricmode {
  Oh, hap -- py the flow -- ers
  That blos -- som in June,
  And hap -- py the bow -- ers
  That gain by the boon,
  But hap -- pier by hours
  The man of de -- scent,
  Who, fol -- ly re -- gret -- ting
  Is bent on for -- get -- ting
  His bad bar -- on -- et -- ting,
  And means to re -- pent!

  O hap -- py the blos -- som
  That blooms on the lea,
  Like -- wise the o -- pos -- sum
  That sits on a tree,
  When you come a -- cross 'em,
  They can -- not com -- pare
  With those who are tread -- ing
  The dance at a wed -- ding,
  While peo -- ple are spread -- ing
  The best of good fare!

  Oh, hap -- py the lil -- y
  When kissed by the bee;
  And, sip -- ping tran -- quil -- ly,
  Quite hap -- py is he;
  And hap -- py the fil -- ly
  That neighs in her pride;
  But hap -- pier than an -- y,
  A pound to __ a pen -- ny,
  A lov -- er __ is, when he
  Em -- brac -- es his bride! __
  Em -- brac -- es his bride! __
  Em -- brac -- es __ his bride! __
}

wordsBassMidi = \lyricmode {
  "Oh, " hap "py " "the " flow "ers "
  "\nThat " blos "som " "in " "June, "
  "\nAnd " hap "py " "the " bow "ers "
  "\nThat " "gain " "by " "the " "boon, "
  "\nBut " hap "pier " "by " "hours "
  "\nThe " "man " "of " de "scent, "
  "\nWho, " fol "ly " re gret "ting "
  "\nIs " "bent " "on " for get "ting "
  "\nHis " "bad " bar on et "ting, "
  "\nAnd " "means " "to " re "pent!\n"

  "\nO " hap "py " "the " blos "som "
  "\nThat " "blooms " "on " "the " "lea, "
  "\nLike" "wise " "the " o pos "sum "
  "\nThat " "sits " "on " "a " "tree, "
  "\nWhen " "you " "come " a "cross " "'em, "
  "\nThey " can "not " com "pare "
  "\nWith " "those " "who " "are " tread "ing "
  "\nThe " "dance " "at " "a " wed "ding, "
  "\nWhile " peo "ple " "are " spread "ing "
  "\nThe " "best " "of " "good " "fare!\n"

  "\nOh, " hap "py " "the " lil "y "
  "\nWhen " "kissed " "by " "the " "bee; "
  "\nAnd, " sip "ping " tran quil "ly, "
  "\nQuite " hap "py " "is " "he; "
  "\nAnd " hap "py " "the " fil "ly "
  "\nThat " "neighs " "in " "her " "pride; "
  "\nBut " hap "pier " "than " an "y, "
  "\nA " "pound " "to "  "a " pen "ny, "
  "\nA " lov "er "  "is, " "when " "he "
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es " "his " "bride! " 
  "\nEm" brac "es "  "his " "bride! " 
}

pianoRH = \relative {
  \global
  <ees'' g ees'>8 r r <bes, ees g> r r q r r |
  <ees g ees'>8 r r <g bes> r r <f aes> r r |
  <ees g>8 r r q r r q r r |
  <ees g ees'>8 r r <bes ees g> r r <bes d f> r r | % 126b
  <bes ees g>8 r r <aes d f> r r <g bes ees> r r |
  <ees' g ees'>8 r r <bes ees g> r r <bes d f> r r |
  <bes ees g>8 r r q r r q r r | % 126c
  <bes f'>8 r r q r r <d f bes> r r |
  <c g'>8 r r q r r <ees g c> r r |
  <d a'>8 r r q r r <f a d> r r | % 127a
  <d g bes>8 r r <c g' c> r r <a f'> r r |
  <bes d bes'>8 r r <bes d> r r q r r |
  <d' bes'>4. <d f>8 g f <c ees> f ees | % 127b
  <bes d>8 r r q r q q r r |
  <d bes'>4. <d f>8 g f <c ees> f ees |
  <bes d>8 r r <a c> r q bes r r | % 127c
  <d bes'>4. <d f>8 g f <c ees> f ees |
  <bes d>8 r r q r q q r r |
  f4. 8 g a bes a bes | g4. 8 a bes c bes c | a4. 8 bes c d c d | % 128a
  <g, bes>8 r r <g c> r r f r r | % 128b
  <d bes'>8 r r <bes d> r r q r r |
  f''4. d8 c bes d c bes |
  c4. bes8 r g bes r r | f'4. d8 c bes d c bes | c4. bes8 r g bes r r | % 128c
  f'4. d8 c bes d c bes | c4. bes8 r g bes r r | d4. 8 ees d f ees d | % 129a
  c4. 8 d ees f d c | bes4. 8 c d ees c bes | <c, a'>8 r r <d f> r r <c a'> r r |
  <d bes'>8 r r bes r r bes' c cis | % 129c
  d8 r r <fis, a> b a <e g> a g |
  <d fis>8 r r q r q q r r |
  <d fis d'>8 r r <f a> b a <e g> a g | % 130a
  <d fis>8 r r <cis e> r q d r r |
  <d fis d'>8 r r <f a> b a <e g> a g |
  <d fis>8 r r q r q q r r | a'4. d,8 fis a bes a g | a4. d,8 fis a bes a g | % 130b
  a4. d,8 fis a bes a g | d fis g g a bes bes c d | d ees f f g aes bes c d |
  <ees, g ees'>8 r r bes' c bes aes bes aes | % 130d
  g8 r r <ees g> r q q r r |
  <ees g ees'>8 r r bes' c bes aes bes aes |
  g8 r r <d f> r q ees r r | <ees g ees'>8-> r r bes' c bes aes bes aes | g r r <ees g> r q q r r | % 131a
  bes'4. 8 c d ees d ees | c4. 8 d ees f ees f | d4. 8 ees f g f g |
  ees8 r r f r r bes, r r | bes a aes g f ees d c bes | ees r r f r r bes, r r | % 132a
  bes'8 a aes g f ees ees d ees | f r r f, aes aes c ees ees | f a a c ees ees f ees c |
  bes8 r r bes,, d d f bes bes | % 133a
  d8 f f bes d d \ottava #1 f8 bes bes |
  ees, \ottava #0 r r ees,, aes g g c bes |
  bes8 f' ees ees aes g g c bes |
  <ees, g ees'>8->^\markup\bold Dance r r <g bes> c bes <f aes> bes aes | % 133b
  <ees g>8 r r q r q q r r |
  <ees g ees'>8-> r r <g aes> c bes <f aes> bes aes |
  <ees g>8 r r q r q ees r r |
  <ees g ees'>8-> r r <g bes> c bes <f aes> bes aes | % 133c
  <ees g>8 r r q r q q r r |
  f8 r r f g a bes a bes |
  g8 r r g a bes c bes c |
  a8 r r a bes c d c d | % 133d
  bes8 r r c r r f, r r |
  bes8 r r <d,, bes'> r r q r r |
  \acciaccatura q8 f'4. d8 c bes d c bes |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative {
  \global
  <ees, ees'>8 r r ees' r r ees r r |
  <ees, ees'>8 r r <ees' bes'> r r q r r |
  q8 r r q r r q r r |
  <ees, ees'>8-> r r ees' r r ees r r | ees r r ees r r ees r r | <ees, ees'>8-> r r ees' r r ees r r | % 126b
  ees8 r r ees r r ees r r | d r r d r r bes r r | ees r r ees r r c r r |
  f8 r r f r r d r r | g r r ees r r f r r | bes, r r <bes f'> r r q r r | % 127a
  <bes f' bes>8-> r r q r r <bes f' a> r r | % 127b
  <bes f' bes>8 r r q r r q r r |
  <bes bes'>8-> r r <bes f' bes> r r <bes f' a> r r |
  <bes f'>8 r r <bes ees> r r <bes d> r r | % 127c
  <bes f' bes>8-> r r q r r <bes f' a> r r |
  <bes f' bes> r r q r r q r r |
  <d bes'>8 r r q r r <bes' d> r r | % 128a
  <ees, c'?>8 r r q r r <c' ees> r r |
  <f, d'>8 r r q r r <d' f> r r |
  <g, d'>8 r r <ees c'> r r <f a> r r | % 128b
  <bes, bes'>8 r r <bes f'> r r q r r |
  <bes bes'>4. <bes' d f>8 r r q r r |
  <bes ees g>8 r r q r <bes ees> <bes ees g> r r | % 128c
  <bes, bes'>4. <bes' d f>8 r r q r r |
  <bes ees g>8 r r q r <bes ees> <bes d f> r r |
  <bes, bes'>4. <bes' d f>8 r r q r r | % 129a
  <bes ees g>8 r r q r <bes ees> <bes ees g> r r |
  <bes d f>8 r r q r r <ees, g ees'> r r |
  <a c ees>8 r r q r r <d, f d'> r r | % 129b
  <g bes d>8 r r q r r <c, ees c'> r r |
  <f a>8 r r <d a'> r r <f a> r r |
  <bes, f'>8 r r bes r r bes c cis | % 129c
  d8 r r <a a'> r r q r r |
  q8 r r q r r q r r |
  q8-> r r  q r r q r r | % 130a
  <d, d'>8 r r <d' g a> r r <d fis a> r r |
  <d a'>8 r r q r r q r r |
  q8 r r q r r q r r | % 130b
  a'4. d,8 fis a bes a g |
  a4. d,8 fis a bes a g |
  a4. d,8 fis a bes a g | % 130c
  <bes, bes'>4. q q |
  <bes d aes'>2. 4. |
  <ees, ees'>8 r r <ees' g bes ees> r r <ees aes bes d> r r | % 130d
  <ees g bes ees>8 r r q r r q r r |
  <ees, ees'>8-> r r <ees' g bes ees> r r <ees aes bes d> r r |
  <ees g bes ees>8 r r <ees aes bes> r r <ees g bes> r r | % 131a
  <ees, ees'>8 r r <ees' g bes ees> r r <ees aes bes d> r r |
  <ees g bes ees>8 r r <ees g bes> r r q r r |
  <g, g'>8 r r <g' bes ees> r r q r r | % 131b
  <aes, aes'>8 r r <aes' c f> r r q r r |
  <bes, bes'>8 r r <bes' d g> r r q r r |
  <c ees g>8 r r <aes c f> r r <bes d f> r r | % 132a
  <g bes ees>4.~8 r r r4. |
  <c ees g>8 r r <aes c ees f> r r <bes d f> r r |
  <g bes ees>4.~8 r r <c, g' c>4. | % 132b
  <aes' c ees>2.~4.~ |
  q2.~4. |
  <bes, aes' bes>2.~4.~ | 2. 4. | <ees g bes>2.~4.~ | 8 f' ees ees aes g g r r | % 133a
  <ees,, ees'>8 r r <ees' bes' ees> r r <ees bes' d> r r | % 133b
  <ees bes' ees>8 r r q r r q r r |
  <ees, ees'>8 r r <ees' bes' ees> r r <ees bes' d> r r |
  <ees bes' ees>8 r r <ees aes bes> r r <ees g bes> r r |
  <ees, ees'>8 r r <ees' bes' ees> r r <ees bes' d> r r | % 133c
  <ees bes' ees>8 r r q r r q r r |
  <d bes'>8 r r q r r <bes' d> r r |
  <ees, c'>r r q r r <c' ees> r r |
  <f, d'>8 r r q r r <d' f> r r | % 133d
  <g, bes d>8 r r <ees g c> r r <f a c> r r |
  <bes d>8 r r <bes, f'> r r q r r |
  <bes bes'>4. <bes' d f>8 r r q r r |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
  \bookOutputSuffix "singlepage-sop"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
  \bookOutputSuffix "midi-tenor"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
