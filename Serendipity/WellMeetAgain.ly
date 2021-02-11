\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We'll Meet Again"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ross Parker & Hughie Charles"
  arranger    = "Arr. Andy Bleu Skies & Leenders Jongenelen"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" }
  s2 s2
}

ChordTrack = \chordmode {
}

soprano = \relative c'' {
  \global
  fis8 g
  fis4 e e d % 1
  d b fis fis
  d1~
  d2. r4
  \repeat volta 2 {
    a'2 aes4 a % 5
    bes2 a4 bes
    b2 bes4 b
    g'2. fis8 g
    fis4 e e d
    d4 cis cis d % 10
    e1~
    e1
    a,2 aes4 a
    bes2 a4 bes
    b2 bes4 b % 15
    g'2. fis8 g
    fis4 e e d
    d4 b fis' fis
    d1
    r4 d e f % 20
    fis8 e fis e~e4 d8 e
    fis8 e fis e~e4 d8 a
    d8 e fis e~e2
    r2. e8 fis
    aes8 fis aes fis~fis4 e8 fis
    aes8 fis aes fis~fis4 e8 e
    a2 g4 fis
    e2 r
    a,2 aes4 a
    bes2 a4 bes
    b2 bes4 b
    g'2. fis8 g
    fis4 e e d
    d4 b fis' fis
  }
  \alternative {
    {
      d1
    }
    {
      d1~
      d1
    }
  }
%  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

wordsSop = \lyricmode {
  But I know we'll meet a- gain some sun- ny day. __
  We'll meet a- gain don't know where don't know when
  But I know we'll meet a- gain some sun- ny day
  Keep smi- ling through, just like you al- ways do,
  Till the blue skies drive the dark clouds far a- way.
  So will you please say hel- lo __ to the folks that I know __
  Tell them I won't be long __
  They'll be hap- py to know that as you saw me go, __
  I was sing- ing this song.
  We'll meet a- gain don't know where don't know when
  But I know we'll meet a- gain some sun- ny day.
  day!
}

alto = \relative c' {
  \global
  r4
  b1
  b2 bes4 a
  b2 a~
  a2. r4
  \repeat volta 2 {
    fis2 bes4 b % 5
    cis2 ees4 e
    ees2 d4 ees
    e2(ees)
    d4 cis cis b
    b4 cis2 b4 % 10
    b2 b4(d
    cis2 cis)
    fis,2 bes4 b
    cis2 ees4 e
    ees2 d4 ees % 15
    bes'2(a)
    aes1
    e4 a2.
    fis2 bes4 g(
    fis4) fis g g % 20
    a2 fis
    a4 a fis fis
    fis4 d b b
    b2(cis4) ees
    d2 d
    cis4 cis cis cis
    e4 e b bes
    g'1
    fis,2 bes4 b
    cis2 ees4 e
    ees2 d4 ees
    e2(ees)
    d4 cis2 b4
    b4 g cis cis
  }
  \alternative {
    {
      a'1
    }
    {
      r4 e fis g
      a1
    }
  }
%  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

wordsAlto = \lyricmode {
  a- gain some sun- ny day. __
  We'll meet a- gain don't know where don't know when
  know we'll meet a- gain some sun- ny day
  Keep smi- ling through __ just like you al- ways do, __
  drive the dark __ clouds a- way, __
  So will you say hello to the folks
  Tell them I won't be long __
  be hap -py to know that I was sing- ing this song,
  We'll meet a- gain don't know where don't know when
  we'll meet a- gain some sun- ny day.
  some sun- ny day!
}

tenor = \relative c' {
  \global
  r4
  aes1
  g2 f4 e
  fis2 e(
  fis2.) r4
  \repeat volta 2 {
    d2 d4 d % 5
    fis2 a4 fis
    fis2 f4 fis
    c'2(b)
    aes1
    aes1 % 10
    g2 g
    g2 a
    d,2 d4 d
    fis2 a4 fis
    fis2 f4 fis % 15
    e'2(ees)
    b1
    cis4(a) cis2
    b2 c
    b4 r r2 % 20
    c4 c c c
    c2 c
    b4 b g g(
    g4 g bes) a8 c
    b4 b aes aes
    g2 aes
    cis2 b4 bes
    b2(a)
    d,2 d4 d
    fis2 a4 fis
    fis2 f4 fis
    c'2(b)
    aes2 aes
    g2 a
  }
  \alternative {
    {
      fis'1
    }
    {
      r4 cis4 d e
      fis1
    }
  }
%  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

wordsTenor = \lyricmode {
  a- gain some sun- ny day. __
  We'll meet a- gain don't know where don't know when
  know meet some sun- ny day
  Keep smi- ling through just like you al- ways do, __
  drive the __ dark clouds a- way,
  please say hel- lo,
  Tell them I won't be long __
  They'll be hap -py to know I was sing- ing this song __
  We'll meet a- gain don't know where don't know when __
  again some sun- ny day.
  some sun- ny day.
}


bass= \relative c {
  \global
  r4
  e1 % 
  e2 bes4 a
  d2 c2(
  d2.) r4
  \repeat volta 2 {
    d4 d2 d4 % 5
    fis4 fis,2 fis4
    b2 bes4 b
    c2(b)
    e2. b4
    e2. e4 % 10 % 10
    e2 e
    e4 cis a(cis)
    d4 d2 d4
    fis4(fis,) a bes
    b2 bes4 b % 15
    c2(b)
    e2. b'4
    a2.(g4)
    d2 c
    d4 r r2 % 20
    d2 a
    d2 a
    g2 d'
    d2 fis4 f
    e2 b
    e2 b
    a2 e'4 ees
    e2(a,)
    d4 d2 d4
    fis4 fis,2 fis4
    b2 bes4 b
    c2(b)
    e1
    e4(b)a2
  }
  \alternative {
    {
      d1
    }
    {
      r4 a'2 a4
      d,1
    }
  }
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

wordsBass = \lyricmode {
  a- gain some sun- ny day. __
  We'll meet a- gain don't know where don't know when
  know we'll meet a- gain some sun- ny day
  Keep smi- ling through just like you al- ways do, __
  drive the dark __ clouds a- way,
  say hello, to folks, I won't be long.
  hap- py that I was sing- ing this song. __
  We'll meet a- gain don't know where don't know when
  some sun- ny day.
  sun- ny day!
}

\score {
  \context GrandStaff <<
    <<
      \new ChordNames { \ChordTrack }
      \new FretBoards { \ChordTrack }
    >>
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
