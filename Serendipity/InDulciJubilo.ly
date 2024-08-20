\version "2.25.18"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In Dulci Jubilo"
  subtitle    = "An ancient Christmas carol"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. L. Pearsall"
  arranger    = "Arr. W. J. Westbrook"
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
  \time 3/2
  \partial 2
}

TempoTrack = {
  \tempo Moderato 1.=80
  \set Score.tempoHideNote = ##t
  s2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup\box "2a" s2 s1.*6
    \textMark \markup\box "3a"    s1.*8
    \textMark \markup\box "3b"    s1.*8
    \textMark \markup\box "4a"    s1.*8 s1
  }
  \textMark \markup\box "4b" s2 s1.*7
  \textMark \markup\box "5a"    s1.*6
  \textMark \markup\box "5b"    s1.*7
  \textMark \markup\box "5c"    s1.*6
  \textMark \markup\box "6a"    s1.*6
  \textMark \markup\box "6b"    s1.*7
  \textMark \markup\box "6c"    s1.*7
  \textMark \markup\box "7a"    s1.*7
  \textMark \markup\box "7b"    s1.*7
  \textMark \markup\box "7c"    s1.*7
  \textMark \markup\box "8a"    s1.*7
  \textMark \markup\box "8b"    s1.*7
  \textMark \markup\box "8c"    s1.*6 s1
}

