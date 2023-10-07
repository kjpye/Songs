\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now, O now I needs must part"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J Dowland"
%  arranger    = "arranger"
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
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo "Not slow" 4=150
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "12a" } s2.*7
  \textMark \markup { \box "12b" } s2.*5 s1.
  \textMark \markup { \box "13a" } s2.*8
  \textMark \markup { \box "13b" } s2.*6 s1.
  \textMark \markup { \box "14a" } s2.*6 s1.
  \textMark \markup { \box "14b" } s2.*6 s1. s2.*2
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*7 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\mf | s2.*3 | s1. |
  s2.*2 | s2.\p | s2.*4 | s2. | s2.*2 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |
}

soprano = \relative {
  b'2 a4 | g2 fis4 | e2 g4 | a2 r4 | b2 d4 | c2 b4 | a2 b4 |
  a2 r4 | b2 a4 | g2 fis4 | e2 g4 | a2 r4 \time 3/2 | b4 d c4. 8 b4 a \time 3/4 |
  g2.~ | g | b2 a4 | g2 fis4 | e2 g4 | a2 r4 | b2 d4 | c2 b4 | % 13a
  a2 b4 | a2 r4 | b2 a4 | g2 fis4 | e2 g4 | a2 r4 \time 3/2 | b4 d c4. 8 b4 a \time 3/4 |
  g2.~ | g | c2 4 | c2 e4 | d2 e4 | b2 r4 \time 3/2 | c4. 8 b4 a c b \time 3/4 | % 14a
  a2.~ | a | b2 a4 | g2 fis4 | e2 g4 | a2 r4 \time 3/2 | b4 d c4. 8 b4 a \time 3/4 | g2.~ | g |
}

wordsOne = \lyricmode {
  \set stanza = \markup\dynamic mf
  Now, o now, I needs must part
  Part -- ing though I ab -- sent mourn
  \set stanza = \markup\dynamic p
  Ab -- sence can no joy im -- part
  Joy once fled can -- not re -- turn

  \set stanza = \markup\dynamic mf
  While I live I needs must love
  Love lives not
  \set stanza = \markup\italic "dim."
  when hope is gone
  \set stanza = \markup\dynamic p
  Now at last des -- pair doth prove
  Love di -- vid -- ed lov -- eth none
}

chorus = \lyricmode {
  \set stanza = \markup\dynamic f
  Sad des -- pair doth drive me hence
  \set stanza = \markup\italic "dim."
  This des -- pair un -- kind -- ness sends __
  \set stanza = "cresc."
  If that part -- ing be of -- fence
  \set stanza = \markup\dynamic f
  It is she which then of -- fends __
}

chorusTenor = \lyricmode {
  \set stanza = \markup\dynamic f
  Sad des -- pair doth drive me hence
  \set stanza = \markup\italic "dim."
  This des -- pair, des -- pair un -- kind -- ness sends __
  \set stanza = "cresc."
  If that part -- ing be of -- fence
  \set stanza = \markup\dynamic f
  It is she which then of -- fends __
}

chorusBass = \lyricmode {
  \set stanza = \markup\dynamic f
  Sad des -- pair doth drive me hence, me hence,
  \set stanza = \markup\italic "dim."
  This des -- pair un -- kind -- ness sends __
  \set stanza = "cresc."
  If that part -- ing be of -- fence
  \set stanza = \markup\dynamic f
  It is she which then of -- fends __
}

wordsTwo = \lyricmode {
  \set stanza = \markup\dynamic p
  Dear, when I from thee am gone
  Gone are all my joys at once
  \set stanza = \markup\dynamic mf
  I loved thee and thee a -- lone
  In whose love I joy -- ed once

  \set stanza = \markup\dynamic p
  And al -- though your sight I leave
  Sight where -- in my joys do lie
  \set stanza = \markup\italic "cresc."
  Till that death do sense be -- reave
  \set stanza = \markup\italic mf
  Nev -- er shall af -- fec -- tion die
}

