\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Teddy Bears' Picnic"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Johm Bratton"
  arranger    = "Arr. Andrew Carter"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% For accompaniment version with repeat, try 18

% For version without accompaniment, 18 will fit on four pages,
% 19 on 5 pages, and the default 20 on 6 pages
% Take you pick.

% #(set-global-staff-size 19)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

TempoTrack = {
  \tempo Mischievously 4.=84
  s8
  \repeat volta 2 {
    s2.*15
  }
  \alternative {{s2.}{s2.}}
  s2.*31
  \set Score.tempoHideNote = ##t
  s4. \tempo 4.=42 s4.
  \set Score.tempoHideNote = ##f
  \tempo "Slow and mysterious" 4.=56
  s2.
  \set Score.tempoHideNote = ##t
  s4. \tempo 4.=16 s4 \tempo 4.=56 s8
  s2.*2
  \tempo 4.=70
  s2.*4
  \tempo 4.=84
  s2.*11
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s8
  \repeat volta 2 {
    s2.*4
    \mark \markup { \box "1b" }    s2.*5
    \mark \markup { \box "1c" }    s2.*4
    \mark \markup { \box "2a" }    s2.*2
  }
  \alternative {
    { s2. }
    { s2. }
  }
  s2.*3
  \mark \markup { \box "2b" }    s2.*7
  \mark \markup { \box "2c" }    s2.*8
  \mark \markup { \box "3a" }    s2.*6
  \mark \markup { \box "3b" }    s2.*5
  \mark \markup { \box "3c" }    s2.*4
  \mark \markup { \box "4a" }    s2.*4
  \mark \markup { \box "4b" }    s2.*5
  \mark \markup { \box "4c" }    s2.*5
  \mark \markup { \box "4d" }    s2.*4
}

soprano = \relative {
  \global
  b8^\mp
  \repeat volta 2 {
    e4 g8 fis g fis
    e4 g8 fis4 g8
    e8^\< fis g fis4 g8\!
    e4.^\> r4 d8\!
    g4 b8 a b a % 1b
    g4 b8 a4 b8
    g8^\< a b a4 b8\!
    g4.~8 r d'
    e4 d8 e4 d8
    a8 b d b4 a8 % 1c
    a4 g8 a4 g8
    d8 e g e4 d8
    e4 g8 d4 g8
    e8 fis g d4 b'8 % 2a
    a2.
  }
  \alternative {
    {
      g8 r r fis4.^>
    }
    {
      g8 r r r4. \key ees \major
    }
  }
  g4.\omit\mp^\markup{\dynamic mp \italic "molto legato"} 4.
  fis4. g
  c4 g8 bes4.~
  bes4 g8 fis4 g8 % 2b
  c4 g8 bes4 g8
  c8 bes g fis4 g8
  bes4 f8 aes4.~
  aes4. r
  aes4.^\mf 4.
  e4. f
  d'4 aes8 c4.~ % 2c
  c4 8 b4 c8
  d4. c
  bes4. aes
  g4 c8 bes4.~
  bes4. r
  g4. 4.
  fis4. g
  c4 g8 bes4.~ % 3a
  bes4 g8 fis4 g8
  c4^\cresc g8 bes4 g8
  c8 bes g f4 ees8
  ees'2.~
  ees4. r4 ees,8\omit\f^\markup{\dynamic f \italic marcato}
  ees'4 d8 ees4 d8 % 3b
  ees8 d ees f ees c
  bes4 a8 bes4 c8
  bes4 ees,8\omit\dim ^\markup\italic "molto legato e dim." f4 g8
  aes4. bes4 c8
  g8 r r f r r % 3c
  ees4 bes8^\f a4 bes8
  ees8 r r d4.\fermata^\p \bar "||" \key bes \major
  g4 bes8 a bes a
  g4 bes8 a4\fermata bes8 % 4a
  g8 a bes a4 bes8
  g4.~4 f8^\markup\italic "molto accel"
  bes4 d8 c d c
  bes4 d8 c4 d8 % 4b
  bes8 c d c4 d8
  bes4. r4 f'8^\mf g4^\markup "Tempo primo" f8 g4 f8
  c8 d f d4 c8
  c4 bes8 c4 bes8 % 4c
  f8 g bes g4 f8
  g4 bes8 f4 bes8
  g8 a bes f4 r8
  R2.
  <<
    { \voiceTwo
      r4 d'8 c4.~ % 4d
      c4.~4 8
      c2.
    }
    \new Voice { \voiceOne
                 r4. r4 f8 % 4d
                 f2.^\markup\italic "senza rall." ~
                 f2.
               }
  >>
  \oneVoice bes,8^\f r r r4.
  \bar "|."
}

