\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Love to Tell the Story."
  subtitle    = "Sankey No. 46"
  subsubtitle = "Sankey 880 No. 51"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. G. Fischer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Miss Hankey"
  meter       = "7.6. D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
  \mark \markup { \box "E" } s4 s1*3 s2.
}

soprano = \relative {
  ees'4
  aes4. ees8 ees4 aes
  c4.(bes8) aes4 aes
  aes4. f8 bes(aes) f4
  ees2. \bar "|" \break \partial 4 ees4
  bes'4. a8 bes4 c % B
  bes4 aes2 aes8(c)
  ees4. c8 c(bes) aes4
  bes2. \bar "|" \break \partial 4 bes4
  bes4. c8 des4 des
  des4 c2 c4
  c4. bes8 aes4 bes8(aes)
  g2. \bar "|" \break \partial 4 g4
  f4. g8 aes4 f % D
  f4 ees2 aes4
  bes4. aes8 c4. bes8
  aes2.  \bar "|" \break \partial 4 ees4^\markup \smallCaps Chorus.
  ees4. g8 bes4. c8 % E
  bes4 aes2 bes4
  aes4. des8 des4 des
  des4 c2
}

alto = \relative {
  c'4
  c4. 8 4 4
  ees4.(des8) c4 ees
  f4. des8 f4 des
  c2. ees4
  des4. c8 des4 ees % B
  ees4 ees2 ees4
  aes4. ees8 ees4 ees
  g2. ees4
  ees4. ees8 ees4 ees % C
  ees4 ees2 ees4
  aes4. g8 f4 g8(f)
  e2. e4
  f4. ees8 f4 des % D
  des4 c2 ees4
  g4. aes8 aes4. ees8
  ees2. c4
  d4. d8 d4. ees8
  ees4 ees2 ees4
  f4. f8 f4 f
  f4 ees2
}

tenor = \relative {
  aes4
  aes4. 8 4 4
  aes2 4 4
  aes4. 8 4 4
  aes2. aes4
  g4. fis8 g4 aes % B
  des4 c2 aes4
  c4. ees8 ees(des) c4
  ees2. g,4
  g4. aes8 bes4 bes % X
  bes4 aes2 aes4
  aes4. bes8 c4 c
  c2. bes4
  aes4. 8 4 4
  aes4 2 c4
  des4. c8 ees4. des8
  c2. aes4
  g4. 8 4. aes8 % E
  des4 c2 aes4
  aes4. 8 4 4
  aes4 aes2
}

bass= \relative {
  aes,4 aes4. 8 4 c8(ees)
  aes2 aes,4 c
  des4. 8 4 4
  aes2. aes8(c)
  ees4. 8 4 4 % B
  aes,4 aes2 aes'4
%  aes4. << {aes8 aes4 aes4} \new Voice { \teeny aes,8 aes4 c8 \normalsize } >>
  aes4. <\tweak font-size $-2 aes,8 aes'> <\tweak font-size #-2 aes4 aes'>  <\tweak font-size #-2 aes aes'>
  ees'2. ees4
  ees4. 8 4 4 % C
  aes4 aes2 aes4
  g4. 8 4 4
  c2. c,4
  des4. 8 4 4 % D
  aes4 2 4
  ees'4. 8 4. 8
  aes,2. ees'4
  ees4. 8 4. 8 % E
  <aes, ees'>4 q2 <aes c>4
  des4. 8 4 4
  aes4 2
}