soprano = \relative {
  \global
  \repeat volta 2 {
    \section \break
    f'2 | f1 2 | a1 bes2 | c1(d2 | c1) 2 | f,1 2 | a1 bes2
    c1(d2 | c1.\fermata) | c1 d2 | c1 bes2 | a1.( | f1) 2 | g1 2 | a1 g2 % 2a
    f1(g2 | a1) 2 | c1 d2 | c1 bes2 | a1. | f1 2 | g1 2 | a1 g2
    f1(g2 | a1.) | d,1 2 | e1 2 | f1.( | c'1.) | a1 bes2 | g1 2 | f1\fermata % 4a
  }
  \section \break r2^\markup\smallCaps Solo | R1. | r2 r2 d' | c1 bes2 | a1 g2 | a1. | r2 r2 d | c1 bes2
  a2.(g4) f2 | g2.(a4 f2 | g1) r2 | r2 r2 c | a1.( | bes2. a4) bes2 % 5a
  e,2 a a | a1 g2 | f1 d'2 | f,2.(a4 f2 | g1) r2 | r2 r2 c | a1.
  bes2. a4 bes2 | e,2 a a | a1 g2 | f1 e2 | d1 r2 | r2 a'^\markup\smallCaps Chorus a
  a2.(g4) f2 | c'1. | c1 d2 | c1 bes2 | a1 r2 | r2 r2 f' % 6
  f2.(e4) d2 | c2. bes4 a2 | g1(e2 | f1) f'2~ | f2. e4 d2 | c1 a2 | g1\fermata r2
  c1^\markup\smallCaps Solo d2 | c1 bes2 | a1. | f1. | g1 2 | a1 g2 | f1(g2
  a1) bes2~( | bes2. a4) g2 | c1.~ | c1 2 | f1.~ | f2. e4 d2 | c1 bes2 % 7
  a1. | g1. | f2 d^\markup\smallCaps Chorus d | e1 2 | f1. | c'1.( | a1) 2
  g1 2 | f1.( | e1.) | f1 f'2 | f2.(e4 d2 | c1) bes2 | a1 e2
  f1 f'2 |  f2.(e4 d2 | c1) bes2 | a1( e2 | f1 bes2) | a1 d2 | d1(c2) % 8
  a1. | bes1.( | a1) 2 | g1. | c1.( | bes1) a2 | g1 2
  a1.~ | a1. | g1 g2 | a1 g2 | f1.~ ( | f1 g2 | f1\fermata )
  \bar "|."
}

dynamicsSop = {
  \repeat volta 2 {
    s2\p | s1.*2 | s1.\< | s1\! s2\dim | s1.*2
    s1.\< | s1.\! | s1.\p | s1.*5 % 3
    s1. | s1 s2\cresc | s1. | s1.\> | s1.\dim | s1.*3
    s1.\< | s1.\! | s1. | s1. | s1.\< | s1.\! | s1.\dim | s1. | s1\omit\p % 4
  }
  s2 | s1.*7
  s1.*6 | % 5
  s1.*7
  s1.*5 | s2 s1\mf
  s1.*5 s1 s2\f % 6
  s1.*7
  s1.\p | s1.*6
  s1.*7 % 7
  s1.*2 | s2 s1\f | s1.*4
  s1.*7
  s1.*7 % 8
  s1. | s1.\dim | s1. | s1. | s1.\f | s1.*2
  s1. | s1. | s1 s2\dim | s1.*2 | s1\omit\ppp
}

wordsSopOne = \lyricmode {
  \set stanza = "1."
  In dul -- ci ju -- bi -- lo __
  Let us our hom -- age show! __
  Our heart’s joy re -- cli -- neth
  In præ -- se -- pi -- o! __
  And like a bright star shi -- neth
  Ma -- tris in gre -- mi -- o! __
  Al -- pha es et O! __
  Al -- pha es et O!
}

wordsSopTwo = \lyricmode {
  \set stanza = "2."
  O Je -- su par -- vu -- le! __
  My heart is sore for Thee! __
  Hear me, I be -- seech __ Thee,
  O puer op -- ti -- me! __
  My pray -- er, let it reach Thee,
  O prin -- ceps glo -- ri -- a! __
  Tra -- he me post te! __
  Tra -- he me post te!
}

wordsSopThree = \lyricmode {
  \set stanza = "3."
  O pa -- tris cha -- ri -- tas!
  O na -- ti -- le -- ni -- tas, __
  Deep were we stain -- ed,
  Per nos -- tra cri -- mi -- na, __
  But Thou hast for us gain -- ed
  Cœ -- lo -- rum gau -- di -- a.
  O that we __ were there,
  O that we were there!

  \set stanza = "4."
  U -- bi -- sunt gau -- di -- a,
  where, if __ that they be not there?
  There are an -- gels sing -- ing
  No -- va can -- ti -- ca; __
  There __ the  bells __ are ring -- ing,
  In Re -- gis cu -- ri -- a,
  O that we were there,
  O __ that we were there! __
  There are an -- gels sing -- ing,
  There are bells __ are ring -- ing,
  In Re -- gis cu -- ri -- a.
  O __ that we were there, __
  O that we were there! __
}

wordsSopMidi = \lyricmode {
  "In " dul "ci " ju bi "lo " 
  "\nLet " "us " "our " hom "age " "show! " 
  "\nOur " "heart’s " "joy " re cli "neth "
  "\nIn " præ se pi "o! " 
  "\nAnd " "like " "a " "bright " "star " shi "neth "
  "\nMa" "tris " "in " gre mi "o! " 
  "\nAl" "pha " "es " "et " "O! " 
  "\nAl" "pha " "es " "et " "O! "

  "\nO " Je "su " par vu "le! " 
  "\nMy " "heart " "is " "sore " "for " "Thee! " 
  "\nHear " "me, " "I " be "seech "  "Thee, "
  "\nO " "puer " op ti "me! " 
  "\nMy " pray "er, " "let " "it " "reach " "Thee, "
  "\nO " prin "ceps " glo ri "a! " 
  "\nTra" "he " "me " "post " "te! " 
  "\nTra" "he " "me " "post " "te! "

  "\nO " pa "tris " cha ri "tas! "
  "\nO " na ti le ni "tas, " 
  "\nDeep " "were " "we " stain "ed, "
  "\nPer " nos "tra " cri mi "na, " 
  "\nBut " "Thou " "hast " "for " "us " gain "ed "
  "\nCœ" lo "rum " gau di "a. "
  "\nO " "that " "we "  "were " "there, "
  "\nO " "that " "we " "were " "there! "

  "\nU" bi "sunt " gau di "a, "
  "\nwhere, " "if "  "that " "they " "be " "not " "there? "
  "\nThere " "are " an "gels " sing "ing "
  "\nNo" "va " can ti "ca; " 
  "\nThere "  "the "  "bells "  "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a, "
  "\nO " "that " "we " "were " "there, "
  "\nO "  "that " "we " "were " "there! " 
  "\nThere " "are " an "gels " sing "ing, "
  "\nThere " "are " "bells "  "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a. "
  "\nO "  "that " "we " "were " "there, " 
  "\nO " "that " "we " "were " "there! " 
}

alto = \relative {
  \global
  \repeat volta 2 {
    \section \break
    c'2 | d1 c2 | f2.(e4) d2 | c1(f2 | e1) f2 | d1 c2 | f2.(e4) d2
    c1(f2 | e1.\fermata) | f1 2 | e1 g2 | c,1.( | f1) 2 | f1 2 | f1 e2 % 3a
    f1.( | f1) 2 | f1 2 | e1 g2 | c,1. | f1 2 | f1 2 | f1 e2
    f1. ~ | f1. | d1 2 | d1 cis2 | d1.( | e1.) | f1 2 | f1 e2 | f1\fermata % 4
  }
  \section
  r2 | R1. | r2 r2 bes | a2.(g4) f2 | f1 e2 | f1. | r2 r2 bes | a2.(g4) f2
  f2.(e4) d2 | e2 r f~( | f2. e4) d2 | c1.( | f1) e2 | d1.~ % 5
  d2 cis cis | d1 e2 | f1 2 | e2 r f | f2.(e4 d2 | c1.) | f1 e2
  d1.~ | d2 cis cis | d1 e2 | d1 cis2 | d2 2 2 | e1 2
  d1 f2 | e1. | a1 bes2 | g1 2 | f1 2 | f1 2 % 6
  a1 bes2 | c1(d2 | c1.) | f,1 2 | a1(bes2) | c1 d2 | c1\fermata r2
  a2.^\markup\smallCaps Solo. (g4) f2 | e1 c2 | f1. | f1. | d1.(e1.) | f2.(e4) d2
  c1(f2) | c'1 d2 | c1 bes2 | a1. | f1 2 | g1 2 | a1 g2 % 7
  f1. | R1. | d1.^\markup\smallCaps Chorus. ~ | d1 cis2 | d1 a'2 | e1 2 | f1.~
  f1 e2 | f1 r2 | c1.~( | c1.~ | c2 f) g | a2.(g4) f2 | f1 g2
  c,1.(~ | c2 f) g | a2.(g4) f2 | f1(g2 | c,1 f2) | a1 g2 | a1. % 8
  a1(f2) | g1.( | f1) 2 | e1. | e1.( | d1) f2 | f1 e2
  f1. | f1.~ | f1 2 | f1 e2 | f1.~ | f1.~ | f1\fermata
  \bar "|."
}

dynamicsAlto = {
  \repeat volta 2 {
    s2\p | s1. | s1. | s1.\< | s1\! s2\dim | s1. | s1.
    s1.\< | s1.\! | s1.\p | s1.*5 % 3
    s1. | s1 s2\cresc | s1. | s1.\> | s1.\dim | s1.*3
    s1.\< | s1.\! | s1. | s1. | s1.\< | s1.\! | s1.\dim | s1. | s1\omit\p % 4
  }
  s2 | s1.*7
  s1.*6 % 5
  s1.*7
  s1.*4 | s2 s1\mf | s1.
  s1.*4 | s1 s2\f | s1. % 6
  s1.*7
  s1.\p | s1.*6
  s1.*7 % 7
  s1. | s1. | s1.\f | s1.*4
  s1.*7
  s1.*7 % 8
  s1. | s1.\dim | s1. | s1. | s1.\f | s1. | s1.
  s1. | s1. | s1 s2\dim | s1. | s1. | s1. | s1\omit\ppp
}

wordsAltoOne = \lyricmode {
  \set stanza = "1."
  In dul -- ci ju -- bi -- lo __
  Let us our hom -- age show! __
  Our heart’s joy re -- cli -- neth
  In præ -- se -- pi -- o! __
  And like a bright star shi -- neth
  Ma -- tris in gre -- mi -- o! __
  Al -- pha es et O! __
  Al -- pha es et O!
}

wordsAltoTwo = \lyricmode {
  \set stanza = "2."
  O Je -- su par -- vu -- le! __
  My heart is sore for Thee! __
  Hear me, I be -- seech __ Thee,
  O puer op -- ti -- me! __
  My pray -- er, let it reach Thee,
  O prin -- ceps glo -- ri -- a! __
  Tra -- he me post te! __
  Tra -- he me post te!
}

wordsAltoThree = \lyricmode {
  \set stanza = "3."
  O pa -- tris cha -- ri -- tas!
  O na -- ti -- le -- ni -- tas, __
  Deep -- ly were we stain -- ed,
  Per nos -- tra cri -- mi -- na, __
  But Thou, __ Thou hast gain -- ed
  Cœ -- lo -- rum gau -- di -- a.
  O that we, that we were there,
  O that we were there!

  \set stanza = "4."
  U -- bi -- sunt gau -- di -- a,
  If __ that they be not there?
  There are an -- gels sing -- ing
  There, __ there the  bells, __
  there the bells are ring -- ing,
  In Re -- gis cu -- ri -- a,
  O __ that we were there,
  that we were there! __
  There the an -- gels sing -- ing,
  There __ the bells __ are ring -- ing,
  In Re -- gis cu -- ri -- a.
  O __ that we were there, __
  O that we were there! __
}

wordsAltoMidi = \lyricmode {
  "In " dul "ci " ju bi "lo " 
  "\nLet " "us " "our " hom "age " "show! " 
  "\nOur " "heart’s " "joy " re cli "neth "
  "\nIn " præ se pi "o! " 
  "\nAnd " "like " "a " "bright " "star " shi "neth "
  "\nMa" "tris " "in " gre mi "o! " 
  "\nAl" "pha " "es " "et " "O! " 
  "\nAl" "pha " "es " "et " "O! "

  "\nO " Je "su " par vu "le! " 
  "\nMy " "heart " "is " "sore " "for " "Thee! " 
  "\nHear " "me, " "I " be "seech "  "Thee, "
  "\nO " "puer " op ti "me! " 
  "\nMy " pray "er, " "let " "it " "reach " "Thee, "
  "\nO " prin "ceps " glo ri "a! " 
  "\nTra" "he " "me " "post " "te! " 
  "\nTra" "he " "me " "post " "te! "

  "\nO " pa "tris " cha ri "tas! "
  "\nO " na ti le ni "tas, " 
  "\nDeep" "ly " "were " "we " stain "ed, "
  "\nPer " nos "tra " cri mi "na, " 
  "\nBut " "Thou, "  "Thou " "hast " gain "ed "
  "\nCœ" lo "rum " gau di "a. "
  "\nO " "that " "we, " "that " "we " "were " "there, "
  "\nO " "that " "we " "were " "there! "

  "\nU" bi "sunt " gau di "a, "
  "\nIf "  "that " "they " "be " "not " "there? "
  "\nThere " "are " an "gels " sing "ing "
  "\nThere, "  "there " "the "  "bells, " 
  "\nthere " "the " "bells " "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a, "
  "\nO "  "that " "we " "were " "there, "
  "\nthat " "we " "were " "there! " 
  "\nThere " "the " an "gels " sing "ing, "
  "\nThere "  "the " "bells "  "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a. "
  "\nO "  "that " "we " "were " "there, " 
  "\nO " "that " "we " "were " "there! " 
}

tenor = \relative {
  \global
  \repeat volta 2 {
    \section \break
    a2 | bes1 a2 | c1 d2 | a1(bes2 | g1) a2 | bes1 a2 | c1 d2
    a1(bes2 | g1.\fermata) | c1 bes2 | g1 e2 | f1.( | a1) 2 | d1 2 | c2.(d4) bes2 % 3
    a1(bes2 | c1) d2 | c1 bes2 | g1 e2 | f1. | a1 2 | d1 2 | c2.(d4) bes2
    a1(bes2 | c1.) | a1 2 | g1 2 | a1(bes2 | g1.) | f1 bes2 | d1 c2 | a1\fermata % 4
  }
  \section
  f2^\markup\smallCaps Solo. | f1 2 | a1 bes2 | c1(d2 | c1) 2 | f,1 2 | a1 bes2 | c1(d2
  c1.) | c1 d2 | c1 bes2 | a1. | f1 2 | g1 2 % 5
  a1 g2 | f1(g2 | a1) bes2 | c1 d2 | c1 bes2 | a1. | f1 2
  g1 2 | a1 g2 | f1(g2 | a1.) | a1^\markup\smallCaps Chorus. d2 | d1 cis2
  d1 bes2 | g1. | f1 f'2 | e1 2 | f1 r2 | r2 r2 d % 6
  c1 bes2 | a2. g4 f2 | c'1. | a1 d2 | c1(bes2) | a1 d2 | e1\fermata r2
  f2.^\markup\smallCaps Solo. (e4) d2 | g1 2 | c,1. | d1 f2~( | f2. e4) d2 | c1 bes2 | a1(bes2
  c1) d2 | g,2.(a4 bes2 | c1) e,2 | f1. | a1. | bes1. | f'1 e2 % 7
  f1. | cis1. | d1. | a1^\markup\smallCaps Chorus. 2 | a1 f2 | g1. | f1 d'2
  bes1 c2 | a1(b2 | g1.)
  f1 2 | a1 bes2 | c1(d2) | c1 r2
  f,1 2 | a1 bes2 | c1(d2) | c1 bes2 | a1 f'2 | f2. e4 d2 | e1.(
  f1. | d1) e2 | c1 d2 | g,1. | R1. | f1 d'2 | g,1 c2
  c1. | d1.~ | d1 2 | c1 bes2 | a1.~( | a1 bes2 | c1\fermata)
  \bar "|."
}

