\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Infant Holy, Infant Lowly"
  copyright = \today
}

global = {
  \key f \major
  \time 3/4
  \tempo 4 = 60
}

sopwordsone = \lyricmode {
  In- fant ho- ly, In- fant low- ly,
  For his bed a cat- tle stall;
  Ox- en low- ing, Lit- tle know- ing
  Christ the babe is Lord of all.
  Swift are wing- ing An- gels sing- ing,
  Now- ells ring- ing, Ti- dings bring- ing,
  Christ the babe is Lord of all,
  Christ the Babe is Lord of all.
}

sopwordstwo = \lyricmode {
  Flocks were sleep- ing, Shep- herds keep- ing
  Vig- il till the morn- ing new;
  Saw the glo- ry, Heard the sto- ry,
  Ti- dings of a  gos- pel true.
  Thus re- joic- ing, Free from sor- row,
  Prai- ses voic- ing, Greet the mor- row,
  Christ the babe was born for you!
  Christ the babe was born for you!
}

altwordsone = \lyricmode {
  In- fant ho- ly, In- fant low- ly,
  For his bed a cat- tle stall;
  Ox- en low- ing, Lit- tle know- ing
  Christ the babe is Lord of all.
  Swift are wing- ing An- gels sing- ing,
  Now- ells ring- ing, Ti- dings bring- ing,
  Christ the babe is Lord, Lord of all,
  Christ the Babe is Lord, Lord of all.
}

altwordstwo = \lyricmode {
  Flocks were sleep- ing, Shep- herds keep- ing
  Vig- il till the morn- ing new;
  Saw the glo- ry, Heard the sto- ry,
  Ti- dings of a  gos- pel true.
  Thus re- joic- ing, Free from sor- row,
  Prai- ses voic- ing, Greet the mor- row,
  Christ the babe was born, born for you!
  Christ the babe was born, born for you!
}

tenwordsone = \lyricmode {
  In- fant ho- ly, In- fant low- ly,
  For his bed a cat- tle stall;
  Ox- en low- ing, Lit- tle know- ing
  Christ the babe is Lord of all.
  Swift are wing- ing An- gels sing- ing,
  Now- ells ring- ing, Ti- dings bring- ing,
  Christ the babe is Lord of all, Lord of all,
  Christ the Babe is Lord, Lord of all.
}

tenwordstwo = \lyricmode {
  Flocks were sleep- ing, Shep- herds keep- ing
  Vig- il till the morn- ing new;
  Saw the glo- ry, Heard the sto- ry,
  Ti- dings of a  gos- pel true.
  Thus re- joic- ing, Free from sor- row,
  Prai- ses voic- ing, Greet the mor- row,
  Christ the babe was born for you, born for you!
  Christ the babe was born, born for you!
}

basswordsone = \lyricmode {
  In- fant ho- ly, In- fant low- ly,
  For his bed a cat- tle stall;
  Ox- en low- ing, Lit- tle know- ing
  Christ the babe is Lord of all.
  Swift are wing- ing An- gels sing- ing,
  Now- ells ring- ing, Ti- dings bring- ing,
  Christ the babe is Lord of all,
  Christ the Babe is Lord of all.
}

basswordstwo = \lyricmode {
  Flocks were sleep- ing, Shep- herds keep- ing
  Vig- il till the morn- ing new;
  Saw the glo- ry, Heard the sto- ry,
  Ti- dings of a  gos- pel true.
  Thus re- joic- ing, Free from sor- row,
  Prai- ses voic- ing, Greet the mor- row,
  Christ the babe was born for you!
  Christ the babe was born for you!
}

Msopwordsone = \lyricmode {
  In "fant " ho "ly, " In "fant " low "ly, "
  "/For " "his " "bed " "a " cat "tle " "stall;"
  "/Ox" "en " low "ing, " Lit "tle " know "ing"
  "/Christ " "the " "babe " "is " "Lord " "of " "all."
  "/Swift " "are " wing "ing " An "gels " sing "ing,"
  "/Now" "ells " ring "ing, " Ti "dings " bring "ing,"
  "/Christ " "the " "babe " "is " "Lord " "of " "all,"
  "/Christ " "the " "Babe " "is " "Lord " "of " "all."
}