wordsThree = \lyricmode {
  \set stanza = \markup\dynamic p
  Dear, if I do not re -- turn
  Love and I shall die to -- gether;
  \set stanza = \markup\italic "cresc."
  For my ab -- sence nev -- er mourn
  \set stanza = \markup\dynamic mf
  Whom you might have joy -- ed ever

  \set stanza = \markup\dynamic mf
  Part we must though now I die
  Die I do to part with you
  \set stanza = \markup\italic "cresc."
  Him Des -- pair doth cause to lie
  \set stanza = \markup\dynamic f
  Who both lived and di -- eth true
}

wordsSingleWomen = \lyricmode {
  \set stanza = "1."
  Now, o now, I needs must part
  Part -- ing though I ab -- sent mourn
  Ab -- sence can no joy im -- part
  Joy once fled can -- not re -- turn

  While I live I needs must love
  Love lives not
  when hope is gone
  Now at last des -- pair doth prove
  Love di -- vid -- ed lov -- eth none

  Sad des -- pair doth drive me hence
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "2."
  Dear, when I from thee am gone
  Gone are all my joys at once
  I loved thee and thee a -- lone
  In whose love I joy -- ed once

  And al -- though your sight I leave
  Sight where -- in my joys do lie
  Till that death do sense be -- reave
  Nev -- er shall af -- fec -- tion die
  
  Sad des -- pair doth drive me hence
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "3."
  Dear, if I do not re -- turn
  Love and I shall die to -- gether;
  For my ab -- sence nev -- er mourn
  Whom you might have joy -- ed ever

  Part we must though now I die
  Die I do to part with you
  Him Des -- pair doth cause to lie
  Who both lived and di -- eth true
  Sad des -- pair doth drive me hence
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __
}

wordsSingleWomenMidi = \lyricmode {
  \set stanza = "1."
  "Now, " "o " "now, " "I " "needs " "must " "part "
  "\nPart" "ing " "though " "I " ab "sent " "mourn "
  "\nAb" "sence " "can " "no " "joy " im "part "
  "\nJoy " "once " "fled " can "not " re "turn "

  "\nWhile " "I " "live " "I " "needs " "must " "love "
  "\nLove " "lives " "not "
  "\nwhen " "hope " "is " "gone "
  "\nNow " "at " "last " des "pair " "doth " "prove "
  "\nLove " di vid "ed " lov "eth " "none "

  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "2."
  "\nDear, " "when " "I " "from " "thee " "am " "gone "
  "\nGone " "are " "all " "my " "joys " "at " "once "
  "\nI " "loved " "thee " "and " "thee " a "lone "
  "\nIn " "whose " "love " "I " joy "ed " "once "

  "\nAnd " al "though " "your " "sight " "I " "leave "
  "\nSight " where "in " "my " "joys " "do " "lie "
  "\nTill " "that " "death " "do " "sense " be "reave "
  "\nNev" "er " "shall " af fec "tion " "die "
  
  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "3."
  "\nDear, " "if " "I " "do " "not " re "turn "
  "\nLove " "and " "I " "shall " "die " to "gether; "
  "\nFor " "my " ab "sence " nev "er " "mourn "
  "\nWhom " "you " "might " "have " joy "ed " "ever "

  "\nPart " "we " "must " "though " "now " "I " "die "
  "\nDie " "I " "do " "to " "part " "with " "you "
  "\nHim " Des "pair " "doth " "cause " "to " "lie "
  "\nWho " "both " "lived " "and " di "eth " "true "
  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends " 
}

wordsSingleTenor = \lyricmode {
  \set stanza = "1."
  Now, o now, I needs must part
  Part -- ing though I ab -- sent mourn
  Ab -- sence can no joy im -- part
  Joy once fled can -- not re -- turn

  While I live I needs must love
  Love lives not
  when hope is gone
  Now at last des -- pair doth prove
  Love di -- vid -- ed lov -- eth none

  Sad des -- pair doth drive me hence
  This des -- pair, des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "2."
  Dear, when I from thee am gone
  Gone are all my joys at once
  I loved thee and thee a -- lone
  In whose love I joy -- ed once

  And al -- though your sight I leave
  Sight where -- in my joys do lie
  Till that death do sense be -- reave
  Nev -- er shall af -- fec -- tion die
  
  Sad des -- pair doth drive me hence
  This des -- pair, des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "3."
  Dear, if I do not re -- turn
  Love and I shall die to -- gether;
  For my ab -- sence nev -- er mourn
  Whom you might have joy -- ed ever

  Part we must though now I die
  Die I do to part with you
  Him Des -- pair doth cause to lie
  Who both lived and di -- eth true
  
  Sad des -- pair doth drive me hence
  This des -- pair, des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __
}

