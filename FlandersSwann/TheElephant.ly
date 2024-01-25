\version "2.25.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Elephant"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \once\set Score.tempoHideNote = ##f \tempo Pesante 4.=96
  s2.*10 |
  s8 \tempo "rit." 4.=90 s s2 | s4. \tempo 4.=6 s16 \tempo "a tempo" 4.=96 s16*5 |
  \tempo "Poco più mosso" 4.=100 s2.*13 | % to end 171
  s2. \tempo 4.=92 s2.*5 s2 s8 \tempo largamente 4.=72 s8 | s2.*3 |
  \tempo 4.=36 s4. s4
  \tempo "subito animato" 4.=120 s8 | s2. |
  s4. \tempo 4.=60 s |
  \repeat volta 3 {
    \once\set Score.tempoHideNote = ##f \tempo "allegretto scherzando" 4.=104 s2.*14 |
    \tempo 4.=100 s2. | s4. \tempo 4.=33 s4 \tempo 4.=100 s8 |
    \tempo 4.=104 s2.*7 |
    \alternative {
      \volta 1,2 { s2.*4 }
      \volta 3   { s2.*2 }
    }
  }
  s2.*12 |
  \tempo 4.=96 s2 \tempo 4.=104 s4 | s2.*4 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "170a" } s2.*5
  \textMark \markup { \box "171a" } s2.*5
  \textMark \markup { \box "171b" } s2.*5
  \textMark \markup { \box "171c" } s2.*5
  \textMark \markup { \box "171d" } s2.*5
  \textMark \markup { \box "172a" } s2.*5
  \textMark \markup { \box "172b" } s2.*5
  \textMark \markup { \box "172c" } s2.*3
  \repeat volta 3 {
    s2.*2 |
    \textMark \markup { \box "172d" } s2.*5
    \textMark \markup { \box "173a" } s2.*5
    \textMark \markup { \box "173b" } s2.*5
    \textMark \markup { \box "173c" } s2.*5
    \textMark \markup { \box "173d" } s2.
    \alternative {
      \volta 1,2 { s2.*4 }
      \volta 3 {
        \textMark \markup { \box "174a" } s2.*2
      }
    }
  }
  s2.*3
  \textMark \markup { \box "174b" } s2.*5
  \textMark \markup { \box "174c" } s2.*4
  \textMark \markup { \box "174d" } s2.
}

