\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Come to Me!"
  subtitle    = "Sankey No. 421"
  subsubtitle = "C. C. No. 26"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. J. Lowe."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Clark."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s4.*7 s4
  \mark \markup { \box "C" } s2 s1. s1
  \mark \markup { \box "D" } s2 s1. s1
  \mark \markup { \box "E" } s2 s1. s1
  \mark \markup { \box "F" } s2 s1. s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \time 6/8 \partial 8
  g'8
  g4 aes8 bes4 ees8
  d4 c8 bes4 8
  bes4 aes8 f4 c'8
  c4 bes8 g4 \bar "|" \break g8
  g4 aes8 bes4 ees8 % B
  d4 c8 bes4 g8
  f4 bes8 a4 ees'8
  d4 c8 bes4\fermata \bar "||" \time 12/8 \partial 2 bes8^\markup\smallCaps Refrain. c4 bes8
  aes4.~4.~4 c8 bes4 aes8 % C
  g4.~4.~4 \bar "|" \break g8 f4 bes8
  a4. ees' d c % D
  bes4.~4.~4 \bar "|" \break g8 4 aes8
  bes4.~4.~4 g8 aes4 bes8 % E
  c4.~4.~4 \bar "|" \break ees8 d4 c8
  bes4.~4 g8 4. f % F
  ees4.^\markup\italic rit. ~4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8
  ees4 f8 g4 8
  ees4 8 4 8
  g4 f8 d4 aes'8
  aes4 g8 ees4 8
  ees4 f8 g4 8 % B
  ees4 8 4 8
  d4 f8 ees4 f8
  f4 ees8 d4\fermata g8 aes4 g8
  f4.~4.~4 aes8 g4 f8 % C
  ees4.~4.~4 8 d4 f8
  ees4. g f ees % D
  d4 ees8 f4 ees8 d4 ees8 4 f8
  g4.~4.~4 ees8 f4 g8 % E
  aes4.~4.~4 8 4 8
  g4.~4 ees8 4. d % F
  ees4 bes8 d4 c8 bes4
}

tenor = \relative {
  \autoBeamOff
  bes8
  bes4 8 ees4 bes8
  bes4 aes8 g4 8
  bes4 8 4 d8
  ees4 8 bes4 8
  bes4 8 ees4 bes8 % B
  bes4 aes8 g4 bes8
  bes4 d8 c4 8
  bes4 a8 bes4\fermata r8 r4 r8
  r4 d8 4 8 4 r8 r4 r8 % C
  r4 bes8 4 8 4 8 4 d8
  c4. a a a % D
  bes4 g8 aes4 g8 bes4 bes8 4 8
  ees4 8 4 8 4 bes8 4 ees8 % E
  ees4 8 4 8 4 c8 d4 ees8
  ees4.~4 bes8 4. aes % F
  g4 8 bes4 aes8 g4
}