dynamicsTenor = {
  \repeat volta 2 {
    s2\p | s1. | s1. | s1.\< | s1\! s2\dim | s1. | s1.
    s1.\< | s1.\! | s1.\p | s1.*5 % 3
    s1. | s1 s2\cresc | s1. | s1.\> | s1.\dim | s1.*3
    s1.\< | s1.\! | s1. | s1. | s1.\< | s1.\! | s1.\dim | s1. | s1\omit\p % 4
  }
  s2 | s1.*7
  s1.*6 | % 5
  s1.*7
  s1.*4 | s1.\mf | s1.
  s1.*5 s1 s2\f % 6
  s1.*7
  s1.\p | s1.*6
  s1.*7 % 7
  s1.*3 | s1.\f | s1.*3
  s1.*7
  s1.*7 % 8
  s1.*5 | s1.\f | s1.
  s1. | s1. | s1 s2\dim | s1.*2 | s1\omit\ppp
}

wordsTenorOne = \lyricmode {
  \set stanza = "1."
  In dul -- ci ju -- bi -- lo __
  Let us our hom -- age show! __
  Our heart’s joy re -- cli -- neth
  In præ -- se -- pi -- o! __
  And like a bright star shi -- neth
  Ma -- tris in gre -- mi -- o! __
  Al -- pha es et O! __
  Al -- pha es et O!
}