wordsSingleTenorMidi = \lyricmode {
  \set stanza = "1."
  "Now, " "o " "now, " "I " "needs " "must " "part "
  "\nPart" "ing " "though " "I " ab "sent " "mourn "
  "\nAb" "sence " "can " "no " "joy " im "part "
  "\nJoy " "once " "fled " can "not " re "turn "

  "\nWhile " "I " "live " "I " "needs " "must " "love "
  "\nLove " "lives " "not "
  "\nwhen " "hope " "is " "gone "
  "\nNow " "at " "last " des "pair " "doth " "prove "
  "\nLove " di vid "ed " lov "eth " "none "

  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair, " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "2."
  "\nDear, " "when " "I " "from " "thee " "am " "gone "
  "\nGone " "are " "all " "my " "joys " "at " "once "
  "\nI " "loved " "thee " "and " "thee " a "lone "
  "\nIn " "whose " "love " "I " joy "ed " "once "

  "\nAnd " al "though " "your " "sight " "I " "leave "
  "\nSight " where "in " "my " "joys " "do " "lie "
  "\nTill " "that " "death " "do " "sense " be "reave "
  "\nNev" "er " "shall " af fec "tion " "die "
  
  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair, " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "3."
  "\nDear, " "if " "I " "do " "not " re "turn "
  "\nLove " "and " "I " "shall " "die " to "gether; "
  "\nFor " "my " ab "sence " nev "er " "mourn "
  "\nWhom " "you " "might " "have " joy "ed " "ever "

  "\nPart " "we " "must " "though " "now " "I " "die "
  "\nDie " "I " "do " "to " "part " "with " "you "
  "\nHim " Des "pair " "doth " "cause " "to " "lie "
  "\nWho " "both " "lived " "and " di "eth " "true "
  
  "\nSad " des "pair " "doth " "drive " "me " "hence "
  "\nThis " des "pair, " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends " 
}

wordsSingleBass = \lyricmode {
  \set stanza = "1."
  Now, o now, I needs must part
  Part -- ing though I ab -- sent mourn
  Ab -- sence can no joy im -- part
  Joy once fled can -- not re -- turn

  While I live I needs must love
  Love lives not
  when hope is gone
  Now at last des -- pair doth prove
  Love di -- vid -- ed lov -- eth none
  Sad des -- pair doth drive me hence, me hence,
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "2."
  Dear, when I from thee am gone
  Gone are all my joys at once
  I loved thee and thee a -- lone
  In whose love I joy -- ed once

  And al -- though your sight I leave
  Sight where -- in my joys do lie
  Till that death do sense be -- reave
  Nev -- er shall af -- fec -- tion die

  Sad des -- pair doth drive me hence, me hence,
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __

  \set stanza = "3."
  Dear, if I do not re -- turn
  Love and I shall die to -- gether;
  For my ab -- sence nev -- er mourn
  Whom you might have joy -- ed ever

  Part we must though now I die
  Die I do to part with you
  Him Des -- pair doth cause to lie
  Who both lived and di -- eth true
  
  Sad des -- pair doth drive me hence, me hence,
  This des -- pair un -- kind -- ness sends __
  If that part -- ing be of -- fence
  It is she which then of -- fends __
}