wordsSopOne = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, _

  Pic -- nic time for ted -- dy bears, __
  The lit -- tle ted -- dy bears are hav -- ing a love -- ly time to -- day; __
  Watch them catch them un -- a -- wares __
  And see them pic -- nic on their ho -- li -- day. __
  See them gai -- ly gad a -- bout, __
  They love to play and shout,
  They ne -- ver have a -- ny cares, __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsSopTwo = \lyricmode {
  _ Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic _ _ nic.
}

wordsSopAbove = \lyricmode {
  their pic -- nic.
}

wordsSopSingle = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic nic.

  Pic -- nic time for ted -- dy bears, __
  The lit -- tle ted -- dy bears are hav -- ing a love -- ly time to -- day; __
  Watch them catch them un -- a -- wares __
  And see them pic -- nic on their ho -- li -- day. __
  See them gai -- ly gad a -- bout, __
  They love to play and shout,
  They ne -- ver have a -- ny cares, __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsSopMidi = \lyricmode {
  "If " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou're " "sure " "of " "a " "big " sur "prise, "
  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "go " "in " dis "guise; " 
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " pic "nic. "

  "\nOh, " Ev "'ry " ted "dy " "bear " "who's " "been " "good "
  "\nIs " "sure " "of " "a " "treat " to "day. "
  "\nThere's " "lots " "of " mar vel "lous " "things " "to " "eat "
  "\nAnd " won der "ful " "games " "to " "play. " 
  "\nBe" "neath " "the " "trees " "where " no bo "dy " "sees "
  "\nThey'll " "hide " "and " "seek " "as " "long " "as " "they " "please, "
  "\n'Cos " "that's " "the " "way " "the " ted "dy " "bears " "have " "their " "pic " "nic. "

  "\nPic" "nic " "time " "for " ted "dy " "bears, " 
  "\nThe " lit "tle " ted "dy " "bears " "are " hav "ing " "a " love "ly " "time " to "day; " 
  "\nWatch " "them " "catch " "them " un a "wares " 
  "\nAnd " "see " "them " pic "nic " "on " "their " ho li "day. " 
  "\nSee " "them " gai "ly " "gad " a "bout, " 
  "\nThey " "love " "to " "play " "and " "shout, "
  "\nThey " ne "ver " "have " a "ny " "cares, " 
  "\nAt " "six " o' "clock " "their " mum "mies " "and " dad "dies "
  "\nWill " "take " "them " "home " "to " "bed "
  "\nBe" "cause " "they're " "tired " lit "le " ted "dy " "bears. "
  "\nTa" da da "dum. "

  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "not " "go " a "lone, " 
  "\nIt's " love "ly " "down " "in " "the " "woods " to "day "
  "\nBut " saf "er " "to " "stay " "at " "home. "
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " "pic " 
  "\ntheir " pic "nic. "
}

