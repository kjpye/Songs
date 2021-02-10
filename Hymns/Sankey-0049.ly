\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Love of Jesus"
  subtitle    = "Sankey No. 49"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Robert Bruce"
  meter       = "7.6."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
}

soprano = \relative {
  d'4 d e d
  g4 a b2
  d4. e8 d4 b
  b2 a
  d,4 d e d
  g4 a b2 % B
  d4. e8 d4 b
  a2 g \bar "||"
  b2^\markup\smallCaps Chorus. a4 b
  g4 e d2
  b'2 a4 g % C
  b4 d d2
  d4. e8 d4 b
  a4 g e g
  d4 g b g
  a2 g
}

alto = \relative {
  b4 b c b
  d4 fis g2
  g4. 8 4 d
  d2 d
  b4 b c b
  d4 fis g2 % B
  g4. 8 4 4
  fis2 g \bar "||"
  g2 4 4
  d4 c b2
  g'2 4 4 % C
  d4 fis g2
  g4. 8 4 d
  c4 b c c
  b4 d g g
  fis2 g
}

tenor = \relative {
  g4 g g g
  b4 d d2
  b4. c8 b4 g
  g2 fis
  g4 g g g
  b4 d d2 % B
  b4. c8 b4 d
  c2 b \bar "||"
  d2 c4 d
  b4 g g2
  d'2 c4 b % C
  g4 a b2
  b4. c8 b4 g
  fis4 g g g
  g4 b d d
  c2 b
}

bass= \relative {
  g4 g g g
  g4 d g2
  g4. 8 4 4
  d2 d
  g4 g g g
  g4 d g2 % B
  g4. 8 4 4
  d2 g, \bar "||"
  g'2 4 4
  g4 4 2
  g2 4 4 % C
  g4 d g,2
  g'4. 8 4 4
  d4 e c e
  g4 g g b,
  d2 g,
}

chorus = \lyricmode {
  He will my soul de -- fend;
  He, my un -- chang -- ing Friend;
  He will keep me to the end:
  All glo -- ry be to Je -- sus!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  What a bless -- ed hope is mine,
  Thro' the love of Je -- sus!
  I'm an heir of life Di -- vine,
  Thro' the love of Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I can sing with -- out a fear,
  Praise the name of Je -- sus!
  He, my pres -- ent help, is near,
  Praise the name of Je -- sus!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Press -- ing on my pil -- grim way,
  Trust -- ing on -- ly Je -- sus!
  Oh, 'tis joy from day to day,
  Trust -- ing on -- ly Je -- sus!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thus my jour -- ney I'll pur -- sue,
  Look -- ing un -- to Je -- sus!
  Till the land of rest I view,
  There to dwell with Je -- sus!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "a " bless "ed " "hope " "is " "mine, "
  "\nThro' " "the " "love " "of " Je "sus! "
  "\nI'm " "an " "heir " "of " "life " Di "vine, "
  "\nThro' " "the " "love " "of " Je "sus! "
  "\nHe " "will " "my " "soul " de "fend; "
  "\nHe, " "my " un chang "ing " "Friend; "
  "\nHe " "will " "keep " "me " "to " "the " "end: "
  "\nAll " glo "ry " "be " "to " Je "sus! "

  \set stanza = "2."
  "\nI " "can " "sing " with "out " "a " "fear, "
  "\nPraise " "the " "name " "of " Je "sus! "
  "\nHe, " "my " pres "ent " "help, " "is " "near, "
  "\nPraise " "the " "name " "of " Je "sus! "
  "\nHe " "will " "my " "soul " de "fend; "
  "\nHe, " "my " un chang "ing " "Friend; "
  "\nHe " "will " "keep " "me " "to " "the " "end: "
  "\nAll " glo "ry " "be " "to " Je "sus! "

  \set stanza = "3."
  "\nPress" "ing " "on " "my " pil "grim " "way, "
  "\nTrust" "ing " on "ly " Je "sus! "
  "\nOh, " "'tis " "joy " "from " "day " "to " "day, "
  "\nTrust" "ing " on "ly " Je "sus! "
  "\nHe " "will " "my " "soul " de "fend; "
  "\nHe, " "my " un chang "ing " "Friend; "
  "\nHe " "will " "keep " "me " "to " "the " "end: "
  "\nAll " glo "ry " "be " "to " Je "sus! "

  \set stanza = "4."
  "\nThus " "my " jour "ney " "I'll " pur "sue, "
  "\nLook" "ing " un "to " Je "sus! "
  "\nTill " "the " "land " "of " "rest " "I " "view, "
  "\nThere " "to " "dwell " "with " Je "sus! "
  "\nHe " "will " "my " "soul " de "fend; "
  "\nHe, " "my " un chang "ing " "Friend; "
  "\nHe " "will " "keep " "me " "to " "the " "end: "
  "\nAll " glo "ry " "be " "to " Je "sus! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
}
  
\book {
  \bookOutputSuffix "single"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
