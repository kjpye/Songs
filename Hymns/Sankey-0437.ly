\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Life at best is very Brief."
  subtitle    = "Sankey No. 437"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charles Harrison Mason."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*2 s2.
  \mark \markup { \box "D" } s4 s1*2 s2
  \mark \markup { \box "E" } s2 s1*2
  \mark \markup { \box "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. f16
  g8. 16 8. 16 4 ees8. g16
  bes8. 16 8. 16 4 8. 16
  c8. 16 8. 16 16[ees8.] bes8. g16 % B
  f2. g8. aes16
  bes8. 16 8. 16 4 8. 16
  c8. 16 8. 16 16[ees8.\fermata] ees,8. f16 % C
  g8. 16 8. 16 16[bes8.] f8. g16
  ees2. \bar "||" \break bes'8.^\markup\smallCaps Chorus. 16
  bes2. \tuplet 3/2 {c8[bes] g} % D
  ees'2. d8. c16
  bes8. 16 8. 16 \bar "|" \break c16 bes8. 8. g16
  f2. g8. aes16 % E
  bes8. 16 8. 16 4 8. 16
  c8. 16 8. 16 16[ees8.\fermata] ees,8. f16 % F
  g8. 16 8. 16 16[bes8.] f8. g16
  ees2.
}

alto = \relative {
  \autoBeamOff
  bes8. 16
  ees8. 16 8. 16 4 bes8. ees16
  g8. 16 8. 16 4 ees8. 16
  ees8. 16 8. 16 4 8. 16 % B
  d2. ees8. f16
  g8. 16 8. 16 4 ees8. 16
  ees8. 16 8. 16 4\fermata 8. d16 % C
  ees8. 16 8. 16 d4 8. bes16
  bes2. \once\partCombineApart r4
  \once\partCombineApart r4 g'8. 16 4 r4 % D
  \once\partCombineApart r4 g8. 16 4 bes8. aes16
  g8. 16 8. 16 aes16 g8. 8. ees16
  d2. ees8. f16 % E
  g8. 16 8. 16 4 ees8. 16
  ees8. 16 8. 16 4\fermata 8. d16 % F
  ees8. 16 8. 16 d4 8. bes16
  bes2.
}

tenor = \relative {
  \autoBeamOff
  g8. aes16
  bes8. 16 8. 16  4 g8. bes16
  ees8. 16 8. 16 4 g,8. 16
  aes8. 16 8. 16 c4 ees8. bes16 % B
  bes2. 8. 16
  ees8. 16 8. 16 bes4 g8. 16
  aes8. 16 8. 16 c4\fermata bes8. 16 % C
  bes8. 16 8. g16 f4 aes8. 16
  g2. r4
  r4 ees'8. 16 4 r % D
  r4 bes8. 16 4 8. 16
  ees8. 16 8. 16 16 8. bes8. 16
  bes4 8. 16 4 8. 16 % E
  ees8. 16 8. 16 bes4 g8. 16
  aes8. 16 8. 16 c4\fermata bes8. 16 % F
  bes8. 16 8. g16 f4 aes8. 16
  g2.
}

