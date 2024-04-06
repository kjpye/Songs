\version "2.25.13"

\include "kjp.ly"

\header {
  title    = "Botany Bay"
  composer = "Trad. arr. Stephen Sharpe"
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}

global = {
  \key d \major
  \time 6/8
}

sopranoA = \relative {
  r2.
  r2.
}

sopranoB = \relative {
    fis'8. e16 fis8 g a b
    a8. g16 fis e~e8 d e
    fis8. e16fis8 g a b % 5
    \tag #'dash    {a8. g16 fis e~e8 r8 \slurDashed d16(e) \slurSolid}
    \tag #'(v1 v3) {a8. g16 fis e~e8 r8             d16(e)           }
    \tag #'v2      {a8. g16 fis e~e8 r8             d16 e           }
    fis8 a a e g g
    \tag #'dash {\slurDashed fis16(e)  \slurSolid d4~d8 r \slurDashed a'16(a) \slurSolid}
    \tag #'v1   {            fis16(e)            d4~d8 r             a'8                }
    \tag #'v2   {            fis16(e)            d4~d8 r             a'16 a            }
    \tag #'v3   {            fis16 e             d4~d8 r             a'8               }
    fis8 a d g, b d
    \tag #'dash    {a4.~a8 r \slurDashed b16(cis) \slurSolid |} % 10
    \tag #'(v1 v3) {a4.~a8 r             b16(cis)            |}
    \tag #'v2      {a4.~a8 r             b16 cis             |}
    d8 cis d e d b
    \tag #'dash    {\slurDashed a16(fis) d4~d8 r d16(e) \slurSolid}
    \tag #'v1      {            a16(fis) d4~d8 r d16 e            }
    \tag #'(v2 v3) {            a16 fis  d4~d8 r d16(e)           }
    fis8 a a e g fis
    d'4 r8 a4^\fermata g8
    fis8 a a e g g % 15
    fis16 e d4~ d8 r a'16 g
    fis8 a d fis, a d
    a4.~a4 b16 cis
    d8 cis d e d b
    a16 fis d4~d8 r d16 e % 20
    fis8(a) a e g fis
    d4.~d8 r4
    r2.
  }

sopranoC = \relative {
  r2.
  r2.^\fermata
}

soprano = {
  \sopranoA
  \repeat volta 3 \keepWithTag #'dash \sopranoB
  \sopranoC
  \bar "|."
}

sopranoSingle = {
  \global
  \sopranoA
  \keepWithTag #'v1 \sopranoB
  \keepWithTag #'v2 \sopranoB
  \keepWithTag #'v3 \sopranoB
  \sopranoC
  \bar "|."
}

altoA = \relative {
  r2.
  r2.
}

altoB = \relative {
    r2.
    r2.
    fis'8. e16 d8 e fis g % 5
    \tag #'dash    {fis8. e16 d cis~8 r \slurDashed d16(e) \slurSolid |}
    \tag #'(v1 v3) {fis8. e16 d cis~8 r             d16(e)            |}
    \tag #'v2      {fis8. e16 d cis~8 r             d16 e             |}
    fis8. e16 d8 d8. cis16 b8
    \tag #'dash {\slurDashed d16(d) d4~d8 r d16(e) \slurSolid |}
    \tag #'v1   {            d8     d4~d8 r d16(e)            |}
    \tag #'v2   {            d8     d4~d8 r d16 e             |}
    \tag #'v3   {            d16 d  d4~d8 r d16(e)            |}
    fis8. e16 d8 d8. cis16 b8
    \tag #'dash    {e4.~e8 r \slurDashed d16(e) \slurSolid |} % 10
    \tag #'(v1 v3) {e4.~e8 r             d16(e)            |}
    \tag #'v2      {e4.~e8 r             d16 e             |}
    fis8. fis16 fis8 g8. g16 g8
    \tag #'dash {\slurDashed fis16(fis) fis4~fis8 r d16(e) \slurSolid |}
    \tag #'v1   {            fis8       fis4~fis8 r d16 e            |}
    \tag #'v2   {            fis16 fis  fis4~fis8 r d16(e)            |}
    \tag #'v3   {            fis16 fis  fis4~fis8 r d16(e)            |}
    fis8. e16 d8 e8. d16 cis8
    d4 r8 cis4^\fermata cis8
    d8 cis d d cis d % 15
    d16 d d8 r b'8. a16 g8
    fis8 r4 g8 b b
    a8 a a a8. b16 cis8
    b4 r8 b8. a16 g(fis)
    a16 fis d4~d8 r d16 e % 20
    fis8.(e16) d8 e8.d16 cis8
    d4.~d8 r4
    r2.
  }

