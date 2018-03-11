\version "2.18.2"
%\include "../include/merge-rests.ly"

#(set-global-staff-size 19)

\header {
  title    = "What a Friend We Have in Jesus"
  poet     = "Joseph M. Scriven"
  composer = "Charles Crozat Converse"
}

\layout {
  ragged-last-bottom = ##f
}

global = {
  \key f \major
  \time 4/4
}

sop = \relative c'' {
  \global
  \voiceOne
  \repeat volta 3 {
    c4. c8 d c a f
    f2 d
    c4. f8 a f c' a
    g1
    c4. c8 d c a f
    f2 d
    c4. f8 a g f e
    f1
    g4. fis8 g a bes g
    a2 c
    d4. d8 c a bes a
    g1
    c4. c8 d c a f
    f2 d
    c4. f8 a g f e
    f1
  }
  f1
  f1
  \bar"|."
}

alt = \relative c' {
  \global
  \voiceTwo
  \repeat volta 3 {
    f4. f8 f f f c
    d2 bes
    c4. c8 c c f f
    e1f4. f8 f f f c
    d2 bes
    c4. c8 f c c c
    c1
    e4. dis8 e f g e
    f2 f
    f4.f8 f f g f
    e1
    f4. f8 f f f f
    d2 bes
    a4. c8 f c c c
    c1
  }
  d1
  c1
  \bar"|."
}

ten = \relative c' {
  \global
  \voiceOne
  \repeat volta 3{
    a4. a8 bes a c a
    bes2 f
    a4. a8 a a a c
    c1
    a4. a8 bes a c a
    bes2 f
    f4. a8 c bes a g
    a1
    c4. c8 c c c c
    c2 a
    bes4. bes8 c c c c
    c1
    a4. a8bes a c a
    bes2 f
    f4. a8 c bes a g
    a1
  }
  bes1
  a1
  \bar"|."
}

bas = \relative c {
  \global
  \voiceTwo
  \repeat volta 3 {
    f4. f8 f f f f
    bes,2 bes
    f'4. f8 f f f f
    c1
    f4. f8 f f f f % 5
    bes,2 bes
    c4. c8 c c c c
    f1
    c4. c8 c c c c
    f2 f
    bes4. bes8 a f e f
    c1
    f4. f8 f f f f
    bes,2 bes
    c4. c8 c c c c
    f1
  }
  bes,1
  f'1
  \bar"|."
}

trebleaccOne = \relative c' {
  \global
  \bar"|."
}

trebleaccTwo = \relative c' {
  \global
  \bar"|."
}

bassaccOne = \relative c' {
  \global
  \bar"|."
}

bassaccTwo = \relative c {
  \global
  \bar"|."
}

textOne = \lyricmode {
  \set stanza = "1."
  What a friend we have in Je- sus,
  all our sins and griefs to bear!
  What a priv- i- lege to car- ry
  e- very thing to God in prayer!
  Oh what peace we of- ten for- feit!
  Oh what need- less pain we bear!
  All be- cause we do not car- ry
  e- very thing to God in prayer.
}

textTwo = \lyricmode {
  \set stanza = "2."
  Have we tri- als and temp- tat- ions?
  Is there troub- le an- y- where?
  We should nev- er be dis- cour- aged;
  take it to the Lord in prayer!
  Can we find a friend so faith- ful
  who will all our sor- rows share?
  Je- sus kows our e- very weak- ness;
  take it to the Lord in prayer!
}

textThree = \lyricmode {
  \set stanza = "3."
  Are we weak and heav- y lad- en,
  cum- bered with a load of care?
  Prec- ious Sav- iour, still our ref- uge;
  take it to the Lord in prayer!
  Do thy friends des- pise, for- sake thee?
  Take it to the Lord in prayer!
  In His arms He'll take and shield Thee,
  thou wilt find a sol- ace there.
  A- men
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop \textOne
      \new Lyrics \lyricsto sop \textTwo
      \new Lyrics \lyricsto sop \textThree
      \new Staff = men <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}