wordsSingleBassMidi = \lyricmode {
  \set stanza = "1."
  "Now, " "o " "now, " "I " "needs " "must " "part "
  "\nPart" "ing " "though " "I " ab "sent " "mourn "
  "\nAb" "sence " "can " "no " "joy " im "part "
  "\nJoy " "once " "fled " can "not " re "turn "

  "\nWhile " "I " "live " "I " "needs " "must " "love "
  "\nLove " "lives " "not "
  "\nwhen " "hope " "is " "gone "
  "\nNow " "at " "last " des "pair " "doth " "prove "
  "\nLove " di vid "ed " lov "eth " "none "
  "\nSad " des "pair " "doth " "drive " "me " "hence, " "me " "hence, "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "2."
  "\nDear, " "when " "I " "from " "thee " "am " "gone "
  "\nGone " "are " "all " "my " "joys " "at " "once "
  "\nI " "loved " "thee " "and " "thee " a "lone "
  "\nIn " "whose " "love " "I " joy "ed " "once "

  "\nAnd " al "though " "your " "sight " "I " "leave "
  "\nSight " where "in " "my " "joys " "do " "lie "
  "\nTill " "that " "death " "do " "sense " be "reave "
  "\nNev" "er " "shall " af fec "tion " "die "

  "\nSad " des "pair " "doth " "drive " "me " "hence, " "me " "hence, "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends\n" 

  \set stanza = "3."
  "\nDear, " "if " "I " "do " "not " re "turn "
  "\nLove " "and " "I " "shall " "die " to "gether; "
  "\nFor " "my " ab "sence " nev "er " "mourn "
  "\nWhom " "you " "might " "have " joy "ed " "ever "

  "\nPart " "we " "must " "though " "now " "I " "die "
  "\nDie " "I " "do " "to " "part " "with " "you "
  "\nHim " Des "pair " "doth " "cause " "to " "lie "
  "\nWho " "both " "lived " "and " di "eth " "true "
  
  "\nSad " des "pair " "doth " "drive " "me " "hence, " "me " "hence, "
  "\nThis " des "pair " un kind "ness " "sends " 
  "\nIf " "that " part "ing " "be " of "fence "
  "\nIt " "is " "she " "which " "then " of "fends " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*7 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\mf | s2.*3 | s1. |
  s2.*2 | s2.\p | s2.*4 | s2. | s2.*2 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |
}

alto = \relative {
  g'2 fis4 | e2 d4 | c2 b4 | d2. | d2 g4 | 2 4 | fis2 g4 |
  fis2 r4 | g2 fis4 | e2 d4 | c2 b4 | c2. \time 3/2 d4 g e4. 8 c4. 8 \time 3/4 |
  b2.~b | g'2 fis4 | e2 d4 | c2 b4 | d2. | d2 g4 | 2 4 | % 13a
  fis2 g4 | fis2 r4 | g2 fis4 | e2 d4 | c2 b4 | d2. \time 3/2 | d4 g e4. 8 c4. 8 \time 3/4 |
  b2.~ | b | e2 4 | 2 4 | g2 4 | 2. \time 3/2 | e4 a g d e4. d8 \time 3/4 | % 14a
  cis2.~ | 2. | g'2 fis4 | e2 d4 | c2 b4 | d2. \time 3/2 | d4 g e4. 8 d4 c \time 3/4 | b2.~ | b |
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*7 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\mf | s2.*3 | s1. |
  s2.*2 | s2.\p | s2.*4 | s2. | s2.*2 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f |
  s2.*2 | s2.\f | s2.*2 | s2.\dim | s1. | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |
}