altoC = \relative {
  r2.
  r2.^\fermata
}

alto = {
  \altoA
  \repeat volta 3 \keepWithTag #'dash \altoB
  \altoC
  \bar "|."
}

altoSingle = {
  \global
  \altoA
  \keepWithTag #'v1 \altoB
  \keepWithTag #'v2 \altoB
  \keepWithTag #'v3 \altoB
  \altoC
}

tenorA = \relative {
  a8 a a b b b
  a8 a a b b b
}

tenorB = \relative {
    a8 a a b b b
    a8 a a b b b
    a8 a a b b b % 5
    a8 a a b r4
    a8 a a b b b
    a8 a a b r4
    a8 a a b r4
    cis8 cis cis cis d e % 10
    fis8. a,16 a8 b r4
    a8 a a b b b
    a a a b b b
    a4 r8 a4^\fermata a8
    a8. a16 a8 a8. a16 a8 % 15
    b16 b b8 r d8. cis16 b8
    a8 r4 b8. a16 b8
    cis8 cis cis cis8. d16 e8
    fis8 r4 g8. fis16 e(d)
    cis4 cis8 b8 b b % 20
    a4 a8 a a a
    a8 a a b b b
    a8 a a b b b
  }

tenorC = \relative {
  a8 a a b b b
  a2.^\fermata^\pp
}

tenor = {
  \tenorA
  \repeat volta 3 \tenorB
  \tenorC
}

tenorSingle = {
  \global
  \tenorA
  \keepWithTag #'v1 \tenorB
  \keepWithTag #'v2 \tenorB
  \keepWithTag #'v3 \tenorB
  \tenorC
  \bar "\."
}

bassA = \relative {
  d8 d d d d d
  d8 d d d d d
}

bassB = \relative {
    d8 d d d d d
    d8 d d d d d
    d8 d d d d d % 5
    d8 d d a b cis
    \tag #'dash    {d4.~d8 r^\f \slurDashed d16(e) \slurSolid |}
    \tag #'(v1 v3) {d4.~d8 r^\f             d16(e)            |}
    \tag #'v2      {d4.~d8 r^\f             d16 e             |}
    fis8 a a e g g
    \tag #'dash {\slurDashed fis16(e) d4~d8 r d16(d) \slurSolid |}
    \tag #'v1   {            fis16(e) d4~d8 r d8                |}
    \tag #'v2   {            fis16(e) d4~d8 r d16 d             |}
    \tag #'v3   {            fis16 e  d4~d8 r d8                |}
    a8 a a a b cis % 10
    \tag #'dash    {d4. ~d8 r \slurSolid b'16(cis) \slurSolid |}
    \tag #'(v1 v3) {d,4.~d8 r            b'16(cis)            |}
    \tag #'v2      {d,4.~d8 r            b'16 cis             |}
    d8 cis d e d b
    \tag #'dash    {\slurDashed a16 (fis) \slurSolid d4~d4.~ |}
    \tag #'v1      {            a'16(fis)            d4~d4.~ |}
    \tag #'(v2 v3) {            a'16 fis             d4~d4.~ |}
    d4 r8 a4^\fermata a8
    d8. e16 fis8 a,8. b16 cis8 % 15
    b8 b b g g g
    d'8. e16 fis8 e8. fis16 g8
    a4.~ a4 b16 cis
    b8 b b g g g
    fis4 fis8 g g g % 20
    d8.(e16) fis8 g fis e
    d8 d d d d d
    d8 d d d d d
  }

bassC = \relative {
  d8 d d d d d
  d2.^\fermata
  \bar"|."
}

bass = {
  \bassA
  \repeat volta 3 \bassB
  \bassC
}

bassSingle = {
  \global
  \bassA
  \keepWithTag #'v1 \bassB
  \keepWithTag #'v2 \bassB
  \keepWithTag #'v3 \bassB
  \bassC
  \bar "|."
}

textSopOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1." Fare -- well to old Eng -- land for e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail -- ey
  \nom Where I \yesm once used to cut such a swell.
}

textSopTwo = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "2."
  \nom There's the \yesm cap -- tain he is our com -- man -- der
  \nom There's the \yesm bo -- sun and all the ship's crew
  \nom There's the \yesm first and the sec -- ond class \nom pas -- sen -- \yesm gers
  Knows what we poor con -- victs go through.

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Sing -- ing too -- ra -- li oo -- ra -- li ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- ta -- ny Bay.
}

textSopThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3." If I had the wings of a \nom tur -- tle \yesm dove
  It's far on my pin -- ions I'd fly
  Right back to the arms of my \nom Pol -- ly \yesm love
  And in her emb -- race I would die.
}

textSopSingle = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  \set stanza = "1." Fare -- well to old Eng -- land for e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail -- ey
  Where I once used to cut such a swell.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Sing -- ing too -- ra -- li oo -- ra -- li ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- ta -- ny Bay.

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "2."
  There's the cap -- tain he is our com -- man -- der
  There's the bo -- sun and all the ship's crew
  There's the first and the sec -- ond class pas -- sen -- gers
  Knows what we poor con -- victs go through.

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Sing -- ing too -- ra -- li oo -- ra -- li ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- ta -- ny Bay.

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  \set stanza = "3."  If I had the wings of a tur -- tle dove
  It's far on my pin -- ions I'd fly
  Right back to the arms of my Pol -- ly love
  And in her emb -- race I would die.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Sing -- ing too -- ra -- li oo -- ra -- li ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- ta -- ny Bay.
}

textSopMidi = \lyricmode {
  "Too" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"

  \set stanza = "1."
  "\nFare" "well " "to " "old " Eng "land " "for " e "ver "
  "\nFare" "well " "to " "my " "rum " "culls " "as " "well "
  "\nFare" "well " "to " "the " well "known " "old " Bail "ey "
  "\nWhere " "I " "once " "used " "to " "cut " "such " "a " "swell. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nSing" "ing " too ra "li " oo ra "li " "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo ta "ny " "Bay.\n"

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"
  
  \set stanza = "2."
  "\nThere's " "the " cap "tain " "he " "is " "our " com man "der "
  "\nThere's " "the " bo "sun " "and " "all " "the " "ship's " "crew "
  "\nThere's " "the " "first " "and " "the " sec "ond " "class " pas sen "gers "
  "\nKnows " "what " "we " "poor " con "victs " "go " "through.\n"

  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nSing" "ing " too ra "li " oo ra "li " "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo ta "ny " "Bay. "

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"

  \set stanza = "3."
  "\nIf " "I " "had " "the " "wings " "of " "a " tur "tle " "dove "
  "\nIt's " "far " "on " "my " pin "ions " "I'd " "fly "
  "\nRight " "back " "to " "the " "arms " "of " "my " Pol "ly " "love "
  "\nAnd " "in " "her " emb "race " "I " "would " "die.\n"
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nSing" "ing " too ra "li " oo ra "li " "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo ta "ny " "Bay. "
}

textAltoOne = \lyricmode {

  _ _ _ _ _ _ _ _ _ _
  \set stanza = "1." Fare -- well to old Eng -- land for e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail -- ey
  \nom Where I \yesm once used to cut such a swell.
}

textAltoTwo = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "2."
  \nom There's the \yesm cap -- tain he is our com -- man -- der
  \nom There's the \yesm bo -- sun and all the ship's crew
  \nom There's the \yesm first and the sec -- ond class \nom pas -- sen -- \yesm gers
  Knows what we poor con -- victs go through.

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bo -- tan -- y Bay.
}

textAltoThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  \set stanza = "3." If I had the wings of a \nom tur -- tle \yesm dove
  It's far on my pin -- ions I'd fly
  Right back to the arms of my \nom Pol -- ly \yesm love
  And in her emb -- race I would die.
}

textAltoSingle = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "1."
  Fare -- well to old Eng -- land for e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail- ey
  Where I once used to cut such a swell.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bo -- tan -- y Bay.

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "2."
  There's the cap -- tain he is our com -- man -- der
  There's the bo -- sun and all the ship's crew
  There's the first and the sec -- ond class pas -- sen -- gers
  Knows what we poor con -- victs go through.

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ro -- li -- ay
  Too -- ro -- li -- ay
  Sing -- ing too -- r -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bo -- tan -- y Bay.

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay
  \set stanza = "3."
  If I had the wings of a tur -- tle dove
  It's far on my pin -- ions I'd fly
  Right back to the arms of my Pol -- ly love
  And in her emb -- race I would die.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ro -- li -- ay
  Too -- ro -- li -- ay
  Sing -- ing too -- r -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bo -- tan -- y Bay.
}