wordsTenorTwo = \lyricmode {
  \set stanza = "2."
  O Je -- su par -- vu -- le! __
  My heart is sore for Thee! __
  Hear me, I be -- seech __ Thee,
  O puer op -- ti -- me! __
  My pray -- er, let it reach Thee,
  O prin -- ceps glo -- ri -- a! __
  Tra -- he me post te! __
  Tra -- he me post te!
}

wordsTenorThree = \lyricmode {
  \set stanza = "3."
  O pa -- tris cha -- ri -- tas!
  O na -- ti -- le -- ni -- tas, __
  Deep -- ly were we stain -- ed,
  Per nos -- tra cri -- mi -- na, __
  But Thou hast for us gain -- ed
  Cœ -- lo -- rum gau -- di -- a.
  O that we, that we were there,
  O that we were there!

  \set stanza = "4."
  U -- bi sunt gau -- di -- a, where,
  If that they be not there?
  There are an -- gels sing -- ing
  There __ are sing -- ing can -- ti -- ca, __
  The bells are ring -- ing,
  In cu -- ri -- a.
  O that we were there,
  O that we were there! __
  There are an -- gels sing -- ing,
  There the bells __ are ring -- ing,
  the bells __ are ring -- ing,
  In Re -- gis cu -- ri -- a.
  O __ that we were there, __
  O that we were there! __
}

