\version "2.25.12"

\include "../kjp.ly"

RehearsalTrack = {
  \textMark \markup \box "162a" s2.*4
  \repeat volta 4 {
    s2.*3
    \textMark \markup \box "162b" s2.*7
    \textMark \markup \box "162c" s2.*7
    \textMark \markup \box "162d" s2.*7
    \textMark \markup \box "163a" s2.*8
    \textMark \markup \box "163b" s2.*8
    \textMark \markup \box "163c" s2.*6
    \alternative {
      \volta 1,2,3 {
        s2.*2
        \textMark \markup \box "163d" s2.*4
      }
      \volta 4 { s2.*4 }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup{"Heavily, in the region of " \rhythm { 2. } "= 58"} 2.=58
  s2.*4 |
  \repeat volta 4 {
    s2.*25
    s4 \tempo 4=58 s4 \tempo 2.=58 s4
    s2.
    s4\tempo 4=58 s4 \tempo 2.=58 s4
    s2.*18
    \alternative {
      \volta 1,2,3 { s2.*6 }
      \volta 4 { s2 \tempo "rit." 2.=50 s4 | s2.*3 | }
    }
  }
}

global = {
  \time 3/4
  \key g \major
}

melodyA = \relative {
  \global
  R2.
  R2.
  R2.
  r4 r d'
}

melodyB = \relative  {
  g'4 g g % 5
  g8 d b4 g
  a4 b c
  b2 b8 a
  g4 g' g
  fis4 g e % 10
  d2.
  r4 r d
  g4 g g
  g8 d b4 g
  a4 b c % 15
  \tag #'dash       {b2  \slurDashed b'8(a) \slurSolid |}
  \tag #'v2         {b,2             b'8(a)            |}
  \tag #'(v1 v3 v4) {b,2             b'8 a             |}
  g4 fis e
  a4 fis e
  d2.~
  d4 r e % 20
  a4 a a
  e4 e e
  a4 a a
  \tag #'dash       {e2 \slurDashed e8(e) \slurSolid |}
  \tag #'(v1 v3 v4) {e2             e4               |}
  \tag #'v2         {e2             e8 e             |}
  c'4 b a % 25
  a4 b gis
  a2.~
  a4 r d,
  e4 fis g
  fis4 d \caesura d % 30
  e4 fis g
  fis4 d \caesura d
  c'4 b a
  g4 fis e
  d2.~ % 35
  d2 r4 \section \sectionLabel \markup\smallCaps Chorus. \break
  g2.
  d2.
  c4 b a
  d2. % 40
  g4 fis g
  e4 a g
  fis4 e fis
  d2 d4
  b'8 b4. a4 % 45
  g8 d(d2)
  c'4 c b
  a8 e4. d4
  e4 fis g
  d4 b g % 50
}

melodyC = \relative {
  a2.~
  a4 b a
  g2.~
  g4 r r
  r2. \section % 55
  r4 r d'
}

melodyD = \relative {
  a4(c e
  d'4) b a
  g2.~
  g8 r r4 r % 60
}

melody = {
  \global
  \melodyA
  \repeat volta 4 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1,2,3 { \melodyC }
      \volta 4     { \melodyD }
    }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyC
  \keepWithTag #'v4 \melodyB \melodyD
}

trebleOne = \relative c' {
  \global
  \oneVoice
  r4 <b d g> q
  r4 q q
  <c e g>2 <g c e>4
  <a c fis>4 \grace cis'8 d4-\fermata d,
  \repeat volta 4 {
    g4 <b, d g> q % 5
    g'8 d b4 g
    \voiceOne a4 b c
    r4 <c fis>2
    g4 g' <b, e g>
    fis'4 <b, e g> <g cis e> % 10
    <fis a d>2.~
    q2 <fis c' d>4
    g'4 <b, d g> q
    g'8 d b4 g
    a4 b c % 15
    b2 b'8 a
    g4 fis e
    a4 fis e
    <fis, d'>2.~
    q2 e'4 % 20
    a4 a a
    e4 e e
    a4 a a
    e2 e8 e
    c'4 b a % 25
    a4 b gis
    <c, e a>2.~
    <d a'>2 d4 % end of page 1
    e4 fis g
    fis4 d d % 30
    e4 fis g
    fis4 d r
    <e g c>4 <d g b> <c e a>
    g'4 fis e
    <fis, c' d>2.~ % 35
    q2. \section \break
    <g' g'>2.--
    d'2.
    c4 b a
    d2. % 40
    g4 fis g
    e4 a g
    <a, fis'>4 <g e'> <a fis'>
    <fis d'>2 d4
    <d g b>8 q4. <c d a'>4 % 45
    <d g>8 d~d2
    <e a c>4 q <d e b'>
    <c e a>8 <c e>4. <f g d'>4
    <e e'>4(<fis fis'> <g g'>
    d'4 b g
    \alternative {
      {
        a2.~)
        a4 <d, b'> <c a'>
        g'2.~
        g2.~ \oneVoice
        g2. \section % 55
        <c, d fis>4 \appoggiatura cis'8 d4 d,
      }
      {
        <c e a>4 <e a c> <g c e>
        <fis c' d>4 <b e g b> <a d fis a>
        <g b d g>8 <b, d g>(q2)
        g8_.^^ r r4 r
      }
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s2.
  s2.
  s2.
  s2.
  \repeat volta 4 {
    s2. % 5
    s2.
    a2.
    b2 b8 a
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    a2.
    s2 dis4
    b2.
    <a d>2 <a cis>4
    s2.
    s2.
    <c e>2.
    b2.
    c2.
    b2.
    <c f>2 <b f'>4
    <c e>2 <b d>4
    s2.
    a2 d4
    <b d>2 <a cis>4
    a2 a4
    d2 cis4
    a2 s4
    s2.
    <a e'>2.
    s2.
    s2. \section \break
    r4 <b' d> q
    r4 <d, g>(<d fis>)
    <c e>2.
    r4 <d g>(<d fis>)
    r4 b'2
    r4 b2
    s2.
    s2.
    s2.
    s2.
    s2.
    s2.
    c2.
    <d, g>2.
    \alternative {
      {
        r4 <c e> q
        <c d>4 s2
        r4 <b d> q
        r4 q q
        s2. \section
        s2.
      }
      {
        s2.*4
      }
    }
  }
}

dynamicsPiano = {
  s2.\f | s | s | s2 s4\mf |
  \repeat volta 4 {
    s2.*46
    \alternative {
      \volta 1,2,3 { s2.*5 s2 s4\mf }
      \volta 4     { s2.*4 }
    }
  }
}

bassOne = \relative c {
  \global
  <g g'>2.--
  <d d'>2.--
  <c c'>4-- <b b'>-- <a a'>--
  <d d'>4 \grace c''8 d4-\fermata r4
  \repeat volta 4 {
    g,,2 r4 % 5
    b2 r4
    c2 e4
    d2 d,4
    e2.
    a2. % 10
    <d, d'>4-- <e e'>-- <d d'>--
    <c c'>8-- <d d'>-- <b b'>4-- <a a'>
    <g g'>2 r4
    b'2.
    \voiceOne e2. % 15
    b4 dis fis
    g2.
    fis2 g4 \oneVoice
    d4 a fis
    d2 r4 % 20
    <a' e'>2.
    <e' g>2.
    <a, f'>2.
    <e' gis>2.
    <f a>2 d4 % 25
    e2 e,4
    a4 a' g
    fis2 r4
    g2 a,4
    d2 fis,4 % 30
    g2 a4
    d2 r4
    a4 b c
    cis2.
    <d, d'>4 <e e'> <d d'> % 35
    <c c'>4 <b b'> <a a'> \section \break
    <g g'>4 <d'' g b> q
    \voiceOne r4 g2
    r4 g2
    r4 <d c'>2 \oneVoice % 40
    g,4 <d' g b>2
    e,4 <e' g b d>2
    a,4 <g' a cis>2
    d,4 d' <d c'>
    <g, g'>8 q4. <a fis'>4 % 45
    <b g'>8 q~q2
    <a a'>4 q <e' gis>
    <a, a'>8 q4. <b g'>4
    <c g'>2.
    <b g'>2. % 50
    \alternative {
      {
        \voiceOne e4 a g \oneVoice
        <d fis>2.
        <g, g'>2.--
        <d d'>2.--
        <c c'>4--
        <b b'>-- <a a'>-- \section
        <d d'>4 \appoggiatura cis''8 d4 r
      }
      {
        \voiceOne r4 r a
        r4 <d, g c> <d a' c>
        r8 <d g>8~ q2 \oneVoice
        <g,, g'>8_.^^ r r4 r
      }
    }
  }
  \bar "|."
}


bassTwo = \relative c {
  \global
  \voiceTwo
  s2.
  s2.
  s2.
  s2.
  \repeat volta 4 {
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
    c2 a4
    b2.
    e2 g,4
    a2.
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
    s2.
    s2. \section \break
    s2.
    b2.
    a2.
    d,4 g'(a)
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
    \alternative {
      {
        a,2.
        s2.
        s2.
        s2.
        s2. \section
        s2.
      }
      {
        <a a'>2.
        d,2.
        <g, g'>2.
        s2.
      }
    }
  }
  \bar "|."
}

chorus = \lyricmode {
  Mud, mud, glor -- i -- ous mud,
  No -- thing quite like it for cool -- ing the blood!
  So fol -- low me, fol -- low,
  Down to the hol -- low
  And there let us wal -- low in glor -- i -- ous mud!
}

emptyChorus = \lyricmode {
  \repeat unfold 38 \skip 1
}

verseOne = \lyricmode {
  \set stanza = "1."
  A bold Hip -- po -- po -- ta -- mus was stand -- ing one day
  On the banks of the cool Sha -- li -- mar.
  He gazed at the bot -- tom as it peace -- ful -- ly lay
  \nom By the \yesm light of the ev -- en -- ing star. __
  A -- way on a hill -- top sat comb -- ing her hair
  His fair Hip -- po -- pot -- a -- mine maid; __
  The Hip -- po -- pot -- a -- mus was no ig -- nor -- a -- mus
  And sang her this sweet ser -- e -- nade…
  \emptyChorus
  \set stanza = "2."
  The
}

verseTwo = \lyricmode {
  A fair Hip -- po -- po -- ta -- mus he aimed to en -- tice
  From her seat on that hill -- top a -- bove,
  As she had -- n't got a ma to give her ad -- vice,
  Came tip -- toe -- ing down to her love. __
  Like thun -- der the for -- est re -- echo -- ed the sound
  \nom Of the \yesm song that they sang as they met. __
  His in -- am -- or -- a -- ta ad -- just -- ed her gart -- er
  And lift -- ed her voice in du -- et…
  \chorus
  \set stanza = "3."
  Now
}

verseThree = \lyricmode {
  Now more Hip -- po -- po -- ta -- mi be -- gan to con -- vene
  On the banks of that riv -- er so wide.
  I won -- der now what am I to say of the scene
  \nom That en -- sued \yesm by the Shal -- i -- mar side? __
  They dived all at once with an ear -- split -- ting splosh
  Then rose to the sur -- face a -- gain, __
  A reg -- u -- lar arm -- y of Hip -- po -- pot -- a -- mi
  All sing -- ing this haunt -- ing ref -- rain…
  \emptyChorus
  \set stanza = "4."
  The
}

verseFour = \lyricmode {
  The amorous Hip -- po -- po -- ta -- mus, whose love song we know
  Is now mar -- ried and fa -- ther of ten
  He mur -- murs “God rot ‘em” as he wat -- ches them grow
  \nom And he \yesm longs to be sin -- gle a -- gain __
  He’ll gam -- bol no more on the banks of the Nile
  Which Nas -- ser is flood -- ing next spring __
  With hip -- po -- po -- ta -- mas in silk -- en py -- ja -- mas
  No more will he teach them to sing…
  \emptyChorus
  _ glo -- ri -- ous mud! __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  A bold Hip -- po -- po -- ta -- mus was stand -- ing one day
  On the banks of the cool Sha -- li -- mar.
  He gazed at the bot -- tom as it peace -- ful -- ly lay
  \nom By the \yesm light of the ev -- en -- ing star.
  A -- way on a hill -- top sat comb -- ing her hair
  His fair Hip -- po -- pot -- a -- mine maid;
  The Hip -- po -- pot -- a -- mus was no ig -- nor -- a -- mus
  And sang her this sweet ser -- e -- nade:
  \chorus

  \set stanza = "2."
  A fair Hip -- po -- po -- ta -- mus he aimed to en -- tice
  From her seat on that hill -- top a -- bove,
  As she had -- n't got a ma to give her ad -- vice,
  Came tip -- toe -- ing down to her love.
  Like thun -- der the for -- est re -- echo -- ed the sound
  \nom Of the \yesm song that they sang as they met.
  His in -- am -- or -- a -- ta ad -- just -- ed her gart -- er
  And lift -- ed her voice in du -- et:
  \chorus

  \set stanza = "3."
  Now more Hip -- po -- po -- ta -- mi be -- gan to con -- vene
  On the banks of that riv -- er so wide.
  I won -- der now what am I to say of the scene
  \nom That en -- sued \yesm by the Shal -- i -- mar side?
  They dived all at once with an ear -- split -- ting splosh
  Then rose to the sur -- face a -- gain,
  A reg -- u -- lar arm -- y of Hip -- po -- pot -- a -- mi
  All sing -- ing this haunt -- ing ref -- rain:
  \chorus

  \set stanza = "4."
  The amorous Hip -- po -- po -- ta -- mus, whose love song we know
  Is now mar -- ried and fa -- ther of ten
  He mur -- murs “God rot ‘em” as he wat -- ches them grow
  \nom And he \yesm longs to be sin -- gle a -- gain __
  He’ll gam -- bol no more on the banks of the Nile
  Which Nas -- ser is flood -- ing next spring __
  With hip -- po -- po -- ta -- mas in silk -- en py -- ja -- mas
  No more will he teach them to sing…
  \chorus
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " "bold " Hip po po ta "mus " "was " stand "ing " "one " "day "
  "\nOn " "the " "banks " "of " "the " "cool " Sha li "mar. "
  "\nHe " "gazed " "at " "the " bot "tom " "as " "it " peace ful "ly " "lay "
  "\nBy " "the " "light " "of " "the " ev en "ing " "star. "
  "\nA" "way " "on " "a " hill "top " "sat " comb "ing " "her " "hair "
  "\nHis " "fair " Hip po pot a "mine " "maid; "
  "\nThe " Hip po pot a "mus " "was " "no " ig nor a "mus "
  "\nAnd " "sang " "her " "this " "sweet " ser e "nade: "
  "\nMud, " "mud, " glor i "ous " "mud, "
  "\nNo" "thing " "quite " "like " "it " "for " cool "ing " "the " "blood! "
  "\nSo " fol "low " "me, " fol "low, "
  "\nDown " "to " "the " hol "low "
  "\nAnd " "there " "let " "us " wal "low " "in " glor i "ous " "mud!\n"

  \set stanza = "2."
  "\nA " "fair " Hip po po ta "mus " "he " "aimed " "to " en "tice "
  "\nFrom " "her " "seat " "on " "that " hill "top " a "bove, "
  "\nAs " "she " had "n't " "got " "a " "ma " "to " "give " "her " ad "vice, "
  "\nCame " tip toe "ing " "down " "to " "her " "love. "
  "\nLike " thun "der " "the " for "est " re echo "ed " "the " "sound "
  "\nOf " "the " "song " "that " "they " "sang " "as " "they " "met. "
  "\nHis " in am or a "ta " ad just "ed " "her " gart "er "
  "\nAnd " lift "ed " "her " "voice " "in " du "et: "
  "\nMud, " "mud, " glor i "ous " "mud, "
  "\nNo" "thing " "quite " "like " "it " "for " cool "ing " "the " "blood! "
  "\nSo " fol "low " "me, " fol "low, "
  "\nDown " "to " "the " hol "low "
  "\nAnd " "there " "let " "us " wal "low " "in " glor i "ous " "mud!\n"

  \set stanza = "3."
  "\nNow " "more " Hip po po ta "mi " be "gan " "to " con "vene "
  "\nOn " "the " "banks " "of " "that " riv "er " "so " "wide. "
  "\nI " won "der " "now " "what " "am " "I " "to " "say " "of " "the " "scene "
  "\nThat " en "sued " "by " "the " Shal i "mar " "side? "
  "\nThey " "dived " "all " "at " "once " "with " "an " ear split "ting " "splosh "
  "\nThen " "rose " "to " "the " sur "face " a "gain, "
  "\nA " reg u "lar " arm "y " "of " Hip po pot a "mi "
  "\nAll " sing "ing " "this " haunt "ing " ref "rain: "
  "\nMud, " "mud, " glor i "ous " "mud, "
  "\nNo" "thing " "quite " "like " "it " "for " cool "ing " "the " "blood! "
  "\nSo " fol "low " "me, " fol "low, "
  "\nDown " "to " "the " hol "low "
  "\nAnd " "there " "let " "us " wal "low " "in " glor i "ous " "mud!\n"

  \set stanza = "4."
  "\nThe " "amorous " Hip po po ta "mus, " "whose " "love " "song " "we " "know "
  "\nIs " "now " mar "ried " "and " fa "ther " "of " "ten "
  "\nHe " mur "murs " "“God " "rot " "‘em” " "as " "he " wat "ches " "them " "grow "
  "\nAnd " "he " "longs " "to " "be " sin "gle " a "gain " 
  "\nHe’ll " gam "bol " "no " "more " "on " "the " "banks " "of " "the " "Nile "
  "\nWhich " Nas "ser " "is " flood "ing " "next " "spring " 
  "\nWith " hip po po ta "mas " "in " silk "en " py ja "mas "
  "\nNo " "more " "will " "he " "teach " "them " "to " "sing… "
  "\nMud, " "mud, " glor i "ous " "mud, "
  "\nNo" "thing " "quite " "like " "it " "for " cool "ing " "the " "blood! "
  "\nSo " fol "low " "me, " fol "low, "
  "\nDown " "to " "the " hol "low "
  "\nAnd " "there " "let " "us " wal "low " "in " glor i "ous " "mud!"
}

\header {
  title    = "The Hippopotamus"
  composer = "Donald Swann"
  poet     = "Michael Flanders"
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      \new Staff = melody <<
        \new Dynamics \RehearsalTrack
        \new Dynamics \TempoTrack
        \clef bass
        \new Voice \transpose c c, \melody
        \addlyrics \verseOne
        \addlyrics \verseTwo
        \addlyrics \verseThree
        \addlyrics \verseFour
      >>
      \context PianoStaff
      <<
        \new Staff = treble <<
          \new Voice { \trebleOne }
          \new Voice { \trebleTwo }
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = bass <<
          \new Voice { \clef bass \bassOne }
          \new Voice { \clef bass \bassTwo }
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
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \unfoldRepeats
        <<
	  \new Staff = melody <<
            \new Dynamics \RehearsalTrack
            \new Dynamics \TempoTrack
            \clef bass
            \new Voice \transpose c c, \melodySingle
            \addlyrics \wordsSingle
          >>
	  \context PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
            \new Dynamics \dynamicsPiano
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassOne }
	      \new Voice { \clef bass \bassTwo }
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
  \paper {
    output-suffix = midi
  }
  \score {
    \context GrandStaff {
      \unfoldRepeats
      <<
        \new Dynamics \RehearsalTrack
        \new Dynamics \TempoTrack
	\new Staff = melody \melodySingle
        \addlyrics \wordsMidi
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice \trebleOne
	      \new Voice \trebleTwo
              \new Dynamics \dynamicsPiano
	      \new Voice \bassOne
	      \new Voice \bassTwo
	    >>
	  >>
      >>
    }
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
