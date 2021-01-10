\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Loves Even Me"
  subtitle    = "Sankey No. 38"
  subsubtitle = "Sankey 880 No. 3"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "P. P. Bliss"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "P. P. B."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*2
  \repeat volta 2 {
    s2.
    \mark \markup { \box "D" } s2. s4.
  }
  \alternative {
    {
      s4. s2.
    }
    {
      s4. s2.
    }
  }
}

soprano = \relative {
  \global
  d'8 d d d d d
  d8 g a b4.
  a8 a a a a g
  b8 b a g4. % B
  d8 d d d d d
  d8 g a b4.
  a8 a a a a g % C
  b8 b a g4.
  \repeat volta 2 {
    d'8 d d d4 b8
    a8 g e e4. % D
    d8 d d
  }
  \alternative {
    {
      a'4.
      d,8 g a b4.
    }
    {
      a4 b8
      g4.~g
    }
  }
}

alto = \relative {
  \global
  b8 b b b b b
  b8 b c d4.
  c8 c c c c b
  d8 d c b4. % B
  b8 b b b b b
  b8 b c d4.
  c8 c c c c b % C
  d8 d c b4.
  \repeat volta 2 {
    g'8 g g g4 d8
    e8 e c c4. % D
    c8 c c
  }
  \alternative {
    {
      c4.
      b8 b c d4.
    }
    {
      c4 d8
      b4.~b
    }
  }
}

tenor = \relative {
  \global
  g8 g g g g g
  g8 g g g4.
  fis8 fis fis fis fis g
  g8 g fis g4. % B
  g8 g g g g g
  g8 g g g4.
  fis8 fis fis fis fis g % C
  g8 g fis g4.
  \repeat volta 2 {
    b8 b b b4 d8
    c8 g g g4. % D
    fis8 fis fis
  }
  \alternative {
    {
      fis4.
      g8 g g g4.
    }
    {
      fis4 fis8
      g4.~g
    }
  }
}

bass= \relative {
  \global
  g8 g g g g g
  g8 g g g4.
  d8 d d d d d
  d8 d d g,4. % B
  g'8 g g g g g
  g8 g g g4.
  d8 d d d d d % C
  d8 d d g,4.
  \repeat volta 2 {
    g'8 g g g4 g8
    c,8 c c c4. % D
    d8 d d
  }
  \alternative {
    {
      d4.
      g8 g g g4.
    }
    {
      d4 d8
      g,4.~g
    }
  }
}

chorus = \lyricmode {
  I am so glad that Je -- sus loves me,
  Je -- sus loves me,
  Jes -- us loves me;
  e -- ven me.
}