dynamicsMelody = {
  s2.*3 | s4. s4 s8\omit\f-\markup{\halign #RIGHT \italic poco \dynamic f} | s2. |
  s2.*8 | s2 s8 s\mp | s2. | s | s2\< s4\> | s4 s2\! | s2.*2 | s2\< s4\> | s4 s2\! | s2.*3 | % 171
  s2. | s\omit\cresc-\markup\italic "cresc. e rit." | s2.*3 | % 172a
  s4.\ff s\< | s2.\sf | s2.*3 |
  s2 s8 s\ff | s2. | s4. s\>
  \repeat volta 3 {
    s2.\! | s |
    s2.*5 |
    s2.*7 | s2.\omit\cresc-\markup\italic "poco rit. e cresc." | s4. s\f | s2.-\markup\italic "a tempo" s2.*6 |
    \alternative {
      \volta 1,2 { s2.*4 | }
      \volta 3   { s2. s\f | }
    }
  }
  s2.*12 | s2-\markup\italic rit. s4\f\omit\cresc^\markup\italic "a tempo e cresc." | s2. | s | s\ff | s |
}

melodyA = \relative {
  R2. | R | R | r4. r8 r ees'8 | 8 8 8 4 8 |
  bes'4 ees,8 4  8 | ges4 bes,8 4 8 | ees2. | ces'8 8 8 bes8 8 8 | aes4 8 ges8 8 8 | % 171a
  f8 8 8 ees4 8 | bes4.~16\fermata r r8 r | R2. | r4 r8 r r e | 8 8 8 4 8 |
  e4 8 4. | <<{\once\hideNotes e2._\markup\italic "(spoken)"} \new Voice {R2.}>> | r4 r8 r r e | 4 8 4 8 | 4 8 4. |
  <<{\once\hideNotes ees2._\markup\italic "(spoken)"} \new Voice {R2.}>> | r4 r8 r r e | fis4 8 4 8 | 4 8 4 8 | g4 8 4 8 |
  g4 8 4 8 | aes4 8 4 8 | a4 8 4 8 | bes4 8 4 8 | b4 8 4. | % 172a
  <<{\hideNotes bes2. | bes2 \unHideNotes} \new Voice {R2. | r4 r8 r}>> r8 c | f4 8 c4 8 | des8 8 8 ges,4 8 | b,8 c r r ees e |
  f4.\fermata r8 r bes | ees8 8 des ees4 bes8 | ees4. ees,4\fermata 8 |
}

melodyB = \relative {
  ees'8 8 8 4 8 | aes4 ees8 4 8 |
  f4 c8 4 8 | ees4. r8 r ees | des4 c8 bes c des | c4 ees8 aes4 c8 | % 172d
  \tag #'dash    {\slurDashed bes8(8) \slurSolid c  bes4 c8 |}
  \tag #'v2      {            bes4               c8 bes4 c8 |}
  \tag #'(v3 v4) {            bes8 8             c  bes4 c8 |}
  bes4. r8 r bes | c4 8 bes4 c8 | des8 8 aes~4 8 | ges4 aes8 ges4 aes8 | f4. r8 r8 f | % 173a
  \tag #'dash    {f4 g8 \slurDashed aes8(8) \slurSolid f8 |} % 173b
  \tag #'(v2 v4) {f4 g8             aes4               f8 |}
  \tag #'v3      {f4 g8             aes8 8             f8 |}
  g4 aes8 bes4 \caesura ees,8 | f(g) aes bes(c) d | ees4. 4\fermata des8 | c4 8 4 8 |
  c8 8 8 4 8 | ees4 8 c4 aes8 | bes4. r8 bes c | d d d d c bes | ees4 c8 aes8-- \caesura ees8[8] |
  f4 aes8 g aes bes
}

melodyC = \relative {
  aes'4. r4 r8 | R2. | R | r4 r8 r r ees |
}

melodyD = \relative {
  aes'4. r4 r8 | f'4.~8 ees c | % 174a
}

melodyE = \relative {
  ees'4 aes8 c4 ees8 | f4.~8 ees des | bes2. |
  ees4. des | bes b | des4 c8 b4 des8 | c4. r | f~8 ees c |
  ees,4 aes8 c4 ees8 | f4.~8 ees d | bes4. r8 bes c | des8 8 8 8 c bes |
  ees4 c8 aes-- \caesura ees8[8] | f4 aes8 g aes bes | g4 bes8 a bes c | bes(c) des
  <<{\vt ees8 8 8 | aes,4.-- \ov r|} \new Voice {\vo s8 \teeny f'[g] | aes4.-- s |}>>
}

melody = {
  \global
  \melodyA
  \repeat volta 3 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1,2 { \melodyC }
      \volta 3   { \melodyD }
    }
  }
  \melodyE
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyC
  \keepWithTag #'v4 \melodyB \melodyD
  \melodyE
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  An el -- e -- phant's life is te -- di -- ous
  la -- bo -- ri -- ous and slow;
  I've been an el -- e -- phant all me life
  so I bloom -- ing well ought to know. __
  He ne -- ver for -- gets a name or face,
  oooh! __
  He knows his way from place to place,
  oooh! __
  Re -- mem -- bers to be du -- ti -- ful
  And when to push and when to pull,
  And when he's dead the deal -- er calls
  And buys his tusks for bil -- liard balls,
  Ooo __ ooh!
  And all be -- cause an el -- e -- phant's got a per -- fect me -- mo -- ry.
  That was -- n't the life for me!
  \set stanza = "2."
  So I'm
}

emptyTwo = {
  \repeat unfold 109 \skip 1
}

emptyThree = {
  \repeat unfold 109 \skip 1
}