wordsTenorMidi = \lyricmode {
  "In " dul "ci " ju bi "lo " 
  "\nLet " "us " "our " hom "age " "show! " 
  "\nOur " "heart’s " "joy " re cli "neth "
  "\nIn " præ se pi "o! " 
  "\nAnd " "like " "a " "bright " "star " shi "neth "
  "\nMa" "tris " "in " gre mi "o! " 
  "\nAl" "pha " "es " "et " "O! " 
  "\nAl" "pha " "es " "et " "O! "

  "\nO " Je "su " par vu "le! " 
  "\nMy " "heart " "is " "sore " "for " "Thee! " 
  "\nHear " "me, " "I " be "seech "  "Thee, "
  "\nO " "puer " op ti "me! " 
  "\nMy " pray "er, " "let " "it " "reach " "Thee, "
  "\nO " prin "ceps " glo ri "a! " 
  "\nTra" "he " "me " "post " "te! " 
  "\nTra" "he " "me " "post " "te! "

  "\nO " pa "tris " cha ri "tas! "
  "\nO " na ti le ni "tas, " 
  "\nDeep" "ly " "were " "we " stain "ed, "
  "\nPer " nos "tra " cri mi "na, " 
  "\nBut " "Thou " "hast " "for " "us " gain "ed "
  "\nCœ" lo "rum " gau di "a. "
  "\nO " "that " "we, " "that " "we " "were " "there, "
  "\nO " "that " "we " "were " "there! "

  "\nU" "bi " "sunt " gau di "a, " "where, "
  "\nIf " "that " "they " "be " "not " "there? "
  "\nThere " "are " an "gels " sing "ing "
  "\nThere "  "are " sing "ing " can ti "ca, " 
  "\nThe " "bells " "are " ring "ing, "
  "\nIn " cu ri "a. "
  "\nO " "that " "we " "were " "there, "
  "\nO " "that " "we " "were " "there! " 
  "\nThere " "are " an "gels " sing "ing, "
  "\nThere " "the " "bells "  "are " ring "ing, "
  "\nthe " "bells "  "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a. "
  "\nO "  "that " "we " "were " "there, " 
  "\nO " "that " "we " "were " "there! " 
}

