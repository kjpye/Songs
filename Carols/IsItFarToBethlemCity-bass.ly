\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Is It Far to Bethlem City"
  subtitle    = "Bass"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Giovanni Gastoldi"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
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
  \key bes \major
  \time 4/4
  \tempo 4=120
}

bass= \relative c' {
  \global
  \clef bass
  \repeat volta 2 {
    r4 r8 bes16 c bes8 bes ees, f
    bes,4 8 f'16 f ees8 ees ees bes
    f'4 8 16 g f8 f f f
    ees4 8 ees f ees16(d) ees8 f
    bes,4 r8 bes'16 c bes8 bes ees, f % 5
    bes,4 8 f'16 f ees8 ees ees bes
    f'4 8 16 g f8 f f f
    ees4 8 8 f ees16(d) ees8 f
    bes,2 r
    r4 r8 bes' c bes16(a) g8 c % 10
    f,4 8 bes c4 8 8
    g4 8 bes f4 8 8
    g4 8 8 f4 f8 f
    ees8 d ees f bes,2
    r2 r4 r8 bes' % 15
    c8 bes16(a) g8 c
    f,4 8 bes
    c4 8 8 g4 8 bes
    f4 8 8 g4 8 8
    f4 8 8 ees d ees f % 20
    bes,1
  }
}

dynamicsBass = {
}

wordsBassOne = \lyricmode {
  Is it far to Beth- lem cit- y?
  Is the way lit by a bright star?
  Has the night re- vealed its mys- t'ry?
  Fa la la la la la!
  Let us run to find the sta- ble,
  let us bold- ly knock and en- ter,
  lay our gifts up- on the tab- le,
  Fa la la la la la!
  We'll guard the __ Babe from dan- ger.
  Fa la la la la la,
  Fa la la la la la la la la la la la la la la!
  We'll guard the __ Babe from dan- ger.
  Fa la la la la la,
  Fa la la la la la la la la,
  Fa, la la la la la!
}

wordsBassTwo = \lyricmode {
  May we touch the gen- tle ox- en?
  May we pull the curl- y sheep wool?
  May we taste the shep- herd's sweet cheese?
  _ _ _ _ _ _
  See, the sky with joy is ring- ing,
  a new star o'er the man- ger shin- ing,
  and the world hears an- gels sing- ing,
  _ _ _ _ _ _
  With gold and __ in- cense lad- en.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  with gold and in- cense lad- en.
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

\score {
  <<
    \new ChoirStaff <<
% Single bass staff
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBassOne
        \new Lyrics \lyricsto "bass" \wordsBassTwo
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context { \Score \RemoveAllEmptyStaves }
  }
  \midi {}
}