wordsTwo = \lyricmode {
  suf -- fer -- ing from Am -- ne -- si -- a,
  Me mind's a per -- fect blank!
  Now life is ve -- ry much ea -- si -- er—
  Am -- ne -- si -- a's to thank;
  I'm be -- ing psy -- cho -- an -- a -- lysed,
  I lie on a di -- van
  And flap me ears and try to look
  As bar -- my as __ I can.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry back!
  \set stanza = "3."
  I'm
}

wordsThree = \lyricmode {
  suf -- fer -- ing from Hys -- te -- ri -- a;
  I near -- ly split me sides,
  To watch the o -- thers get wear -- i -- er
  Of \nom giv -- ing \yesm the chil -- dren rides;
  I've told my psy -- cho -- an -- a -- lyst __
  That I'm a Sa -- cred Cow;
  I'd like to \nom car -- ry \yesm a How -- dah
  but I can't re -- mem -- ber how.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry back!
  \set stanza = "4."
  I
}

wordsFour  = \lyricmode {
  suf -- fer from Schi -- zo -- phre -- ni -- a—
  It comes on me in spells;
  Some -- times I'm King of Ar -- me -- ni -- a,
  At \nom o -- thers \yesm I'm Or -- son Welles.
  I tell them I'm Na -- po -- le -- on --
  And all that sort of bunk;
  They nev -- er guess that all the time
  I'm laugh -- ing up __ me trunk.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry _ _ back!

  Tra __ tid -- dle -- tum -- ty -- tum -- ty,
  tra __ tid -- dle -- tum!
  Prac -- tis -- ing me trum -- pet half the night,
  Tra -- tid -- dle -- tum -- ty -- tum -- ty,
  tra __ tid -- dle -- tum!
  And I'll stick in the El -- e -- phants' nurs -- ing home
  Till I get me me -- mo -- ry,
  get me me -- mo -- ry,
  get me me -- mo -- ry back!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  An el -- e -- phant's life is te -- di -- ous
  la -- bo -- ri -- ous and slow;
  I've been an el -- e -- phant all me life
  so I bloom -- ing well ought to know. __
  He ne -- ver for -- gets a name or face,
  oooh! __
  He knows his way from place to place,
  oooh! __
  Re -- mem -- bers to be du -- ti -- ful
  And when to push and when to pull,
  And when he's dead the deal -- er calls
  And buys his tusks for bil -- liard balls,
  Ooo __ ooh!
  And all be -- cause an el -- e -- phant's got a per -- fect me -- mo -- ry.
  That was -- n't the life for me!

  \set stanza = "2."
  So I'm suf -- fer -- ing from Am -- ne -- si -- a,
  Me mind's a per -- fect blank!
  Now life is ve -- ry much ea -- si -- er—
  Am -- ne -- si -- a's to thank;
  I'm be -- ing psy -- cho -- an -- a -- lysed,
  I lie on a di -- van
  And flap me ears and try to look
  As bar -- my as __ I can.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry back!

  \set stanza = "3."
  I'm suf -- fer -- ing from Hys -- te -- ri -- a;
  I near -- ly split me sides,
  To watch the o -- thers get wear -- i -- er
  Of \nom giv -- ing \yesm the chil -- dren rides;
  I've told my psy -- cho -- an -- a -- lyst __
  That I'm a Sa -- cred Cow;
  I'd like to \nom car -- ry \yesm a How -- dah
  but I can't re -- mem -- ber how.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry back!

  \set stanza = "4."
  I suf -- fer from Schi -- zo -- phre -- ni -- a—
  It comes on me in spells;
  Some -- times I'm King of Ar -- me -- ni -- a,
  At \nom o -- thers \yesm I'm Or -- son Welles.
  I tell them I'm Na -- po -- le -- on --
  And all that sort of bunk;
  They nev -- er guess that all the time
  I'm laugh -- ing up __ me trunk.
  I'm an In -- tro -- ver -- ted El -- e -- pho -- cen -- tric
  Hy -- po -- chon -- dri -- ac,
  And I'll stick in the El -- e -- phant's nur -- sing home
  Till I get me mem -- o -- ry back!

  Tra __ tid -- dle -- tum -- ty -- tum -- ty,
  tra __ tid -- dle -- tum!
  Prac -- tis -- ing me trum -- pet half the night,
  Tra -- tid -- dle -- tum -- ty -- tum -- ty,
  tra __ tid -- dle -- tum!
  And I'll stick in the El -- e -- phants' nurs -- ing home
  Till I get me me -- mo -- ry,
  get me me -- mo -- ry,
  get me me -- mo -- ry back!
}

