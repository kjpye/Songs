\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I will Sing of Jesus"
  subtitle    = "Sankey No. 36"
  subsubtitle = "C. C. No 75"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "H. H. McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "E. A. barnes " \italic "(arr.)." }

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

verses = 4

global = {
  \key c \major
  \time 9/8
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s4. s2.*4 s4.*3 % not an accurate representaion, vut it will have to do
    \mark \markup { \box "B" } s4. s2.*4 s4.*3
    \mark \markup { \box "C" } s4. s1.*2
    \mark \markup { \box "D" } s1.*3
    \mark \markup { \box "E" } s1.*2 s2. s4.
  }
}

TempoTrack = {
  \repeat volta \verses {
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    e'4 g8
    c4.~4 b8 d([c]) a
    g4. e g4 c8
    b4.~4 g8 g([a]) b
    c4.~c \bar "||" \break e,4 g8
    c4.~4 b8 d([c]) a % B
    g4. e g4 c8
    b4.~4 d8 c([b]) a
    g4.~g \bar "||" \break g4 b8 \time 12/8
    d2.~4 d8 d([e]) d % C
    c4. c2. c4 c8 \break
    c2.~4 c8 c([b]) c % D
    d2.~4. g,4 c8
    e2.~4 d8 c([d]) e \break
    f4. a,2. b4 a8 % E
    g4 a8 b4 c8 d4.~4 b8
    c2.~4.
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    c'4 e8
    g4.~4 g8 f4 f8
    e4. c e4 g8
    f4.~4 f8 f4 f8
    e4.~e \bar "||" \break c4 e8
    g4.~4 g8 f4 f8 % B
    e4. c e4 g8
    g4.~4 g8 fis4 fis8
    g4.~4. \bar "||" \time 12/8 \partial 4. g4 g8
    f2.~4 f8 f(g) f % C
    e4. g2. g4 g8
    f2.~4 f8 fis4 fis8 % D
    g2.~4. g4 e8
    g2.~4 f8 e(f) g
    a4. f2. d4 d8 % E
    e4 e8 r4 e8 f4.~4 f8
    e2.~4.
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    g4 c8
    e4.~4 d8 c4 c8
    c4. c c4 c8
    d4.~4 d8 b([c]) d
    c4.~c \bar "||" g4 c8
    e4.~e4 d8 c4 c8 % B
    c4. c c4 c8
    d4.~4 b8 a8 d c
    b4.~b \bar "||" \time 12/8 \partial 4. r4.
    r4. d4 d8 b4. r4. % C
    r4 c8 c4 c8 e4 e8 c4 c8
    a4. a a c % D
    b2.~4. c4 c8
    c4. c c c
    c4 c8 c4 c8 c4 c8 c4 c8 % E
    c4 c8 d4 c8 b4.~4 g8
    g2.~4.
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    c4 c8
    c4.~4
    e8 a4 f8
    c4. c c4 e8
    g4.~4
    g8 g4 g8
    c,4.~c c4 c8
    c4.~4 e8 a4 f8 % B
    c4. c c4 e8
    g4.~4 b,8 d4 d8
    g4.~4. \time 12/8 \partial 4. r4.
    r4. g8 b d g,4. r4. % C
    r4 c,8 c e g c4 c8 e,4 e8
    f4. f4(e8) d4. a' % D
    g2.~4(f8) e4 g8
    c4. bes a g
    f4 f8 f4 f8 f4 f8 fis4 fis8 % E
    g4 g8 g4 g8 g4.~4 g8
    c,2.~4.
  }
}

chorusWomen = \lyricmode {
  I will praise __ my great Re -- deem -- er, __
  As my days __ are on the wing: __
  I will sing __ of Him who saves me, __
  I will mag -- ni -- fy the Lord my King.
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
}