textAltoMidi = \lyricmode {
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"
  
  \set stanza = "1."
  "\nFare" "well " "to " "old " Eng "land " "for " e "ver "
  "\nFare" "well " "to " "my " "rum " "culls " "as " "well "
  "\nFare" "well " "to " "the " well "known " "old " Bail "ey "
  "\nWhere " "I " "once " "used " "to " "cut " "such " "a " "swell.\n"
  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ro li "ay "
  "\nToo" ro li "ay "
  "\nSing" "ing " too r li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bo tan "y " "Bay. "

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"
  
  \set stanza = "2."
  "\nThere's " "the " cap "tain " "he " "is " "our " com man "der "
  "\nThere's " "the " bo "sun " "and " "all " "the " "ship's " "crew "
  "\nThere's " "the " "first " "and " "the " sec "ond " "class " pas sen "gers "
  "\nKnows " "what " "we " "poor " con "victs " "go " "through.\n"

  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nSing" "ing " too ra li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bo tan "y " "Bay. "

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay\n"
  
  \set stanza = "3."
  "\nIf " "I " "had " "the " "wings " "of " "a " tur "tle " "dove "
  "\nIt's " "far " "on " "my " pin "ions " "I'd " "fly "
  "\nRight " "back " "to " "the " "arms " "of " "my " Pol "ly " "love "
  "\nAnd " "in " "her " emb "race " "I " "would " "die.\n"
  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ro li "ay "
  "\nToo" ro li "ay "
  "\nSing" "ing " too r li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bo tan "y " "Bay. "
}

textTenorOne = \lyricmode {
}

textTenorTwo = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bot -- an -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.  
}

textTenorThree = \lyricmode {
}

textTenorSingle = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bot -- an -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bot -- an -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,

  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li -- ay

  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li
  Too -- ra -- li -- ay
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y.
  Too -- ra -- li -- ay
  Too -- ra -- li -- ay
  Sing -- ing too -- ra -- li -- ay
  Too -- ra -- li add -- it -- y
  For we're bound for Bot -- an -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay.  
}

textTenorMidi = \lyricmode {
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay "

  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nSing" "ing " too ra li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bot an "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay "

  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nSing" "ing " too ra li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bot an "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "

  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra li "ay "

  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li "
  "\nToo" ra li "ay "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay. "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y. "
  "\nToo" ra li "ay "
  "\nToo" ra li "ay "
  "\nSing" "ing " too ra li "ay "
  "\nToo" ra "li " add it "y "
  "\nFor " "we're " "bound " "for " Bot an "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay. "  
}

textBassOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  Fare -- well to old Eng -- land for -- e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail -- ey
}

textBassTwo = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay
  \set stanza = "2."
  \nom There's the \yesm cap -- tain as is our com -- man -- der
  \nom There's the \yesm bo -- sun and all the ship's crew
  \nom There's the \yesm first and the sec -- ond class \nom pas -- sen -- \yesm gers

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Too -- ra -- li
  Too -- ra -- li oo -- ra -- li ay
  Sing -- ing Too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- tan -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,

  Too -- ra -- li oo -- ra -- li -- ay
}

textBassThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  If I had the wings of a \nom tur -- tle \yesm dove
  It's far on my pin -- ions I'd fly
  Right back to the arms of my \nom Pol -- ly \yesm love
}

textBassSingle = \lyricmode {
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay
  \set stanza = "1."
  Fare -- well to old Eng -- land for -- e -- ver
  Fare -- well to my rum culls as well
  Fare -- well to the well -- known old Bail -- ey
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Too -- ra -- li
  Too -- ra -- li oo -- ra -- li ay
  Sing -- ing Too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- tan -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li -- ay
  \set stanza = "2."
  There's the cap -- tain as is our com -- man -- der
  There's the bo -- sun and all the ship's crew
  There's the first and the sec -- ond class pas -- sen -- gers

  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Too -- ra -- li
  Too -- ra -- li oo -- ra -- li ay
  Sing -- ing Too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- tan -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,
  Too- -- ra- -- li oo -- ra -- li,
  Too -- ra -- li oo- -- ra -- li,
  Too -- ra-  -- li oo -- ra -- li -- ay
  \set stanza = "3."
  If I had the wings of a tur -- tle dove
  It's far on my pin -- 'ions I'd fly
  Right back to the arms of my Pol -- ly love
  Sing -- ing too -- ra -- li oo -- ra -- li add -- it -- y,
  Too -- ra -- li
  Too -- ra -- li oo -- ra -- li ay
  Sing -- ing Too -- ra -- li oo -- ra -- li add -- it -- y,
  For we're bound for Bo -- tan -- y
  Too -- ra -- li oo -- ra -- li,
  Too -- ra -- li oo -- ra -- li,

  Too -- ra -- li oo -- ra -- li -- ay
}