alto = \relative {
  \global
  b8^mp
  \repeat volta 2 {
    e4 g8 fis g fis
    e4 g8 fis4 g8
    e8^\< 8 8 dis4 8\! e4.^\> c4(d8\!)
    g4 8 fis8 8 8 % 1b
    g4 8 fis4 8
    g8^\< 8 8 fis4 8\!
    g4.~8 r g8
    g4 8 fis4 8
    e8 8 8 fis4 8 % 1c
    fis4 e8 fis4 e8
    d8 e g e4 d8
    b4 8 4 8
    cis8 8 8 d4 g8 % 2a
    d2.
  }
  \alternative {
    {
      d8 r r dis4.^>
    }
    {
      d8 r r r4. \key ees \major
    }
  }
  ees4.\omit\mp^\markup{\dynamic mp \italic "molto legato"} 4.
  ees4. 4.
  g4. fis
  g4. ees( % 2b
  g4. ees
  g4. ees
  ees4. d
  cis2.)
  d4.^\mf 4.
  cis4. d
  d4. cis % 2c
  d4. ees(
  d4. ees
  e4. f
  ees4. cis
  d4.) r
  ees4. 4.
  ees4. 4.
  d4. fis % 3a
  g4. ees(
  g4.^\cresc ees
  ees4. des
  c4. des
  d4. ees4) 8\omit\f^\markup{\dynamic f \italic marcato}
  aes4 8 4 8 % 3b
  fis8 8 8 8 8 8
  g4 fis8 g4 fis8
  g4 ees8\omit\dim ^\markup\italic "molto legato e dim." f4 g8
  ees4. 4 8
  d8 r r d r r % 3c
  ees4 bes8^\f a4 bes8
  ees8 r r d4.^\p\fermata \key bes \major
  bes4 8 c8 8 8
  cis4 8 c4\fermata 8 % 4a
  bes8 8 8 ees4 8
  d4. c
  f4 8 ees8 8 8
  d4 8 ges4 8 % 4b
  f8 8 8 ees4 8
  d4. bes'^\mf
  bes4 8 a4 8
  g8 8 8 a4 8
  a4 g8 a4 g8 % 4c
  f8 g bes g4 f8
  e4 8 d4 8
  e8 8 8 d4 r8
  r4. r4 bes'8
  a2.~ % 4d
  a4.~4 8
  a2.
  bes8^\f r r r4.
  \bar "|."
}

wordsAltoOne = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, _

  Pic -- nic time for ted -- dy bears, __
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad a -- bout, __
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsAltoTwo = \lyricmode {
  _ Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic _ _ nic.
}

wordsAltoSingle = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic nic.

  Pic -- nic time for ted -- dy bears, __
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad a -- bout, __
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsAltoMidi = \lyricmode {
  "If " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou're " "sure " "of " "a " "big " sur "prise, "
  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "go " "in " dis "guise; " 
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " pic "nic. "

  "\nOh, " Ev "'ry " ted "dy " "bear " "who's " "been " "good "
  "\nIs " "sure " "of " "a " "treat " to "day. "
  "\nThere's " "lots " "of " mar vel "lous " "things " "to " "eat "
  "\nAnd " won der "ful " "games " "to " "play. " 
  "\nBe" "neath " "the " "trees " "where " no bo "dy " "sees "
  "\nThey'll " "hide " "and " "seek " "as " "long " "as " "they " "please, "
  "\n'Cos " "that's " "the " "way " "the " ted "dy " "bears " "have " "their " "pic " "nic. "

  "\nPic" "nic " "time " "for " ted "dy " "bears, " 
  "\noo " 
  "\nWatch " "them " "catch " "them " un a "wares " 
  "\noo " 
  "\nSee " "them " gai "ly " "gad " a "bout, " 
  "\nah " 
  "\nAt " "six " o' "clock " "their " mum "mies " "and " dad "dies "
  "\nWill " "take " "them " "home " "to " "bed "
  "\nBe" "cause " "they're " "tired " lit "le " ted "dy " "bears. "
  "\nTa" da da "dum. "

  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "not " "go " a "lone, " 
  "\nIt's " love "ly " "down " "in " "the " "woods " to "day "
  "\nBut " saf "er " "to " "stay " "at " "home. "
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " "pic " 
  "\ntheir " pic "nic. "
}