chorusSingle = \lyricmode {
  I am so glad that Je -- sus loves me,
  Je -- sus loves me,
  Jes -- us loves me;
  I am so glad that Je -- sus loves me,
  Jes -- us loves 
  e -- ven me.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I am so glad that our Fa -- ther in heav'n
  Tells of His love in the Book He has giv'n;
  Won -- der -- ful things in the Bi -- ble I see:
  This is the dear -- est, that Je -- sus loves me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' I for -- get Him and wan -- der a -- way,
  Still He doth love me wher -- ev -- er I stray;
  Back to His dear lov -- ing arms do I flee;
  When I re -- mem -- ber that Je -- sus loves me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, id there's on -- ly one song I can sing,
  When in His beau -- ty I see the great King,
  This shall my song in e -- tern -- i -- ty be,
  "\"Oh," what a won -- der that Je -- sus loves "me!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus loves me, and I know I love Him;
  Love brought Him down my poor soul to re -- deem;
  Yes, it was love made Him die on the tree:
  Oh, I am cer -- tain that Je -- sus loves me!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  If one should ask of me, how can I tell?
  Glo -- ry to Je -- sus, I know ver -- y well!
  God's Ho -- ly Spir -- it with mine doth a -- gree,
  Con -- stant -- ly wit -- ness -- ing— Je -- sus loves me.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  In this as -- su -- rance I find sweet -- est rest,
  Trust _ -- ing Je -- sus, I know I am blest;
  Sa -- tan, dis -- mayed, from my soul now doth flee,
  When I just tell him that Je -- sus loves me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nI " "am " "so " "glad " "that " "our " Fa "ther " "in " "heav'n "
  "\nTells " "of " "His " "love " "in " "the " "Book " "He " "has " "giv'n; "
  "\nWon" der "ful " "things " "in " "the " Bi "ble " "I " "see: "
  "\nThis " "is " "the " dear "est, " "that " Je "sus " "loves " "me. "

  \set stanza = "2."
  "\nTho' " "I " for "get " "Him " "and " wan "der " a "way, "
  "\nStill " "He " "doth " "love " "me " wher ev "er " "I " "stray; "
  "\nBack " "to " "His " "dear " lov "ing " "arms " "do " "I " "flee; "
  "\nWhen " "I " re mem "ber " "that " Je "sus " "loves " "me. "

  \set stanza = "3."
  "\nOh, " "id " "there's " on "ly " "one " "song " "I " "can " "sing, "
  "\nWhen " "in " "His " beau "ty " "I " "see " "the " "great " "King, "
  "\nThis " "shall " "my " "song " "in " e tern i "ty " "be, "
  "\n\"Oh, " "what " "a " won "der " "that " Je "sus " "loves " "me!\" "

  \set stanza = "4."
  "\nJe" "sus " "loves " "me, " "and " "I " "know " "I " "love " "Him; "
  "\nLove " "brought " "Him " "down " "my " "poor " "soul " "to " re "deem; "
  "\nYes, " "it " "was " "love " "made " "Him " "die " "on " "the " "tree: "
  "\nOh, " "I " "am " cer "tain " "that " Je "sus " "loves " "me! "

  \set stanza = "5."
  "\nIf " "one " "should " "ask " "of " "me, " "how " "can " "I " "tell? "
  "\nGlo" "ry " "to " Je "sus, " "I " "know " ver "y " "well! "
  "\nGod's " Ho "ly " Spir "it " "with " "mine " "doth " a "gree, "
  "\nCon" stant "ly " wit ness "ing— " Je "sus " "loves " "me. "

  \set stanza = "6."
  "\nIn " "this " as su "rance " "I " "find " sweet "est " "rest, "
  "\nTrust " _ "ing " Je "sus, " "I " "know " "I " "am " "blest; "
  "\nSa" "tan, " dis "mayed, " "from " "my " "soul " "now " "doth " "flee, "
  "\nWhen " "I " "just " "tell " "him " "that " Je "sus " "loves " "me. "
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
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
            \new Lyrics \lyricsto "soprano"   \wordsFive
            \new Lyrics \lyricsto "soprano"   \wordsSix
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%        >>
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
            \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack
                         \RehearsalTrack \RehearsalTrack \RehearsalTrack }
            \new Voice = "soprano" { \voiceOne \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "alto"    { \voiceTwo \alto \alto \alto \alto \alto \alto }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorusSingle
                                              \wordsTwo   \chorusSingle
                                              \wordsThree \chorusSingle
                                              \wordsFour  \chorusSingle
                                              \wordsFive  \chorusSingle
                                              \wordsSix   \chorusSingle
                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor \tenor \tenor \tenor \tenor \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  \bass  \bass  \bass  \bass  \bass  }
          >>
        >>
%        >>
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack
                         \RehearsalTrack \RehearsalTrack \RehearsalTrack }
            \new Voice = "soprano" { \voiceOne \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "alto"    { \voiceTwo \alto \alto \alto \alto \alto \alto }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor \tenor \tenor \tenor \tenor \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  \bass  \bass  \bass  \bass  \bass  }
          >>
        >>
%        >>
      >>
    >>
  }
}