bass = \relative {
  \global
  \repeat volta 2 {
    \section \break
    f2 | f1 2 | f1 2 | f1.~ | f1 2 | f1 2 | f1 2
    f1.( | c1.\fermata) | a1 bes2 | c1 2 | f1.( | d1) 2 | bes1 2 | c1 2 % 3
    f1.~ | f1 d2 | a1 bes2 | c1 2 | f1. | d1 2 | bes1 2 | c1 2
    f1.~ | f1. | f1 2 | e1 2 | d1.( | c1.) | f1 d2 | bes1 c2 | f,1\fermata % 4
  }
  \section
  r2 | R1.*7
  R1.*6 % 5
  R1.*7
  R1.*4 | << {\vt d'1 2 | a1 a'2} \new Voice {\vo \tiny f1 a2 | a1 \normalsize 2} >>
  << {\vt f2.(e4) d2 | c1. | f1 bes,2 | c1 2 | f1}
     \new Voice {\vo \tiny a1 bes2 | c1. | c1 bes2 | bes2.(g4) g2 | a1}
  >> \ov r2 | r2 r2 bes, % 6
  f'1.~ | f1 2 | e1 c2 | d2. c4 bes2 | f'1. | f1 2 | c1\fermata r2
  R1. | R1. | f1.^\markup\smallCaps Solo. | d1. | bes1. | c1. | f1.~
  f2. e4 d2 | c1 bes2 | a1 g2 | f1. | d'1. | bes1. | c1. % 7
  f1. | e1. | d1. | R1. | d1^\markup\smallCaps Chorus. 2 | c1 2 | f1.
  R1. | d1 2 | c1 bes2 | a1. | f1. | f1 2 | c'1 bes2
  a1. | f1 f'2 | f1 2 | f1.~ | f2. e4 d2 | c1 bes2 | a1.( % 8
  d1. | g,1. | a1) bes2 | c1. | a1.( | bes1) 2 | c1 2
  f1.( | d1.) | bes1 2 | c1 2 | f,1.~ | f1.~ | f1\fermata
  \bar "|."
}

dynamicsBass = {
  \repeat volta 2 {
    s2\p | s1. | s1. | s1.\< | s1\! s2\dim | s1. | s1.
    s1.\< | s1.\! | s1.\p | s1.*5 % 3
    s1. | s1 s2\cresc | s1. | s1.\> | s1.\dim | s1.*3
    s1.\< | s1.\! | s1. | s1. | s1.\< | s1.\! | s1.\dim | s1. | s1\omit\p % 4
  }
  s2 | s1.*7
  s1.*6 | % 5
  s1.*7
  s1.*4 | s1.\mf | s1.
  s1.*5 s1 s2\f % 6
  s1.*7
  s1. | s1. | s1.\p | s1.*4
  s1.*7 % 7
  s1.*4 | s1.\f | s1.*2
  s1.*7
  s1.*7 % 8
  s1.*4 | s1.\f | s1.*2
  s1. | s1. | s1 s2\dim | s1.*2 | s1\omit\ppp
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  In dul -- ci ju -- bi -- lo __
  Let us our hom -- age show! __
  Our heart’s joy re -- cli -- neth
  In præ -- se -- pi -- o! __
  And like a bright star shi -- neth
  Ma -- tris in gre -- mi -- o! __
  Al -- pha es et O! __
  Al -- pha es et O!
}