tenor = \relative {
  d'2 4 | b2 4 | g4 4.(g'8) | fis2. | g2 b,4 | e2 d4 | 2 4 |
  d2. | 2 4 | b2 4 | g4 4.(g'8) | f2. \time 3/2 | g4 b, a8 g8 2 fis4 \time 3/4 |
  g2.~ | g | d'2 4 | b2 4 | g4 4.(g'8) | fis2. | g2 b,4 | e2 d4 | % 13a
  d2 4 | 2. | 2 4 | b2 4 | g4 4.(g'8) | fis2. \time 3/2 | g4 b, a8 g8 2 fis4 \time 3/4 |
  g2.~ | g | 2 4 | 2 4 | 4 b g | 2 b4 \time 3/2 | a e' e a, a gis \time 3/4 | % 14a
  a2.~ | a | d2 4 | b2 4 | g4 4.(g'8) | fis2. \time 3/2 | g4 b, a8 g8 2 fis4 \time 3/4 | g2.~ | g |
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s2.*7 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\p | s2.*3 | s1. |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\mf | s2.*3 | s1. |
  s2.*2 | s2.\p | s2.*4 | s2. | s2.*2 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |

  s2.\p | s2.*7 | s2.\cresc | s2.*3 | s1.\mf |
  s2.*2 | s2.\mf | s2.*4 | s2 s4\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f |
  s2.*2 | s2.\f | s2.*3 | s1.\dim | s2.*2 | s2.\cresc | s2.*3 | s1.\f | s2.*2 |
}

bass = \relative {
  g2 d4 | e2 b4 | c2 e4 | d2. | g2 4 | c,2 g'4 | d2 g,4 |
  d'2. | g2 d4 | e2 b4 | c2 e4 | d2. \time 3/2 | g,4 g c c d d \time 3/4 |
  g,2.~ | g | g'2 d4 | e2 b4 | c2 e4 | d2. | g2 4 | c,2 g'4 | % 13a
  d2 g,4 | d'2. | g2 d4 | e2 b4 | c2 e4 | d2. \time 3/2 | g,4 4 c c d d |
  g,2.~ | g | c2 4 | 2 4 | b g c | b g2 \time 3/2 | a4. 8 e'4 f e e \time 3/4 | % 14a
  a,2.~ | a | g'2 d4 | e2 b4 | c2 e4 | d2. \time 3/2 | g4 g c,4. 8 d4 d \time 3/4 | g,2.~ | g |
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
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
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\global \soprano}
            \addlyrics {\wordsOne \chorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree

          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice {\global \alto}
            \addlyrics {\wordsOne \chorus}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice {\global \tenor}
            \addlyrics {\wordsOne \chorusTenor}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice {\global \bass}
            \addlyrics {\wordsOne \chorusBass}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics \wordsSingleWomen

          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics \wordsSingleWomen
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics \wordsSingleTenor
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics \wordsSingleBass
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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

#(set-global-staff-size 18)

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
%   \articulate
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics \wordsSingleWomen

          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics \wordsSingleWomen
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics \wordsSingleTenor
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics \wordsSingleBass
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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

#(set-global-staff-size 18)

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
   \unfoldRepeats
%   \articulate
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics \wordsSingleWomen

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
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics {\tiny \wordsSingleWomen}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics {\tiny \wordsSingleTenor}
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics {\tiny \wordsSingleBass}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "singlepage-alto"
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
%   \articulate
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics {\tiny \wordsSingleWomen}

          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics \wordsSingleWomen
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics {\tiny \wordsSingleTenor}
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics {\tiny \wordsSingleBass}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "singlepage-tenor"
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
%   \articulate
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics {\tiny \wordsSingleWomen}

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
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics {\tiny \wordsSingleWomen}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics \wordsSingleTenor
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics {\tiny \wordsSingleBass}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
%   \articulate
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
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics {\tiny \wordsSingleWomen}

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
            \new Voice { \global \alto \section \alto \section \alto}
            \addlyrics {\tiny \wordsSingleWomen}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics {\tiny \wordsSingleTenor}
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics \wordsSingleBass
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "midi-women"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
            \addlyrics \wordsSingleWomenMidi

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
            \new Voice { \global \alto \section \alto \section \alto}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
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
            \new Voice {\global \bass \section \bass \section \bass}
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
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
            \new Voice { \global \alto \section \alto \section \alto}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
            \addlyrics \wordsSingleTenorMidi
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
            \new Voice {\global \bass \section \bass \section \bass}
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice {\repeat unfold 3 \RehearsalTrack}
            \new Voice { \global \soprano \section \break
                                 \soprano \section \break
                                 \soprano \bar "|." }
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
            \new Voice { \global \alto \section \alto \section \alto}
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
            \new Voice {\global \tenor \section \tenor \section \tenor}
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
            \new Voice {\global \bass \section \bass \section \bass}
            \addlyrics \wordsSingleBassMidi
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