bass = \relative {
  \autoBeamOff
  ees8
  ees4 8 4 8
  aes,4 c8 ees4 8
  bes4 8 4 8
  ees4 8 4 8
  ees4 8 4 8 % B
  aes,4 c8 ees4 8
  f4 8 4 a8
  bes4 f8 bes,4\fermata r8 r4 r8
  r4 bes8 4 8 4 r8 r4 r8 % C
  r4 ees8 4 8 4 8 f4 8
  f4. f f f % D
  bes,4.~4.~4 ees8 4 8
  ees4 8 4 8 4 8 4 8 % E
  aes4 8 4 8 4 8 4 8
  bes4.~4 8 bes,4. 4.
  ees4.~4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On, come to Me! __
  On, come to Me! __
  The Sa -- viour call -- eth, "\"Come" to Me! __
  Ye hea -- vy -- la -- den, Come to Me! __
  And I will give, will give you "rest.\"" __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Oh, come to Me!
  Oh, come to Me!
  _ _ _ _ _ _ _ _
  Oh, come to Me!
  Ye hea -- vy -- la -- den, hea -- vy -- la -- den,
  Come to Me! Oh, come to Me!
  _ _ _ _ _ _ _ _
  will give you "rest.\""
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Wouldst thou, O wea -- ry soul be blest?
  In Christ the Lord thy Sa -- viour see;
  His grace a -- lone can give thee rest,
  And lo! He call -- eth, "\"Come" to "Me!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He does not wait for great -- er worth,
  Or more of ho -- li -- ness in thee;
  He brings good news to all the earth,
  And still He call -- eth, "\"Come" to "Me!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hast thou not sinned ten thou -- sand times?
  His par -- d'ning grace will set thee free;
  Count un -- be -- lief the worst of crimes,
  And trust thy Sa -- viour's "\"Come" to "Me!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  E -- ter -- nal life is in His word,
  He asks thee now His child to be;
  No sweet -- er sound was ev -- er heard
  Than His most gra -- cious "\"Come" to "Me!\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Be this thine an -- swer now and here:
  "\"Since" Thou hast kind -- ly called for me.
  Thy ten -- der love dis -- pels my fear:
  I come, I come, O Lord, to "Thee!\""
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Wouldst " "thou, " "O " wea "ry " "soul " "be " "blest? "
  "\nIn " "Christ " "the " "Lord " "thy " Sa "viour " "see; "
  "\nHis " "grace " a "lone " "can " "give " "thee " "rest, "
  "\nAnd " "lo! " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! " 
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nHe " "does " "not " "wait " "for " great "er " "worth, "
  "\nOr " "more " "of " ho li "ness " "in " "thee; "
  "\nHe " "brings " "good " "news " "to " "all " "the " "earth, "
  "\nAnd " "still " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! " 
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nHast " "thou " "not " "sinned " "ten " thou "sand " "times? "
  "\nHis " par "d'ning " "grace " "will " "set " "thee " "free; "
  "\nCount " un be "lief " "the " "worst " "of " "crimes, "
  "\nAnd " "trust " "thy " Sa "viour's " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! " 
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nE" ter "nal " "life " "is " "in " "His " "word, "
  "\nHe " "asks " "thee " "now " "His " "child " "to " "be; "
  "\nNo " sweet "er " "sound " "was " ev "er " "heard "
  "\nThan " "His " "most " gra "cious " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! " 
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "5."
  "\nBe " "this " "thine " an "swer " "now " "and " "here: "
  "\n\"Since " "Thou " "hast " kind "ly " "called " "for " "me. "
  "\nThy " ten "der " "love " dis "pels " "my " "fear: "
  "\nI " "come, " "I " "come, " "O " "Lord, " "to " "Thee!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! " 
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Wouldst " "thou, " "O " wea "ry " "soul " "be " "blest? "
  "\nIn " "Christ " "the " "Lord " "thy " Sa "viour " "see; "
  "\nHis " "grace " a "lone " "can " "give " "thee " "rest, "
  "\nAnd " "lo! " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "2."
  "\nHe " "does " "not " "wait " "for " great "er " "worth, "
  "\nOr " "more " "of " ho li "ness " "in " "thee; "
  "\nHe " "brings " "good " "news " "to " "all " "the " "earth, "
  "\nAnd " "still " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "3."
  "\nHast " "thou " "not " "sinned " "ten " thou "sand " "times? "
  "\nHis " par "d'ning " "grace " "will " "set " "thee " "free; "
  "\nCount " un be "lief " "the " "worst " "of " "crimes, "
  "\nAnd " "trust " "thy " Sa "viour's " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "4."
  "\nE" ter "nal " "life " "is " "in " "His " "word, "
  "\nHe " "asks " "thee " "now " "His " "child " "to " "be; "
  "\nNo " sweet "er " "sound " "was " ev "er " "heard "
  "\nThan " "His " "most " gra "cious " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "5."
  "\nBe " "this " "thine " an "swer " "now " "and " "here: "
  "\n\"Since " "Thou " "hast " kind "ly " "called " "for " "me. "
  "\nThy " ten "der " "love " dis "pels " "my " "fear: "
  "\nI " "come, " "I " "come, " "O " "Lord, " "to " "Thee!\" "
  "\nOn, " "come " "to " "Me! " 
  "\nOn, " "come " "to " "Me! " 
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Wouldst " "thou, " "O " wea "ry " "soul " "be " "blest? "
  "\nIn " "Christ " "the " "Lord " "thy " Sa "viour " "see; "
  "\nHis " "grace " a "lone " "can " "give " "thee " "rest, "
  "\nAnd " "lo! " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "2."
  "\nHe " "does " "not " "wait " "for " great "er " "worth, "
  "\nOr " "more " "of " ho li "ness " "in " "thee; "
  "\nHe " "brings " "good " "news " "to " "all " "the " "earth, "
  "\nAnd " "still " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "3."
  "\nHast " "thou " "not " "sinned " "ten " thou "sand " "times? "
  "\nHis " par "d'ning " "grace " "will " "set " "thee " "free; "
  "\nCount " un be "lief " "the " "worst " "of " "crimes, "
  "\nAnd " "trust " "thy " Sa "viour's " "\"Come " "to " "Me!\" "
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "4."
  "\nE" ter "nal " "life " "is " "in " "His " "word, "
  "\nHe " "asks " "thee " "now " "His " "child " "to " "be; "
  "\nNo " sweet "er " "sound " "was " ev "er " "heard "
  "\nThan " "His " "most " gra "cious " "\"Come " "to " "Me!\" "
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "

  \set stanza = "5."
  "\nBe " "this " "thine " an "swer " "now " "and " "here: "
  "\n\"Since " "Thou " "hast " kind "ly " "called " "for " "me. "
  "\nThy " ten "der " "love " dis "pels " "my " "fear: "
  "\nI " "come, " "I " "come, " "O " "Lord, " "to " "Thee!\" "
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nYe " hea vy la "den, " "Come " "to " "Me! " 
  "\nOh, " "come " "to " "Me! "
  "\nOh, " "come " "to " "Me! "
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest, "
  "\nwill " "give " "you " "rest.\" "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Wouldst " "thou, " "O " wea "ry " "soul " "be " "blest? "
  "\nIn " "Christ " "the " "Lord " "thy " Sa "viour " "see; "
  "\nHis " "grace " a "lone " "can " "give " "thee " "rest, "
  "\nAnd " "lo! " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! "
  "\nOn, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nYe " hea vy la "den, " hea "vy " la "den, "
  "\nCome " "to " "Me! " "Oh, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "2."
  "\nHe " "does " "not " "wait " "for " great "er " "worth, "
  "\nOr " "more " "of " ho li "ness " "in " "thee; "
  "\nHe " "brings " "good " "news " "to " "all " "the " "earth, "
  "\nAnd " "still " "He " call "eth, " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! "
  "\nOn, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nYe " hea vy la "den, " hea "vy " la "den, "
  "\nCome " "to " "Me! " "Oh, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "3."
  "\nHast " "thou " "not " "sinned " "ten " thou "sand " "times? "
  "\nHis " par "d'ning " "grace " "will " "set " "thee " "free; "
  "\nCount " un be "lief " "the " "worst " "of " "crimes, "
  "\nAnd " "trust " "thy " Sa "viour's " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! "
  "\nOn, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nYe " hea vy la "den, " hea "vy " la "den, "
  "\nCome " "to " "Me! " "Oh, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "4."
  "\nE" ter "nal " "life " "is " "in " "His " "word, "
  "\nHe " "asks " "thee " "now " "His " "child " "to " "be; "
  "\nNo " sweet "er " "sound " "was " ev "er " "heard "
  "\nThan " "His " "most " gra "cious " "\"Come " "to " "Me!\" "
  "\nOn, " "come " "to " "Me! "
  "\nOn, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nYe " hea vy la "den, " hea "vy " la "den, "
  "\nCome " "to " "Me! " "Oh, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 

  \set stanza = "5."
  "\nBe " "this " "thine " an "swer " "now " "and " "here: "
  "\n\"Since " "Thou " "hast " kind "ly " "called " "for " "me. "
  "\nThy " ten "der " "love " dis "pels " "my " "fear: "
  "\nI " "come, " "I " "come, " "O " "Lord, " "to " "Thee!\" "
  "\nOn, " "come " "to " "Me! "
  "\nOn, " "come " "to " "Me! "
  "\nThe " Sa "viour " call "eth, " "\"Come " "to " "Me! "
  "\nYe " hea vy la "den, " hea "vy " la "den, "
  "\nCome " "to " "Me! " "Oh, " "Come " "to " "Me! " 
  "\nAnd " "I " "will " "give, " "will " "give " "you " "rest.\" " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