textBassMidi = \lyricmode {
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay "
  \set stanza = "1."
  "\nFare" "well " "to " "old " Eng "land " for e "ver "
  "\nFare" "well " "to " "my " "rum " "culls " "as " "well "
  "\nFare" "well " "to " "the " well "known " "old " Bail "ey "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nToo" ra "li "
  "\nToo" ra "li " oo ra "li " "ay "
  "\nSing" "ing " Too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo tan "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay "
  \set stanza = "2."
  "\nThere's " "the " cap "tain " "as " "is " "our " com man "der "
  "\nThere's " "the " bo "sun " "and " "all " "the " "ship's " "crew "
  "\nThere's " "the " "first " "and " "the " sec "ond " "class " pas sen "gers "

  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nToo" ra "li "
  "\nToo" ra "li " oo ra "li " "ay "
  "\nSing" "ing " Too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo tan "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra li "ay "
  \set stanza = "3."
  "\nIf " "I " "had " "the " "wings " "of " "a " tur "tle " "dove "
  "\nIt's " "far " "on " "my " pin "ions " "I'd " "fly "
  "\nRight " "back " "to " "the " "arms " "of " "my " Pol "ly " "love "
  "\nSing" "ing " too ra "li " oo ra "li " add it "y, "
  "\nToo" ra "li "
  "\nToo" ra "li " oo ra "li " "ay "
  "\nSing" "ing " Too ra "li " oo ra "li " add it "y, "
  "\nFor " "we're " "bound " "for " Bo tan "y "
  "\nToo" ra "li " oo ra "li, "
  "\nToo" ra "li " oo ra "li, "

  "\nToo" ra "li " oo ra li "ay "
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \keepWithTag #'dash \soprano}
        \addlyrics \textSopOne
        \addlyrics \textSopTwo
        \addlyrics \textSopThree
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice {\global \keepWithTag #'dash \alto}
        \addlyrics \textAltoOne
        \addlyrics \textAltoTwo
        \addlyrics \textAltoThree
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \new Voice {\global \clef "treble_8" \keepWithTag #'dash \tenor}
        \addlyrics \textTenorOne
        \addlyrics \textTenorTwo
        \addlyrics \textTenorThree
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \new Voice {\global \clef "bass" \keepWithTag #'dash \bass}
        \addlyrics \textBassOne
        \addlyrics \textBassTwo
        \addlyrics \textBassThree
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics \textSopSingle
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice \altoSingle
        \addlyrics \textAltoSingle
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics \textTenorSingle
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics \textBassSingle
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff  = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics \textSopSingle
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice \altoSingle
        \addlyrics \textAltoSingle
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics \textTenorSingle
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics \textBassSingle
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff  = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics \textSopSingle
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice \altoSingle
        \addlyrics {\tiny \textAltoSingle}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics {\tiny \textTenorSingle}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics {\tiny \textBassSingle}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff  = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics {\tiny \textSopSingle}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice \altoSingle
        \addlyrics \textAltoSingle
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics {\tiny \textTenorSingle}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics {\tiny \textBassSingle}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff  = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics {\tiny \textSopSingle}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice \altoSingle
        \addlyrics {\tiny \textAltoSingle}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics \textTenorSingle
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics {\tiny \textBassSingle}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff  = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics {\tiny \textSopSingle}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice \altoSingle
        \addlyrics {\tiny \textAltoSingle}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice \tenorSingle
        \addlyrics {\tiny \textTenorSingle}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef "bass"
        \new Voice \bassSingle
        \addlyrics \textBassSingle
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
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
    output-suffix = midi-sop
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
        \addlyrics \textSopMidi
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \altoSingle
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tenorSingle
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \bassSingle
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
    output-suffix = midi-alto
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \altoSingle
        \addlyrics \textAltoMidi
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tenorSingle
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \bassSingle
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
    output-suffix = midi-tenor
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \altoSingle
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tenorSingle
        \addlyrics \textTenorMidi
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \bassSingle
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
    output-suffix = midi-bass
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice \sopranoSingle
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \altoSingle
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \tenorSingle
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \bassSingle
        \addlyrics \textBassMidi
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