tenor = \relative {
  \global
  b,8^\mp
  \repeat volta 2 {
    g'4 b8 a b a
    g4 b8 a4 b8
    g8^\< a b c4 8\! b4.^\> a
    b4\! d8 c d c % 1b
    b4 d8 c4 d8 b8^\< c d ees4 8\!
    d4.~8 r d8
    c4 8 4 8
    c8 8 8 4 8 % 1c
    b4 8 4 8
    ais8 8 8 b4 8
    g4 8 4 8
    g8 a ais b4 d8 % 2a
    c2.
  }
  \alternative {
    { b8 r r a4.^> }
    { b8 r r r4. \key ees \major }
  }
  bes4.\omit\mp^\markup{\dynamic mp \italic "molto legato"} c
  bes4. c
  bes4. c
  bes4. c( % 2b
  bes4. c
  bes4. c
  aes4. f
  bes2.)
  bes4.^\mf c
  bes4. 4.
  aes4. g % 2c
  aes4. ges(
  f4. aes
  g4. f
  ees4. g
  aes4. a)
  bes4. c
  bes4. c
  bes4. c % 3a
  bes4. c(
  bes4.^\cresc c
  g4. bes
  a2.~
  a4.~4) ees8\omit\f^\markup{\dynamic f \italic marcato}
  c'4 b8 c4 b8 % 3b
  c8 8 8 8 8 8
  ees4 8 4 8
  ees4 ees,8\omit\dim^\markup\italic "molto legato e dim." f4 g8
  c4. bes4 aes8
  bes8 r r aes r r % 3c
  g4 bes,8^\f a4 bes8
  ees8 r r d4.\fermata^\p \key bes \major
  d4 8 ees8 8 8
  e4 ees8 ees4\fermata 8 % 4a
  d8 8 8 fis4 8
  g4. a
  bes4 8 8 8 8
  bes4 8 ees4 8 % 4b
  d8 8 8 bes4 8
  bes4. d^\mf
  ees4 8 4 8
  ees8 8 8 4 8
  d4 8 4 8 % 4c
  cis8 8 8 d4 8
  bes4 8 4 8
  bes8 8 8 4 r8
  r4 f'8 ees4.~
  2.~ % 4d
  es4.~4 8
  ees2.
  d8^\f r r r4.
  \bar "|."
}

wordsTenorOne = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, _

  Pic -- nic time for ted -- dy bears, __
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad a -- bout, __
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsTenorTwo = \lyricmode {
  _ Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic _ _ nic.
}

wordsTenorSingle = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic -- nic.

  Oh, Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their pic nic.

  Pic -- nic time for ted -- dy bears, __
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad a -- bout, __
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsTenorMidi = \lyricmode {
  "If " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou're " "sure " "of " "a " "big " sur "prise, "
  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "go " "in " dis "guise; " 
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " pic "nic. "

  "\nOh, " Ev "'ry " ted "dy " "bear " "who's " "been " "good "
  "\nIs " "sure " "of " "a " "treat " to "day. "
  "\nThere's " "lots " "of " mar vel "lous " "things " "to " "eat "
  "\nAnd " won der "ful " "games " "to " "play. " 
  "\nBe" "neath " "the " "trees " "where " no bo "dy " "sees "
  "\nThey'll " "hide " "and " "seek " "as " "long " "as " "they " "please, "
  "\n'Cos " "that's " "the " "way " "the " ted "dy " "bears " "have " "their " "pic " "nic. "

  "\nPic" "nic " "time " "for " ted "dy " "bears, " 
  "\noo " 
  "\nWatch " "them " "catch " "them " un a "wares " 
  "\noo " 
  "\nSee " "them " gai "ly " "gad " a "bout, " 
  "\nah " 
  "\nAt " "six " o' "clock " "their " mum "mies " "and " dad "dies "
  "\nWill " "take " "them " "home " "to " "bed "
  "\nBe" "cause " "they're " "tired " lit "le " ted "dy " "bears. "
  "\nTa" da da "dum. "

  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "not " "go " a "lone, " 
  "\nIt's " love "ly " "down " "in " "the " "woods " to "day "
  "\nBut " saf "er " "to " "stay " "at " "home. "
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " "pic " 
  "\ntheir " pic "nic. "
}