wordsBassTwo = \lyricmode {
  \set stanza = "2."
  O Je -- su par -- vu -- le! __
  My heart is sore for Thee! __
  Hear me, I be -- seech __ Thee,
  O puer op -- ti -- me! __
  My pray -- er, let it reach Thee,
  O prin -- ceps glo -- ri -- a! __
  Tra -- he me post te! __
  Tra -- he me post te!
}

wordsBassThree = \lyricmode {
%  \set stanza = "3."
  O that we, that we were there,
  O that we were there!

  \set stanza = "4."
  U -- bi, __ u -- bi sunt gau -- di -- a, where,
  If not there?
  There are an -- gels sing -- ing
  The bells are ring -- ing there,
  In Re -- gis cu -- ri -- a.
  O that we were there,
  There are an -- gels sing -- ing,
  There the bells __ are ring -- ing,
  the bells __ are ring -- ing,
  In Re -- gis cu -- ri -- a.
  O __ that we were there, __
  O that we were there! __
}

wordsBassMidi = \lyricmode {
  "In " dul "ci " ju bi "lo " 
  "\nLet " "us " "our " hom "age " "show! " 
  "\nOur " "heart’s " "joy " re cli "neth "
  "\nIn " præ se pi "o! " 
  "\nAnd " "like " "a " "bright " "star " shi "neth "
  "\nMa" "tris " "in " gre mi "o! " 
  "\nAl" "pha " "es " "et " "O! " 
  "\nAl" "pha " "es " "et " "O! "

  "\nO " Je "su " par vu "le! " 
  "\nMy " "heart " "is " "sore " "for " "Thee! " 
  "\nHear " "me, " "I " be "seech "  "Thee, "
  "\nO " "puer " op ti "me! " 
  "\nMy " pray "er, " "let " "it " "reach " "Thee, "
  "\nO " prin "ceps " glo ri "a! " 
  "\nTra" "he " "m " "post " "te! " 
  "\nTra" "he " "me " "post " "te! "

  "\nO " "that " "we, " "that " "we " "were " "there, "
  "\nO " "that " "we " "were " "there! "

  "\nU" "bi, "  u "bi " "sunt " gau di "a, " "where, "
  "\nIf " "not " "there? "
  "\nThere " "are " an "gels " sing "ing "
  "\nThe " "bells " "are " ring "ing " "there, "
  "\nIn " Re "gis " cu ri "a. "
  "\nO " "that " "we " "were " "there, "
  "\nThere " "are " an "gels " sing "ing, "
  "\nThere " "the " "bells "  "are " ring "ing, "
  "\nthe " "bells "  "are " ring "ing, "
  "\nIn " Re "gis " cu ri "a. "
  "\nO "  "that " "we " "were " "there, " 
  "\nO " "that " "we " "were " "there! " 
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2\p
    s1.*14
    s1.\< | s1.\cresc | s1. | s1.\> | s1.\dim | s1.*3 % 3b
    s1.\< | s1.\! | s1.*2 | s1.\< | s1.\! | s1.*2 | s1 % 4
  }
  s2 s1.*7
  s1.*6 % 5
  s1.*7
  s1.*4 | s1.\mf | s1.
  s1.*4 | s1 s2\f | s1. % 6
  s1.*7
  s1.\p | s1.*6
  s1.*7 % 7a
  s1.*7
  s1.*7
  s1.*7 % 8a
  s1. | s1.\dim | s1. | s1. | s1.\f | s1. | s1.
  s1. | s1. | s1 s2\dim | s1.*3 | s1\omit\p
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat-noacc
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop 
            \new Voice \soprano
            \addlyrics {\wordsSopOne \wordsSopThree}
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\wordsAltoOne \wordsAltoThree}
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \wordsTenorThree}
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\wordsBassOne \wordsBassThree}
            \addlyrics \wordsBassTwo
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat-acconly
  }
  \score {
    <<
      <<
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
    output-suffix = single-noacc
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\wordsBassOne \wordsBassTwo \wordsBassThree}
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

#(set-global-staff-size 19)

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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\wordsBassOne \wordsBassTwo \wordsBassThree}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBassOne \wordsBassTwo \wordsBassThree}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBassOne \wordsBassTwo \wordsBassThree}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBassOne \wordsBassTwo \wordsBassThree}
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\wordsBassOne \wordsBassTwo \wordsBassThree}
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bass
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
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bass
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
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bass
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
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bass
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
