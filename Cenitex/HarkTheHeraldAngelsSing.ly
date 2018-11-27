\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header{
    title = "Hark! The Herald Angels Sing"
    copyright = \today
}

global = \transpose g f {
  \time 4/4
  \key g \major
}

sopranomusic = \transpose g f \relative c' {
  \repeat volta 3 {
    d4 g g4. fis8 |
    g4 b b(a) |
    d d d4. c8 |
    b4 a b2 |
				%5
    d,4 g g4. fis8 |
    g4 b b(a) |
    d a a4. fis8 |
    fis4 e d2 |
    d'4 d d g, |
				%10
    c b b(a) |
    d d d g, |
    c b b(a) |
    e'4. e8 e4 d |
    c b c2 |
				%15
    a4 b8(c) d4. g,8 |
    g4 a b2 |
    e4. e8 e4 d |
    c b c2 |
    a4 b8.(c16) d4. g,8 |
				%20
    g4 a g2
  }
}

altomusic = \transpose g f \relative c' {
  \repeat volta 3 {
    d4 d d4. d8
    d4 g g(fis)
    g4 fis e a
    g fis g2
				% 5
    d4 d d4. c8
    b4 g' g(fis)
    fis4 e fis4. d8
    d4 cis4 d2
    d4 d d g
    a g g(fis)
    d d d g
    a g g(fis)
    c'4. c8 c4 b
    a gis a2
    fis4 fis g4. d8
    d4 fis g2
    c4. c8 c4 b
    a gis a2
    d,4 fis g4. d8
    d4 fis g2
  }
}

tenormusic = \transpose g f \relative c' {
  \repeat volta 3 {
    b4 b b4. a8
    g4 d' d2
    d4 d e e
    d d d2
    b4 b b4. a8
    g4 d' e2
    d4 e a,4. a8
    b4 g fis2
    d'4 d d d
    d d d2
    d4 d d d
    d d d2
    e4 e e f
    e d c2
    d4 e e4. b8
    b4 d d2
    e4. e8 e4 d
    c b c2
    d4 d d4. b8
    b4 c b2
  }
}

bassmusic = \transpose g f \relative c' {
  \repeat volta 3 {
    g4 g g4. d8
    b4 g d'2
    b4 b c c
    d d g,2
				% 5
    g'4 g g4. d8
    e4 d cis4.(a8)
    b4 cis d fis,
    g a d2
    d'4 d d b 
% 10
    fis g d2
    d'4 d d b
    fis4 g d2
    c4 c c d
    e e a2
% 15
    d4 c b4. g8 
    d4 d g2
    c4. c8 c4 b
    a gis a(gis)
    fis4 c' b g
% 20
    d d b'2
  }
}

verseone = \lyricmode {
  \set stanza = "f 1. "
  Hark! the her- ald ang- els sing
  Glo- ry to the new- born King;
  Peace on earth and mer- cy mild,
  God and sin- ners re- con- ciled;
  Joy- ful all ye na- tions rise,
  Join the tri- umph of the skies,
  With th'an gel- ic host pro- claim,
  Christ is born in Beth- le- hem.
  Hark! the her- ald ang- els sing
  Glo- ry to the new- born King;
}

Mverseone = \lyricmode {
  "/Hark! " "the " "her" "ald " "ang" "els " "sing"
  "/Glo" "ry " "to " "the " "new" "born " "King;"
  "/Peace " "on " "earth " "and " "mer" "cy " "mild,"
  "/God " "and " "sin" "ners " "re" "con" "ciled;"
  "/Joy" "ful " "all " "ye " "na" "tions " "rise,"
  "/Join " "the " "tri" "umph " "of " "the " "skies,"
  "/With " "th'an" "gel" "ic " "host " "pro" "claim,"
  "/Christ " "is " "born " "in " "Beth" "le" "hem."
  "/Hark! " "the " "her" "ald " "ang" "els " "sing"
  "/Glo" "ry " "to " "the " "new" "born " "King;"
}