Msopwordstwo = \lyricmode {
  "\Flocks " "were " "sleep" "ing, " "Shep" "herds " "keep" "ing"
  "/Vig" "il " "till " "the " "morn" "ing " "new;"
  "/Saw " "the " "glo" "ry, " "Heard " "the " "sto" "ry,"
  "/Ti" "dings " "of " "a " "gos" "pel " "true."
  "/Thus " "re" "joic" "ing, " "Free " "from " "sor" "row,"
  "/Prai" "ses " "voic" "ing, " "Greet " "the " "mor" "row,"
  "/Christ " "the " "babe " "was " "born " "for " "you!"
  "/Christ " "the " "babe " "was " "born " "for " "you!"
}

Maltwordsone = \lyricmode {
  "In" "fant " "ho" "ly, " "In" "fant " "low" "ly,"
  "/For " "his " "bed " "a " "cat" "tle " "stall;"
  "/Ox" "en " "low" "ing, " "Lit" "tle " "know" "ing"
  "/Christ " "the " "babe " "is " "Lord " "of " "all."
  "/Swift " "are " "wing" "ing " "An" "gels " "sing" "ing,"
  "/Now" "ells " "ring" "ing, " "Ti" "dings " "bring" "ing,"
  "/Christ " "the " "babe " "is " "Lord, " "Lord " "of " "all,"
  "/Christ " "the " "Babe " "is " "Lord, " "Lord " "of " "all."
}

Maltwordstwo = \lyricmode {
  "\Flocks " "were " "sleep" "ing, " "Shep" "herds " "keep" "ing"
  "/Vig" "il " "till " "the " "morn" "ing " "new;"
  "/Saw " "the " "glo" "ry, " "Heard " "the " "sto" "ry,"
  "/Ti" "dings " "of " "a " "gos" "pel " "true."
  "/Thus " "re" "joic" "ing, " "Free " "from " "sor" "row,"
  "/Prai" "ses " "voic" "ing, " "Greet " "the " "mor" "row,"
  "/Christ " "the " "babe " "was " "born, " "born " "for " "you!"
  "/Christ " "the " "babe " "was " "born, " "born " "for " "you!"
}

Mtenwordsone = \lyricmode {
  "In" "fant " "ho" "ly, " "In" "fant " "low" "ly,"
  "/For " "his " "bed " "a " "cat" "tle " "stall;"
  "/Ox" "en " "low" "ing, " "Lit" "tle " "know" "ing"
  "/Christ " "the " "babe " "is " "Lord " "of " "all."
  "/Swift " "are " "wing" "ing " "An" "gels " "sing" "ing,"
  "/Now" "ells " "ring" "ing, " "Ti" "dings " "bring" "ing,"
  "/Christ " "the " "babe " "is " "Lord " "of " "all, " "Lord " "of " "all,"
  "/Christ " "the " "Babe " "is " "Lord, " "Lord " "of " "all."
}

Mtenwordstwo = \lyricmode {
  "\Flocks " "were " "sleep" "ing, " "Shep" "herds " "keep" "ing"
  "/Vig" "il " "till " "the " "morn" "ing " "new;"
  "/Saw " "the " "glo" "ry, " "Heard " "the " "sto" "ry,"
  "/Ti" "dings " "of " "a " "gos" "pel " "true."
  "/Thus " "re" "joic" "ing, " "Free " "from " "sor" "row,"
  "/Prai" "ses " "voic" "ing, " "Greet " "the " "mor" "row,"
  "/Christ " "the " "babe " "was " "born " "for " "you, " "born " "for " "you!"
  "/Christ " "the " "babe " "was " "born, " "born " "for " "you!"
}

Mbasswordsone = \lyricmode {
  "In" "fant " "ho" "ly, " "In" "fant " "low" "ly,"
  "/For " "his " "bed " "a " "cat" "tle " "stall;"
  "/Ox" "en " "low" "ing, " "Lit" "tle " "know" "ing"
  "/Christ " "the " "babe " "is " "Lord " "of " "all."
  "/Swift " "are " "wing" "ing " "An" "gels " "sing" "ing,"
  "/Now" "ells " "ring" "ing, " "Ti" "dings " "bring" "ing,"
  "/Christ " "the " "babe " "is " "Lord " "of " "all,"
  "/Christ " "the " "Babe " "is " "Lord " "of " "all."
}