midiWords = \lyricmode {
  \set stanza = "1."
  "An " el e "phant's " "life " "is " te di "ous "
  "\nla" bo ri "ous " "and " "slow; "
  "\nI've " "been " "an " el e "phant " "all " "me " "life "
  "\nso " "I " bloom "ing " "well " "ought " "to " "know. " 
  "\nHe " ne "ver " for "gets " "a " "name " "or " "face, "
  "\noooh! " 
  "\nHe " "knows " "his " "way " "from " "place " "to " "place, "
  "\noooh! " 
  "\nRe" mem "bers " "to " "be " du ti "ful "
  "\nAnd " "when " "to " "push " "and " "when " "to " "pull, "
  "\nAnd " "when " "he's " "dead " "the " deal "er " "calls "
  "\nAnd " "buys " "his " "tusks " "for " bil "liard " "balls, "
  "\nOoo "  "ooh! "
  "\nAnd " "all " be "cause " "an " el e "phant's " "got " "a " per "fect " me mo "ry. "
  "\nThat " was "n't " "the " "life " "for " "me!\n"

  \set stanza = "2."
  "\nSo " "I'm " suf fer "ing " "from " Am ne si "a, "
  "\nMe " "mind's " "a " per "fect " "blank! "
  "\nNow " "life " "is " ve "ry " "much " ea si "er— "
  "\nAm" ne si "a's " "to " "thank; "
  "\nI'm " be "ing " psy cho an a "lysed, "
  "\nI " "lie " "on " "a " di "van "
  "\nAnd " "flap " "me " "ears " "and " "try " "to " "look "
  "\nAs " bar "my " "as "  "I " "can. "
  "\nI'm " "an " In tro ver "ted " El e pho cen "tric "
  "\nHy" po chon dri "ac, "
  "\nAnd " "I'll " "stick " "in " "the " El e "phant's " nur "sing " "home "
  "\nTill " "I " "get " "me " mem o "ry " "back!\n"

  \set stanza = "3."
  "\nI'm " suf fer "ing " "from " Hys te ri "a; "
  "\nI " near "ly " "split " "me " "sides, "
  "\nTo " "watch " "the " o "thers " "get " wear i "er "
  "\nOf " \nom giv "ing " \yesm "the " chil "dren " "rides; "
  "\nI've " "told " "my " psy cho an a "lyst " 
  "\nThat " "I'm " "a " Sa "cred " "Cow; "
  "\nI'd " "like " "to " \nom car "ry " \yesm "a " How "dah "
  "\nbut " "I " "can't " re mem "ber " "how. "
  "\nI'm " "an " In tro ver "ted " El e pho cen "tric "
  "\nHy" po chon dri "ac, "
  "\nAnd " "I'll " "stick " "in " "the " El e "phant's " nur "sing " "home "
  "\nTill " "I " "get " "me " mem o "ry " "back!\n"

  \set stanza = "4."
  "\nI " suf "fer " "from " Schi zo phre ni "a— "
  "\nIt " "comes " "on " "me " "in " "spells; "
  "\nSome" "times " "I'm " "King " "of " Ar me ni "a, "
  "\nAt " \nom o "thers " \yesm "I'm " Or "son " "Welles. "
  "\nI " "tell " "them " "I'm " Na po le on
  "\nAnd " "all " "that " "sort " "of " "bunk; "
  "\nThey " nev "er " "guess " "that " "all " "the " "time "
  "\nI'm " laugh "ing " "up "  "me " "trunk. "
  "\nI'm " "an " In tro ver "ted " El e pho cen "tric "
  "\nHy" po chon dri "ac, "
  "\nAnd " "I'll " "stick " "in " "the " El e "phant's " nur "sing " "home "
  "\nTill " "I " "get " "me " mem o "ry " "back!\n"

  "\nTra "  tid dle tum ty tum "ty, "
  "\ntra "  tid dle "tum! "
  "\nPrac" tis "ing " "me " trum "pet " "half " "the " "night, "
  "\nTra" tid dle tum ty tum "ty, "
  "\ntra "  tid dle "tum! "
  "\nAnd " "I'll " "stick " "in " "the " El e "phants' " nurs "ing " "home "
  "\nTill " "I " "get " "me " me mo "ry, "
  "\nget " "me " me mo "ry, "
  "\nget " "me " me mo "ry " "back! "
}