chorusMen = \lyricmode {
  I will praise my great Re -- deem -- er
  As my days are on the wing; __
  I will sing, will sing,
  will sing of Him who saves me,
  I will mag -- ni -- fy the Lord my King.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I will sing the \markup \italic love of Je -- sus—
  Great -- er love was nev -- er known!
  Yield -- ing up His life for sin -- ners,
  Oh, what love to me was shown!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I will sing the \markup \italic words of Je -- sus—
  Words of life from  lips Di -- vine;
  Full of com -- fort, joy and cour -- age,
  Prec -- ious to this soul of mine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I will sing the \markup \italic grace of Je -- sus—
  Grace my heart may now re -- ceive;
  He by faith will seal my par -- don,
  If His prom -- ise I be -- lieve.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I will sing the \markup \italic name of Je -- sus—
  Name of all most dear to mel
  By the ran -- somed host in glo -- ry
  Shall His name ex -- alt -- ed be.
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "\nI " "will " "sing " "the " "\markup " "\italic " "love " "of " Je "sus— "
  "\nGreat" "er " "love " "was " nev "er " "known! "
  "\nYield" "ing " "up " "His " "life " "for " sin "ners, "
  "\nOh, " "what " "love " "to " "me " "was " "shown! "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "2."
  "\nI " "will " "sing " "the " "\markup " "\italic " "words " "of " Je "sus— "
  "\nWords " "of " "life " "from "  "lips " Di "vine; "
  "\nFull " "of " com "fort, " "joy " "and " cour "age, "
  "\nPrec" "ious " "to " "this " "soul " "of " "mine. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "3."
  "\nI " "will " "sing " "the " "\markup " "\italic " "grace " "of " Je "sus— "
  "\nGrace " "my " "heart " "may " "now " re "ceive; "
  "\nHe " "by " "faith " "will " "seal " "my " par "don, "
  "\nIf " "His " prom "ise " "I " be "lieve. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "4."
  "\nI " "will " "sing " "the " "\markup " "\italic " "name " "of " Je "sus— "
  "\nName " "of " "all " "most " "dear " "to " "mel "
  "\nBy " "the " ran "somed " "host " "in " glo "ry "
  "\nShall " "His " "name " ex alt "ed " "be. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "\nI " "will " "sing " "the " "\markup " "\italic " "love " "of " Je "sus— "
  "\nGreat" "er " "love " "was " nev "er " "known! "
  "\nYield" "ing " "up " "His " "life " "for " sin "ners, "
  "\nOh, " "what " "love " "to " "me " "was " "shown! "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "2."
  "\nI " "will " "sing " "the " "\markup " "\italic " "words " "of " Je "sus— "
  "\nWords " "of " "life " "from "  "lips " Di "vine; "
  "\nFull " "of " com "fort, " "joy " "and " cour "age, "
  "\nPrec" "ious " "to " "this " "soul " "of " "mine. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "3."
  "\nI " "will " "sing " "the " "\markup " "\italic " "grace " "of " Je "sus— "
  "\nGrace " "my " "heart " "may " "now " re "ceive; "
  "\nHe " "by " "faith " "will " "seal " "my " par "don, "
  "\nIf " "His " prom "ise " "I " be "lieve. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "

  \set stanza = "4."
  "\nI " "will " "sing " "the " "\markup " "\italic " "name " "of " Je "sus— "
  "\nName " "of " "all " "most " "dear " "to " "mel "
  "\nBy " "the " ran "somed " "host " "in " glo "ry "
  "\nShall " "His " "name " ex alt "ed " "be. "
  "\nI " "will " "praise " "my " "great " Re deem "er "
  "\nAs " "my " "days " "are " "on " "the " "wing; " 
  "\nI " "will " "sing, " "will " "sing, "
  "\nwill " "sing " "of " "Him " "who " "saves " "me, "
  "\nI " "will " mag ni "fy " "the " "Lord " "my " "King. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorusWomen }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto tenor { \emptyVerse \chorusMen }
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
  }
}
  
\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorusWomen
                                              \wordsTwo   \chorusWomen
                                              \wordsThree \chorusWomen
                                              \wordsFour  \chorusWomen
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "tenor" { \emptyVerse \chorusMen
                                            \emptyVerse \chorusMen
                                            \emptyVerse \chorusMen
                                            \emptyVerse  \chorusMen
                                          }
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
  }
}
  
\book {
  \bookOutputSuffix "midi-women"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidiWomen
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
%            \new Lyrics \lyricsto "soprano" \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi-men"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "soprano" \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