Mbasswordstwo = \lyricmode {
  "\Flocks " "were " "sleep" "ing, " "Shep" "herds " "keep" "ing"
  "/Vig" "il " "till " "the " "morn" "ing " "new;"
  "/Saw " "the " "glo" "ry, " "Heard " "the " "sto" "ry,"
  "/Ti" "dings " "of " "a " "gos" "pel " "true."
  "/Thus " "re" "joic" "ing, " "Free " "from " "sor" "row,"
  "/Prai" "ses " "voic" "ing, " "Greet " "the " "mor" "row,"
  "/Christ " "the " "babe " "was " "born " "for " "you!"
  "/Christ " "the " "babe " "was " "born " "for " "you!"
}

sopmelody = \relative c' {
  \repeat volta 2 {
    c8-\pp c f4 f
    e8 f g4 g
    a8 bes c4 bes
    a8 g f2
    c8 c f4 f
    e8 f g4 g
    a8 \< bes c4 bes \!
    a8 \> g f2 \!
    \cresc f8 e d4 d
    g8 f e4 e
    \cresc a8 g f4 f
    bes8 a g4 g \!
    a8-\mf bes c4 bes
    bes8 a f2
    a8-\f bes c4 bes
    bes8 a f2
  }
}

altmelody = \relative c' {
  \repeat volta 2 {
    a8-\pp bes c4 d8(c)
    bes8 c d4 e8(d)
    c4. c8 f8 f
    f8 e f4(d)
    c8 c c(a) bes(c)
    d8 d d(f) e(d)
    c4. \< f8 a g \!
    f8 \> e f2 \!
    \cresc c8 a d(c)bes4
    d8 bes e(d) c4 \!
    \cresc e8 c f(e) d4
    f8 d g(f) e(d) \!
    c8-\mf c c(d) e4
    f4 d8-> c-> a4->
    f'8-\f g a4. g8
    f8(e) d-> c-> a4->
  }
}
  
tenmelody = \relative c {
  \repeat volta 2 {
    f8-\pp g a4 bes8(a)
    g8 a bes4 c8(bes)
    a8 a g4 f
    c'8 bes a4.(bes8)
    c8 bes a4 d
    bes8 a g4 c
    a8 \< g f4 d' \!
    c8 \> bes a4 \! \cresc c8 bes
    a8 (g) f4 d'8 c
    bes8(a) g4 e'8 d \!
    \cresc c8 (bes) a4 f'8 e
    d8(c) bes4 c8 bes \!
    a8-\mf f a4. g8
    f4 bes8-> a-> f4->
    r4 c'8-\f d e e
    d8(c) bes-> a-> f4->
  }
}

bassmelody = \relative c {
  \repeat volta 2 {
    f8-\pp f f4 f
    f8 f f4 f
    f4. e8 d d
    c8 c f4.(g8)
    a8 g f(c') bes(a)
    g8 f e(d)c4
    f8 \< f a,4 bes \!
    c8 \> c f2 \!
    r4 \cresc bes,4. a8
    g8 g c4. bes8 \!
    \cresc a8 a d4. c8
    bes8 bes e(d) c4 \!
    f8-\mf f a, bes c c
    d8 d d2
    r4 a8-\f bes c c
    f8 f f2
  }
}

%\book {
%  \paper {
%%    page-count = 2
%  }
%}
\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \sopmelody }
      >>
      \new Lyrics = soplyricsone { s1 }
      \new Lyrics = soplyricstwo { s1 }
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \altmelody }
      >>
      \new Lyrics = altlyricsone { s1 }
      \new Lyrics = altlyricstwo { s1 }
      \new Staff = tenmelody <<
        \clef "treble_8"
        \new Voice = "tenmelody" { \global \tenmelody }
      >>
      \new Lyrics = tenlyricsone { s1 }
      \new Lyrics = tenlyricstwo { s1 }
      \new Staff = bassmelody <<
        \clef bass
        \new Voice = "bassmelody" { \global \bassmelody }
      >>
      \new Lyrics = basslyricsone { s1 }
      \new Lyrics = basslyricstwo { s1 }
    >>
    \context Lyrics = soplyricsone  \lyricsto sopmelody  \sopwordsone
    \context Lyrics = soplyricstwo  \lyricsto sopmelody  \sopwordstwo
    \context Lyrics = altlyricsone  \lyricsto altmelody  \altwordsone
    \context Lyrics = altlyricstwo  \lyricsto altmelody  \altwordstwo
    \context Lyrics = tenlyricsone  \lyricsto tenmelody  \tenwordsone
    \context Lyrics = tenlyricstwo  \lyricsto tenmelody  \tenwordstwo
    \context Lyrics = basslyricsone \lyricsto bassmelody \basswordsone
    \context Lyrics = basslyricstwo \lyricsto bassmelody \basswordstwo
  >>
    
  \layout {
    page-count = 2
    \context {
    			% a little smaller so lyrics
       			% can be closer to the staff
      \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    }
  }
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
      \new Staff = tenmelody <<
        \clef "treble_8"
        \new Voice = "tenmelody" { \global \unfoldRepeats \tenmelody }
      >>
      \new Staff = bassmelody <<
        \clef bass
        \new Voice = "bassmelody" { \global \unfoldRepeats \bassmelody }
      >>
    >>
    
    \context Lyrics = soplyricsone  \lyricsto sopmelody  { \Msopwordsone \Msopwordstwo }