pianoRHone = \relative {
  \global
  <ees'' ees'>4. <bes bes'> |
  <b b'>4. <e, e'> |
  a8 bes b c cis d |
  <ees, ees'>4.~4 r8 | ees2. |
  bes'4. ees, | ges bes, | ees2. | % 171a
  <ees aes ces>4 8 <ees ges bes>4 8 |
  <bes d aes'>4 8 <bes ees ges>4 8 |
  <bes des f>4 8 <ces ees>4 8 | % 171b
  bes4.~16\fermata b c cis d ees |
  e8 <e, e'>8 8 8 8 8 \clef bass |
  q8 8 8 8 8 8 |
  <a c e>8 8 8 8 8 8 |
  <a d e>8 8 8 <gis d' c>8 8 8 | % 171c
  <a c e>8 8 8 8 8 8 |
  <a d e>8 8 8 <gis d' c>8 8 8 |
  <a c e>8 8 8 8 8 8 |
  <a d e>8 8 8 <gis d' e>8 8 8 |
  <a c e>8 8 8 8 8 8 | % 171d
  <a d e>8 8 8 <gis d' e>8 8 8 \clef treble |
  <b d fis>8 8 8 8 8 8 |
  <b e fis>8 8 8 <ais e' fis>8 8 8 |
  <c ees g>8 8 8 8 8 8 |
  <c f g>8 8 8 <b f' g>8 8 8 | % 172a
  <des fes aes>8 8 8 8 8 8 |
  <cis f a>8 8 8 8 8 8 |
  <d fis bes>8 8 8 8 8 8 |
  <ees g b>8 8 8 8 8 8 |
  <e aes c>8 <c e> <c e aes> <c' e> <c e aes> <e aes c> | % 172b
  \ottava #1 <e' aes c>4.-> \ottava #0 r8 r c, |
  f4. c | des ges, |
  b,8 c cis d ees e |
  f4.\fermata r8 r <aes' bes> | % 172c
  <g ees'>4 <aes, bes>8 <g ees'>4 \clef bass <aes, bes>8 |
  <g bes des c>4. r\fermata |
  \repeat volta 3 {
    <aes c ees>4 8 4 8 |
    <g c ees>4 8 4 8 |
    <f c' ees>4 8 4 8 | % 172d
    ees4 <aes c ees>8 r r q \clef treble |
    \vo r8 r <aes des ees>8 r r <bes des ees> |
    \ov r8 r <aes c ees> <aes c f>4 8 |
    <bes ees g>4 8 <aes d f>4 8 |
    <g bes ees>4. ees'' | % 173a
    <c, ges' aes>4 8 4 8 |
    <des f aes>4 8 4 8 |
    \vo r8 r <des ges> r r <ees ges aes> |
    \ov <aes, des f>4. <aes' des f> |
    <aes, c ees>4. <bes d aes'> | % 173b
    <bes ees g>4. <bes ees bes'>4 \caesura r8 |
    <c ees f>4. <d f bes> |
    <ees g ees'>4. <ees' g bes ees>\fermata |
    <c, ees aes c>4 8 4 8 |
    <c ees g c>4 8 4 8 | % 173c
    <c ees ges aes>4 8 4 8 |
    <des f aes bes>4.(<des' f aes bes>4) r8 |
     <des, f aes des>4. <fes aes des fes> |
    <ees g c ees>4. <aes c ees aes>8-- \caesura r r |
    <aes, des f>4 r8 <bes des ees g>4 r8 | % 173d
    \alternative {
      \volta 1,2 {
        r8 r <aes c ees> r r q |
        r8 r <gis d' e> r r q |
        a8 bes b c cis d |
        ees4.(<g' bes des ees>4) r8 |
      }
      \volta 3 {
        <c,, ees aes>8 <ees ees'>8 8 8 8 8 | % 174a
        <aes c ees>4 8 8 8 8 |
      }
    }
  }
  q4 8 4 8 |
  <g bes ees>4 8 8 8 8 |
  <g des' ees>4 8 4 8 |
  q4 8 4 8 | 4 8 4 8 | <aes c ees>4 8 4 8 | 4 8 4 8 | 4 8 8 8 8 | % 174b
  q4 8 4 8 | 4 8 8 8 8 | <g des' ees>4 8 8 r r | % 174c
  <des f aes des>4. <fes aes des fes> |
  <ees g c ees>4. <c f aes>8-- \caesura r r | % 174d
  <aes des f>4. <bes des ees g>4 r8 |
  <e g bes c>4. <c f a>4 r8 |
  <f aes des>4. <g' bes des ees>8 f' g |
  <aes, c ees aes>4. r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*38
  \repeat volta 3 {
    s2.*4 |
    f4. g | s2.*2 | % 172d++
    s2.*3 | bes4. c | s2. | % 173a
    s2.*11 |
    \alternative {
      \volta 1,2 { s2.*4 }
      \volta 3   { s2.*2 }
    }
  }
  s2.*17 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s | s | s | s\omit\f-\markup{\italic poco \dynamic f} |
  s2.*6 | s4. s\< | s4.\sf s\> | s2.\! | s\mp | s2.*10 |
  s2. | s\omit\cresc-\markup\italic "cresc. e rit." | s2.*3 | % 172ab
  s2. s2\f s8 s\f | s2.*3 | s2 s8 s\ff | s2.*2 |
  \repeat volta 3 {
    s2.\mf | s |
    s2.*5 |
    s2.*7 | s2.\omit\cresc-\markup\italic "poco rit. e cresc." | s4. s\f | s2.-\markup\italic "a tempo" |
    s2.*6 |
    \alternative {
      \volta 1,2 { s2.\ff | s2.*3 | }
      \volta 3   { s4 s2\< | s2.\f | } % 174a
    }
  }
  s2.*12 |
  s2-\markup\italic rit. s4\omit\cresc-\markup\italic "a tempo e cresc." | s2.\f | s | s\ff | s |
}

pianoLH = \relative {
  \global
  <ees ees'>4. <bes bes'> |
  <b b'>4. <e, e'> |
  <a, a'>8 <bes bes'> <b b'> <c c'> <cis cis'> <d d'> |
  <ees ees'>4.~4 r8 |
  ees'2. |
  bes'4.(<ees,, ees'>) | <ges ges'>(<bes, bes'>) | <ees ees'>2. | % 171a
  <aes aes'>4 8 <ges ges'>4 8 | <f f'>4 8 <ees ees'>4 8 |
  <des des'>4 8 <ces ces'>4 8 | % 171b
  <bes bes'>4.~16\fermata b' c cis d ees |
  e8 r r r4 r8 | R2. | <a,, a'>4 r8 <c c'>4 r8 |
  <b b'>4 r8 <e, e'>4 r8 | <a a'>4 r8 <c c'>4 r8 | % 171c
  <b b'>4 r8 <e, e'>4 r8 | <a a'>4 r8 <c c'>4 r8 |
  <b b'>4 r8 <e, e'>4 r8 |
  <a a'>4 r8 <c c'>4 r8 | <b b'>4 r8 <e, e'>4 r8 | % 171d
  <b' b'>4 r8 <d d'>4 r8 | <cis cis'>4 r8 <fis, fis'>4 r8 |
  <c' c'>4 r8 <ees ees'>4 r8 |
  <d d'>4 r8 < g, g'>4 r8 | <des' des'>4 r8 <fes fes'>4 r8 | % 172a
  <f f'>4 r8 <a, a'>4 r8 | <d d'>4 r8 <fis fis'>4 r8 |
  <g g'>4 r8 <b, b'>4 r8 |
  <ges ges'>4 bes''8 \clef treble bes'4. | % 172b
  bes'4. \clef bass r8 r c,, | f4. c | des ges, |
  <b,, b'>8 <c c'> <cis cis'> <d d'> <ees ees'> <e e'> |
  <f f'>4. r8 r \clef treble <bes' bes'> | % 172c
  <ees, ees'>4 \clef bass <bes bes'>8 <ees, ees'>4 <bes bes'>8 |
  <ees, ees'>4. r\fermata
  \repeat volta 3 {
    <aes aes'>4 r8 <ees ees'>4 r8 | <aes aes'>4 r8 <ees ees'>4 r8 |
    <aes aes'>4 r8 <ees ees'>4 r8 | <aes aes'>4 r8 <ees ees'>4 r8 | % 172d
    bes''4 r8 ees,4 r8 | aes4 r8 f4 r8 | bes4 r8 <bes, bes'>4 r8 |
    <ees ees'>4. ees'' | ees,4 r8 aes,4 r8 | des4 r8 f,4 r8 | % 173a
    <ees ees'>4. <aes, aes'> | <des des'> <des'' f> |
    <f,, c'>4. <bes f'> | <ees g> <g, ees'>4 \caesura r8 | % 173b
    <aes f'>4. <bes aes'> | <ees, ees'> <bes'' c ees>\fermata |
    <aes,, aes'>4. <aes' aes'> |
    ees'4. ees, | <aes, aes'> <aes' aes'> | % 173c
    <des, des'>4.( \clef treble <f'' bes>4) r8 \clef bass |
    <bes,, aes'>4. <des bes'> | <c g' c> <f, c' aes'>8--\arpeggio \caesura r r |
    <bes, bes'>4 r8 <ees ees'>4 r8 | % 173d
    \alternative {
      \volta 1,2 {
        \acciaccatura g'8 aes4.-> <ees, ees'>4.-> |
        <e e'>4.-> <b b'>-> |
        <a a'>8 <bes bes'> <b b'> <c c'> <cis cis'> <d d'> |
        <ees ees'>4.(<ees, ees'>4) r8 |
      }
      \volta 3   { <aes' ees'>8 r r r4 r8 | % 174a
                   \acciaccatura {ees'16 aes c} f4.~8 ees c |
                 }
    }
  }
  ees,4 aes8 c4 ees8 | f4.~8 ees8 des | bes2. |
  ees4. des | bes b | \acciaccatura {ees,16 aes} des4 c8 b4 des8 | % 174b
  c2. \acciaccatura {ees,16 aes c} f4.~8 ees c |
  ees,4 aes8 c4 ees8 | f4.~8 ees des | % 174c
  bes4.~8 r r | <bes, aes'>4. <des bes'> |
  <c g'>4. <f, f'>8-- \caesura r r | <bes, bes'>4. <ees ees'>4 r8 | % 174d
  <c c'>4. <f f'>4 r8 | <bes bes'>4. <ees, ees'> | <aes, aes'>4. r |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat")
  \paper {
    footnote-separator-markup = \markup { \override #'(span-factor . 1/2) \draw-hline }
  }
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" {\wordsOne \wordsTwo}
            \new Lyrics \lyricsto "melody" {\emptyThree \wordsThree}
            \new Lyrics \lyricsto "melody" {\emptyThree \wordsFour}
          >>
        >>
        \new PianoStaff
        <<
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
            \new Voice \pianoLH
          >>
        >>
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
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
            \new Voice \pianoLH
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
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
            \new Voice \pianoLH
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
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
            \new Voice \pianoLH
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
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
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
    \midi {}
  }
}