versetwo = \lyricmode {
  \set stanza = "mf 2. "
  Christ, by high- est heav'n a- dored,
  Christ, the ev- er- last- ing Lord,
  Late in time be- hold Him come,
  Off- spring of a vir- gin's womb:
  Veiled in flesh the God- head see,
  Hail th'in- car- nate De- it- y
  Pleased as man with man to dwell,
  Je- sus our Em- ma- nu- el
  Hark! the her- ald ang- els sing
  Glo- ry to the new- born King;
}

Mversetwo = \lyricmode {
  "\Christ, " "by " "high" "est " "heav'n " "a" "dored,"
  "/Christ, " "the " "ev" "er" "last" "ing " "Lord,"
  "/Late " "in " "time " "be" "hold " "Him " "come,"
  "/Off" "spring " "of " "a " "vir" "gin's " "womb:"
  "/Veiled " "in " "flesh " "the " "God" "head " "see,"
  "/Hail " "th'in" "car" "nate " "De" "it" "y"
  "/Pleased " "as " "man " "with " "man " "to " "dwell,"
  "/Je" "sus " "our " "Em" "ma" "nu" "el"
  "/Hark! " "the " "her" "ald " "ang" "els " "sing"
  "/Glo" "ry " "to " "the " "new" "born " "King;"
}

versethree = \lyricmode {
  \set stanza = "ff 3. "
  Hail the heav'n born Prince of Peace!
  Hail the Son of Right- eous- ness!
  Light and Life to all he brings,
  Ris'n with heal- ing in his wings;
  Mild he lays his glo- ry by,
  Born that man no more may die,
  Born to raise the sons of earth,
  Born to give them se- cond birth,
  Hark the he- rald an- gels sing
  Glo- ry to the new- born King.
}

Mversethree = \lyricmode {
  "\Hail " "the " "heav'n " "born " "Prince " "of " "Peace!"
  "/Hail " "the " "Son " "of " "Right" "eous" "ness!"
  "/Light " "and " "Life " "to " "all " "he " "brings,"
  "/Ris'n " "with " "heal" "ing " "in " "his " "wings;"
  "/Mild " "he " "lays " "his " "glo" "ry " "by,"
  "/Born " "that " "man " "no " "more " "may " "die,"
  "/Born " "to " "raise " "the " "sons " "of " "earth,"
  "/Born " "to " "give " "them " "se" "cond " "birth,"
  "/Hark " "the " "he" "rald " "an" "gels " "sing"
  "/Glo" "ry " "to " "the " "new" "born " "King."
}

\book
{
  \score {
    \new ChoirStaff <<
      \new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \global \sopranomusic }
	\new Voice = "altos" { \voiceTwo \global \altomusic}
      >>
      \new Lyrics \lyricsto "sopranos" { \verseone}
      \new Lyrics \lyricsto "sopranos" { \versetwo }
      \new Lyrics \lyricsto "sopranos" { \versethree }
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \global \tenormusic}
	\new Voice = "basses" { \voiceTwo\global \bassmusic}
      >>
    >>
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    }
  }
  \score {
    \new ChoirStaff <<
      \new Staff = "women" <<
        \set Staff.midiInstrument = #"flute"
	\new Voice = "sopranos" { \voiceOne \global R1 \unfoldRepeats \sopranomusic }
        \set Staff.midiInstrument = #"clarinet"
	\new Voice = "altos" { \voiceTwo \global R1 \unfoldRepeats \altomusic}
      >>
      \new Lyrics \lyricsto "sopranos" { \Mverseone \Mversetwo \Mversethree}
      \new Staff = "men" <<
        \set Staff.midiInstrument = #"oboe"
	\new Voice = "tenors" { \clef "bass" \voiceOne \global R1 \unfoldRepeats \tenormusic}
        \set Staff.midiInstrument = #"bassoon"
	\new Voice = "basses" { \voiceTwo \global R1 \unfoldRepeats \bassmusic}
      >>
    >>
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }

  }
}