%    \context Lyrics = altlyricsone  \lyricsto altmelody  { \Maltwordsone \Maltwordstwo }
%    \context Lyrics = tenlyricsone  \lyricsto tenmelody  { \Mtenwordsone \Mtenwordstwo }
%    \context Lyrics = basslyricsone \lyricsto bassmelody { \Mbasswordsone \Mbasswordstwo }
  >>
  
  \midi { }
}\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
      \new Staff = tenmelody <<
        \clef "treble_8"
        \new Voice = "tenmelody" { \global \unfoldRepeats \tenmelody }
      >>
      \new Staff = bassmelody <<
        \clef bass
        \new Voice = "bassmelody" { \global \unfoldRepeats \bassmelody }
      >>
    >>
    
%    \context Lyrics = soplyricsone  \lyricsto sopmelody  { \Msopwordsone \Msopwordstwo }
    \context Lyrics = altlyricsone  \lyricsto altmelody  { \Maltwordsone \Maltwordstwo }
%    \context Lyrics = tenlyricsone  \lyricsto tenmelody  { \Mtenwordsone \Mtenwordstwo }
%    \context Lyrics = basslyricsone \lyricsto bassmelody { \Mbasswordsone \Mbasswordstwo }
  >>
  
  \midi { }
}\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
      \new Staff = tenmelody <<
        \clef "treble_8"
        \new Voice = "tenmelody" { \global \unfoldRepeats \tenmelody }
      >>
      \new Staff = bassmelody <<
        \clef bass
        \new Voice = "bassmelody" { \global \unfoldRepeats \bassmelody }
      >>
    >>
    
%    \context Lyrics = soplyricsone  \lyricsto sopmelody  { \Msopwordsone \Msopwordstwo }
%    \context Lyrics = altlyricsone  \lyricsto altmelody  { \Maltwordsone \Maltwordstwo }
    \context Lyrics = tenlyricsone  \lyricsto tenmelody  { \Mtenwordsone \Mtenwordstwo }
%    \context Lyrics = basslyricsone \lyricsto bassmelody { \Mbasswordsone \Mbasswordstwo }
  >>
  
  \midi { }
}\score {
  <<
    \new ChoirStaff <<
      \new Staff = sopmelody <<
        \new Voice = "sopmelody" { \global \unfoldRepeats \sopmelody }
      >>
      \new Staff = altmelody <<
        \new Voice = "altmelody" { \global \unfoldRepeats \altmelody }
      >>
      \new Staff = tenmelody <<
        \clef "treble_8"
        \new Voice = "tenmelody" { \global \unfoldRepeats \tenmelody }
      >>
      \new Staff = bassmelody <<
        \clef bass
        \new Voice = "bassmelody" { \global \unfoldRepeats \bassmelody }
      >>
    >>
    
%    \context Lyrics = soplyricsone  \lyricsto sopmelody  { \Msopwordsone \Msopwordstwo }
%    \context Lyrics = altlyricsone  \lyricsto altmelody  { \Maltwordsone \Maltwordstwo }
%    \context Lyrics = tenlyricsone  \lyricsto tenmelody  { \Mtenwordsone \Mtenwordstwo }
    \context Lyrics = basslyricsone \lyricsto bassmelody { \Mbasswordsone \Mbasswordstwo }
  >>
  
  \midi { }
}