bass = \relative {
  \autoBeamOff
  ees8. 16
  ees8. 16 8. 16 4 8. 16
  ees8. 16 8. 16 4 8. 16
  aes,8. 16 8. 16 aes'4 g8. ees16 % B
  bes2. ees8. 16
  ees8. 16 8. 16 4 8. 16
  aes,8. 16 8. 16 aes'4\fermata g8. f16 % C
  ees8. 16 8. 16 bes4 8. 16
  ees2. r4
  r4 ees8. 16 4 r % D
  r4 ees8. 16 4 8. 16
  ees8. 16 8. 16 16 8. 8. 16
  bes4 bes'8. 16 8[aes] g8. f16 % E
  ees8. 16 8. 16 4 8. 16
  aes,8. 16 8. 16 aes'4\fermata g8. f16 % F
  ees8. 16 8. 16 bes4 8. 16
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be in time! __ Be in time! __
  While the voice of Je -- sus calls you,
  Be in time! __
  If in sin you long -- er wait,
  You may find no o -- pen gate,
  And your cry be just too late:
  Be in time!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
  Be in time! Be in time!
  _ _ _ _ _ _ _ _
  _ _ _ Be in time!
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Life at best is ve -- ry brief,
  Like the fall -- ing of a leaf,
  Like the bind -- ing of a sheaf:
  Be in time!
  Fleet -- ing days are tell -- ing fast
  That the die will soon be cast,
  And the fa -- tal line be passed:
  Be in time!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fair -- est flow -- ers soon de -- cay,
  Youth and beau -- ty pass a -- way;
  Oh, you have not long to stay:
  Be in time!
  While God's Spi -- rit bids you come,
  Sin -- ner do not long -- er roam,
  Lest you seal your hope -- less doom:
  Be in time!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Time is gli -- ding swift -- ly by,
  Death and judg -- ment draw -- eth nigh,
  To the arms of Je -- sus fly:
  Be in time!
  Oh, I pray you count the cost,
  Ere the fa -- tal line be crossed,
  And your soul in hell be lost:
  Be in time!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Sin -- ner. heed the warn -- ing voice,
  NMake the Lord your fi -- nal choice,
  Then all hea -- ven will re -- joice:
  Be in time!
  Come from dark -- ness in -- to light;
  Come, let Je -- sus make you right;
  Come, and start for heaven to -- night:
  Be in time!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Life " "at " "best " "is " ve "ry " "brief, "
  "\nLike " "the " fall "ing " "of " "a " "leaf, "
  "\nLike " "the " bind "ing " "of " "a " "sheaf: "
  "\nBe " "in " "time! "
  "\nFleet" "ing " "days " "are " tell "ing " "fast "
  "\nThat " "the " "die " "will " "soon " "be " "cast, "
  "\nAnd " "the " fa "tal " "line " "be " "passed: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! "  "Be " "in " "time! " 
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "2."
  "\nFair" "est " flow "ers " "soon " de "cay, "
  "\nYouth " "and " beau "ty " "pass " a "way; "
  "\nOh, " "you " "have " "not " "long " "to " "stay: "
  "\nBe " "in " "time! "
  "\nWhile " "God's " Spi "rit " "bids " "you " "come, "
  "\nSin" "ner " "do " "not " long "er " "roam, "
  "\nLest " "you " "seal " "your " hope "less " "doom: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! "  "Be " "in " "time! " 
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "3."
  "\nTime " "is " gli "ding " swift "ly " "by, "
  "\nDeath " "and " judg "ment " draw "eth " "nigh, "
  "\nTo " "the " "arms " "of " Je "sus " "fly: "
  "\nBe " "in " "time! "
  "\nOh, " "I " "pray " "you " "count " "the " "cost, "
  "\nEre " "the " fa "tal " "line " "be " "crossed, "
  "\nAnd " "your " "soul " "in " "hell " "be " "lost: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! "  "Be " "in " "time! " 
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "4."
  "\nSin" "ner. " "heed " "the " warn "ing " "voice, "
  "\nNMake " "the " "Lord " "your " fi "nal " "choice, "
  "\nThen " "all " hea "ven " "will " re "joice: "
  "\nBe " "in " "time! "
  "\nCome " "from " dark "ness " in "to " "light; "
  "\nCome, " "let " Je "sus " "make " "you " "right; "
  "\nCome, " "and " "start " "for " "heaven " to "night: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! "  "Be " "in " "time! " 
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!"
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Life " "at " "best " "is " ve "ry " "brief, "
  "\nLike " "the " fall "ing " "of " "a " "leaf, "
  "\nLike " "the " bind "ing " "of " "a " "sheaf: "
  "\nBe " "in " "time! "
  "\nFleet" "ing " "days " "are " tell "ing " "fast "
  "\nThat " "the " "die " "will " "soon " "be " "cast, "
  "\nAnd " "the " fa "tal " "line " "be " "passed: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "2."
  "\nFair" "est " flow "ers " "soon " de "cay, "
  "\nYouth " "and " beau "ty " "pass " a "way; "
  "\nOh, " "you " "have " "not " "long " "to " "stay: "
  "\nBe " "in " "time! "
  "\nWhile " "God's " Spi "rit " "bids " "you " "come, "
  "\nSin" "ner " "do " "not " long "er " "roam, "
  "\nLest " "you " "seal " "your " hope "less " "doom: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "3."
  "\nTime " "is " gli "ding " swift "ly " "by, "
  "\nDeath " "and " judg "ment " draw "eth " "nigh, "
  "\nTo " "the " "arms " "of " Je "sus " "fly: "
  "\nBe " "in " "time! "
  "\nOh, " "I " "pray " "you " "count " "the " "cost, "
  "\nEre " "the " fa "tal " "line " "be " "crossed, "
  "\nAnd " "your " "soul " "in " "hell " "be " "lost: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "4."
  "\nSin" "ner. " "heed " "the " warn "ing " "voice, "
  "\nNMake " "the " "Lord " "your " fi "nal " "choice, "
  "\nThen " "all " hea "ven " "will " re "joice: "
  "\nBe " "in " "time! "
  "\nCome " "from " dark "ness " in "to " "light; "
  "\nCome, " "let " Je "sus " "make " "you " "right; "
  "\nCome, " "and " "start " "for " "heaven " to "night: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " 
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!"
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Life " "at " "best " "is " ve "ry " "brief, "
  "\nLike " "the " fall "ing " "of " "a " "leaf, "
  "\nLike " "the " bind "ing " "of " "a " "sheaf: "
  "\nBe " "in " "time! "
  "\nFleet" "ing " "days " "are " tell "ing " "fast "
  "\nThat " "the " "die " "will " "soon " "be " "cast, "
  "\nAnd " "the " fa "tal " "line " "be " "passed: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "2."
  "\nFair" "est " flow "ers " "soon " de "cay, "
  "\nYouth " "and " beau "ty " "pass " a "way; "
  "\nOh, " "you " "have " "not " "long " "to " "stay: "
  "\nBe " "in " "time! "
  "\nWhile " "God's " Spi "rit " "bids " "you " "come, "
  "\nSin" "ner " "do " "not " long "er " "roam, "
  "\nLest " "you " "seal " "your " hope "less " "doom: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "3."
  "\nTime " "is " gli "ding " swift "ly " "by, "
  "\nDeath " "and " judg "ment " draw "eth " "nigh, "
  "\nTo " "the " "arms " "of " Je "sus " "fly: "
  "\nBe " "in " "time! "
  "\nOh, " "I " "pray " "you " "count " "the " "cost, "
  "\nEre " "the " fa "tal " "line " "be " "crossed, "
  "\nAnd " "your " "soul " "in " "hell " "be " "lost: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!\n"

  \set stanza = "4."
  "\nSin" "ner. " "heed " "the " warn "ing " "voice, "
  "\nNMake " "the " "Lord " "your " fi "nal " "choice, "
  "\nThen " "all " hea "ven " "will " re "joice: "
  "\nBe " "in " "time! "
  "\nCome " "from " dark "ness " in "to " "light; "
  "\nCome, " "let " Je "sus " "make " "you " "right; "
  "\nCome, " "and " "start " "for " "heaven " to "night: "
  "\nBe " "in " "time! "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nWhile " "the " "voice " "of " Je "sus " "calls " "you, "
  "\nBe " "in " "time! " "Be " "in " "time! "
  "\nIf " "in " "sin " "you " long "er " "wait, "
  "\nYou " "may " "find " "no " o "pen " "gate, "
  "\nAnd " "your " "cry " "be " "just " "too " "late: "
  "\nBe " "in " "time!"
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
  \bookOutputSuffix "midi-men"
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
            \addlyrics \wordsMidiMen
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

singlescore = {
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
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