chorus = \lyricmode {
  I love to tell the Sto -- ry.
  'T'will be my theme in glo -- ry.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I love to tell the Sto -- ry
  Of un -- seen things a -- bove,
  Of Je -- sus and His Glo -- ry,
  Of Je -- sus and His love.
  I love to tell the Sto -- ry,
  Be -- cause I know it's true;
  It sat -- is -- fies my long -- ings
  As no -- thing else can do.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I love to tell the Sto -- ry:
  More won -- der -- ful it seems
  Than all the gold -- en fan -- cies
  Of all our gold -- en dreams.
  I love to tell the Sto -- ry:
  It did so much for me;
  Amd that is just the rea -- son
  I tell it now to thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I love to tell the Sto -- ry:
  'Tis plea -- sant to re -- peat
  What seems, each time I tell it,
  More won -- der -- ful -- ly sweet.
  I love to tell the Sto -- ry:
  For some have nev -- er heard
  The mes -- sage of sal -- va -- tion
  From God's own Ho -- ly Word.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I love to tell the Sto -- ry:
  For those who know it best
  Seem hun -- ger -- ing and thirst -- ing
  To hear it, like the rest.
  And when, in scenes of glo -- ry,
  I sing the \markup \smallCaps New, \markup \smallCaps New \markup \smallCaps Song,
  'Twill be— the \markup \smallCaps Old, \markup \smallCaps Old \markup \smallCaps Sto -- \markup \smallCaps ry
  That I have loved so long.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "love " "to " "tell " "the " Sto "ry "
  "\nOf " un "seen " "things " a "bove, "
  "\nOf " Je "sus " "and " "His " Glo "ry, "
  "\nOf " Je "sus " "and " "His " "love. "
  "\nI " "love " "to " "tell " "the " Sto "ry, "
  "\nBe" "cause " "I " "know " "it's " "true; "
  "\nIt " sat is "fies " "my " long "ings "
  "\nAs " no "thing " "else " "can " "do. "
  "\nI " "love " "to " "tell " "the " Sto "ry. "
  "\n'T'will " "be " "my " "theme " "in " glo "ry. "

  \set stanza = "2."
  "\nI " "love " "to " "tell " "the " Sto "ry: "
  "\nMore " won der "ful " "it " "seems "
  "\nThan " "all " "the " gold "en " fan "cies "
  "\nOf " "all " "our " gold "en " "dreams. "
  "\nI " "love " "to " "tell " "the " Sto "ry: "
  "\nIt " "did " "so " "much " "for " "me; "
  "\nAmd " "that " "is " "just " "the " rea "son "
  "\nI " "tell " "it " "now " "to " "thee. "
  "\nI " "love " "to " "tell " "the " Sto "ry. "
  "\n'T'will " "be " "my " "theme " "in " glo "ry. "

  \set stanza = "3."
  "\nI " "love " "to " "tell " "the " Sto "ry: "
  "\n'Tis " plea "sant " "to " re "peat "
  "\nWhat " "seems, " "each " "time " "I " "tell " "it, "
  "\nMore " won der ful "ly " "sweet. "
  "\nI " "love " "to " "tell " "the " Sto "ry: "
  "\nFor " "some " "have " nev "er " "heard "
  "\nThe " mes "sage " "of " sal va "tion "
  "\nFrom " "God's " "own " Ho "ly " "Word. "
  "\nI " "love " "to " "tell " "the " Sto "ry. "
  "\n'T'will " "be " "my " "theme " "in " glo "ry. "

  \set stanza = "4."
  "\nI " "love " "to " "tell " "the " Sto "ry: "
  "\nFor " "those " "who " "know " "it " "best "
  "\nSeem " hun ger "ing " "and " thirst "ing "
  "\nTo " "hear " "it, " "like " "the " "rest. "
  "\nAnd " "when, " "in " "scenes " "of " glo "ry, "
  "\nI " "sing " "the " \markup \smallCaps  "New, " \markup \smallCaps "New " \markup \smallCaps "Song, "
  "\n'Twill " "be— " "the " \markup \smallCaps "Old, " \markup \smallCaps "Old " \markup \smallCaps "Sto " \markup \smallCaps "ry "
  "\nThat " "I " "have " "loved " "so " "long. "
  "\nI " "love " "to " "tell " "the " Sto "ry. "
  "\n'T'will " "be " "my " "theme " "in " glo "ry. "
}
  
\book {
  \bookOutputSuffix "repeat"
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
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." }
                                              { \global \alto }
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
            \new Voice = "men" \partCombine { \global \tenor }
                                            { \global \bass }
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
  
nl = { \bar "||" \partial 4 }

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