bass = \relative {
  \global
  b,8^\mp
  \repeat volta 2 {
    e4 8 b8 8 8
    e4 8 b4 8
    e8^\< 8 8 a4 8\!
    g4.^\> ~4 fis8
    g4\! 8 d8 8 8 % 1b
    g4 8 d4 8
    g8^\< 8 8 c4 8\! b4.~8 r b8
    a4 8 d,4 8
    a'8 8 8 d,4 8 % 1c
    g4 8 d4 8
    g8 8 8 d4 8
    cis4 8 d4 8
    e8 8 8 d4 8 % 2a
    r4 d8 e4 fis8
  }
  \alternative {
    { g8 r r b,4.^> }
    { g'8 r r r4. \key ees \major }
  }
  ees4.\omit\mp^\markup{\dynamic mp \italic "molto legato"} bes
  ees4. bes
  ees4. bes8^\f c d
  c4. bes % 2b
  ees4.^\mp (bes
  ees4. bes
  f'4. bes, e4. bes)
  f'4.^\mf bes,
  aes'4. bes,
  f'4. e % 2c
  f4. a,(
  bes4. c
  cis4. d
  ees4. e
  f4. fis)
  g4. bes,
  ees4. bes
  ees4. bes8^\f c d % 3a
  c4. bes
  ees4.\omit\f\omit\cresc^\markup{\dynamic mf \italic cresc.} (bes
  ees2.
  aes,4. bes
  b4. c4) ees8\omit\f^\markup{\dynamic f \italic marcato}
  aes4 8 4 8 % 3b
  a8 8 8 8 8 8
  bes4 c8 bes4 a8
  bes4 ees,8\omit\dim^\markup\italic "molto legato e dim."
  f4 g8
  f4. 4 8
  bes,8 r r bes r r % 3c
  ees4 bes8^\f a4 bes8
  ees8 r r d4.\fermata^\p \key bes \major
  g,4 8 8 8 8
  g4 8 4\fermata 8 % 4a
  g8 8 8 c4 8
  es4. ees
  d4 8 ges8 8 8
  f4 8 bes4 8 % 4b
  aes8 8 8 ges4 8
  f4. bes^\mf
  c4 8 f,4 8
  a8 8 8 f4 8
  bes4 8 f4 8 % 4c
  bes8 8 8 f4 8
  c4 8 f4 8
  c8 8 8 f4 d'8
  c2.~
  c2.~ % 4d
  c4.~4 f,8
  f2.
  bes8^\f r r r4.
  \bar "|."
}

wordsBassOne = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their
  their pic -- a -- nic.

  Oh, _

  Pic -- nic time for Ted, Have a ba -- na -- na,
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad
  Have a ba -- na -- na,
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsBassTwo = \lyricmode {
  _ Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their
  their pic -- a -- _ _ nic.
}

wordsBassSingle = \lyricmode {
  If you go down to the woods to -- day
  You're sure of a big sur -- prise,
  If you go down to the woods to -- day
  You'd bet -- ter go in dis -- guise; __
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their
  their pic -- a -- nic.

  Oh, Ev -- 'ry ted -- dy bear who's been good
  Is sure of a treat to -- day.
  There's lots of mar -- vel -- lous things to eat
  And won -- der -- ful games to play. __
  Be -- neath the trees where no -- bo -- dy sees
  They'll hide and seek as long as they please,
  'Cos that's the way the ted -- dy bears have their
  their pic -- a -- nic.

  Pic -- nic time for Ted, Have a ba -- na -- na,
  oo __
  Watch them catch them un -- a -- wares __
  oo __
  See them gai -- ly gad
  Have a ba -- na -- na,
  ah __
  At six o' -- clock their mum -- mies and dad -- dies
  Will take them home to bed
  Be -- cause they're tired lit -- le ted -- dy bears.
  Ta -- da -- da -- dum.

  If you go down to the woods to -- day
  You'd bet -- ter not go a -- lone, __
  It's love -- ly down in the woods to -- day
  But saf -- er to stay at home.
  For ev -- 'ry bear that ev -- er there was
  Will ga -- ther there for cer -- tain, be -- cause
  To -- day's the day the ted -- dy bears have their pic __
  their pic -- nic.
}

wordsBassMidi = \lyricmode {
  "If " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou're " "sure " "of " "a " "big " sur "prise, "
  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "go " "in " dis "guise; " 
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their "
  "\ntheir " pic a "nic. "

  "\nOh, " Ev "'ry " ted "dy " "bear " "who's " "been " "good "
  "\nIs " "sure " "of " "a " "treat " to "day. "
  "\nThere's " "lots " "of " mar vel "lous " "things " "to " "eat "
  "\nAnd " won der "ful " "games " "to " "play. " 
  "\nBe" "neath " "the " "trees " "where " no bo "dy " "sees "
  "\nThey'll " "hide " "and " "seek " "as " "long " "as " "they " "please, "
  "\n'Cos " "that's " "the " "way " "the " ted "dy " "bears " "have " "their "
  "\ntheir " pic a "nic. "

  "\nPic" "nic " "time " "for " "Ted, " "Have " "a " ba na "na, "
  "\noo " 
  "\nWatch " "them " "catch " "them " un a "wares " 
  "\noo " 
  "\nSee " "them " gai "ly " "gad "
  "\nHave " "a " ba na "na, "
  "\nah " 
  "\nAt " "six " o' "clock " "their " mum "mies " "and " dad "dies "
  "\nWill " "take " "them " "home " "to " "bed "
  "\nBe" "cause " "they're " "tired " lit "le " ted "dy " "bears. "
  "\nTa" da da "dum. "

  "\nIf " "you " "go " "down " "to " "the " "woods " to "day "
  "\nYou'd " bet "ter " "not " "go " a "lone, " 
  "\nIt's " love "ly " "down " "in " "the " "woods " to "day "
  "\nBut " saf "er " "to " "stay " "at " "home. "
  "\nFor " ev "'ry " "bear " "that " ev "er " "there " "was "
  "\nWill " ga "ther " "there " "for " cer "tain, " be "cause "
  "\nTo" "day's " "the " "day " "the " ted "dy " "bears " "have " "their " "pic " 
  "\ntheir " pic "nic. "
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat-acc"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
            \new NullVoice = sopOne {s8 \repeat volta 2 {s2.*15} \alternative {{s2.}{s2.}} s2.*47 s4. s4 c8 c2.~c c8}
          >>
          \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopOne \wordsSopAbove
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
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
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "repeat-noacc"
  \score {
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
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
            \new NullVoice = sopOne {s8 \repeat volta 2 {s2.*15} \alternative {{s2.}{s2.}} s2.*47 s4. s4 c8 c2.~c c8}
          >>
          \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopOne \wordsSopAbove
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-noacc"
  \score {
   \unfoldRepeats
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
            \new Voice \soprano
            \addlyrics \wordsSopSingle
            \new NullVoice = sopOne {s8 \repeat volta 2 {s2.*15} \alternative {{s2.}{s2.}} s2.*47 s4. s4 c8 c2.~c c8}
          >>
          \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopOne \wordsSopAbove
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Voice \soprano
            \addlyrics \wordsSopSingle
            \new NullVoice = sopOne {s8 \repeat volta 2 {s2.*15} \alternative {{s2.}{s2.}} s2.*47 s4. s4 c8 c2.~c c8}
          >>
          \new Lyrics \with {alignAboveContext = soprano} \lyricsto sopOne \wordsSopAbove
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
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
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
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
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
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
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
