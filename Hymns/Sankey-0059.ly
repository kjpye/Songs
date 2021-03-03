\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, the Love that Sought me!"
  subtitle    = "Sankey No. 59"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. J. Gordon, D.D."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Spencer Walton."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*5
  \mark \markup { \box "D" } s2.*5
  \mark \markup { \box "E" } s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8 s2.*12
  s4. \tempo 4=40 s4. \tempo 4=120
  s2.*9 s4. s4
}

soprano = \relative {
  d'8
  d4 g8 g4 a8
  g4. fis4 g8
  a4 gis8 a4 b8
  g4.~g4 d8 \break
  d4 b'8 4 c8 % B
  b4. a4 8
  a4 fis8 g4 e8
  d4.~4 d8 \break
  c'4 8 b4 8 % C
  a4 8 g4 8
  e4 8
  a4 g8
  f4. e
  d4.~4.\fermata \bar "||" \break
  d4^\markup\smallCaps Chorus. g8 4 a8 % D
  g4. fis
  d4 a'8 4 b8
  a4. g
  b4 c8 d4 b8 \break
  c4 a8 b4 g8 % E
  a4.~4.
  b4 d8 c4 a8
  g4 g8 fis4 a8
  g4.~4
}

alto = \relative {
  d'8
  d4 8 4 8
  d4. 4 8
  d4 8 4 fis8
  d4.~4 d8
  d4 g8 4 8 % B
  e4. 4 g8
  fis4 d8 e4 cis8
  d4.~4 d8
  d4 8 4 8 % C
  d4 8 4 8
  cis4 8 4 8
  d4. cis
  d4.(c\fermata)
  b4 d8 4 8 % D
  d4. d
  d4 8 4 8
  d4. d
  g4 a8 b4 g8
  a4 d,8 4 8 % E
  fis4.~fis
  g4 f8 e4 e8
  d4 8 4 8
  d4.~4
}

tenor = \relative {
  b8
  b4 8 4 c8
  b4. a4 b8
  c4 b8 c4 d8
  b4.~4 b8
  b4 d8 4 e8 % B
  d4. c4 e8
  d4 a8 a4 g8
  fis4.~4 8
  fis4 8 g4 8 % C
  c4 8 b4 8
  a4 8 e4 a8
  a4. g
  fis4.~4.
  g4 b8 4 c8 % D
  b4. a
  c4 8 4 d8
  c4. b d4 8 4 8
  d4 8 4 b8 % E
  d4.~d
  d4 b8 g4 c8
  b4 8 a4 c8
  b4.~4
}

bass= \relative {
  g8
  g4 8 4 8
  d4. 4 8
  d4 8 4 8
  g4.~4 8
  g4 8 4 8 % B
  c,4. 4 cis8
  d4 8 a4 8
  d4.~4 8
  d4 8 4 8 % C
  d4 8 g4 8
  a4 a,8 4 8
  a4. a
  d4.~4.\fermata
  g,4 g'8 4 8 % D
  d4. d
  fis4 8 d4 8
  g4. <g, g'>
  g'4 8 4 8
  fis4 8 g4 8 % E
  d4.~4.
  g4 8 c,4 8
  d4 8 4 8
  g4.~4
}

chorus = \lyricmode {
  Oh, the love that sought me!
  Oh, the love that bought me!
  Oh, the grace that brought me to the fold,
  Won -- drous grace that brought me to the fold!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In ten -- der -- ness He sought me,
  Wea -- ry and sick with sin,
  And on His shoul -- ders brought me
  Back to His fold a -- gain!
  While an -- gels in His pre -- sence sang,
  un -- til the courts of hea -- ven rang.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He found me bruised and dy -- ing,
  And pour'd in oil and wine;
  He whis -- per'd to as -- sure me,
  "\"I've" found thee— thou art "Mine\!"
  I nev -- er heard a sweet -- er voice,
  It made my ach -- ing heart re -- joice!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He point -- ed to the mail -- prints,
  For me His blood was shed;
  A mock -- ing crown so thorn -- y
  Was placed up -- on His head:
  I won -- der'd what He swa in me
  To suf -- fer such deep ag -- o -- ny,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I'm sit -- ting in His pre -- sence,
  The sun -- shine of His face,
  While with a -- dor -- ing won -- der
  His bless -- ings I re -- trace.
  It seems as if e -- ter -- nal days
  Are far too short to sound His praise.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  So while the hours are pass -- ing,
  All now is per -- fect rest;
  I'm wait -- ing for the morn -- ing,
  The bright -- est and the best,
  When He will call us to His side,
  To be with Him, His spot -- less bride.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " ten der "ness " "He " "sought " "me, "
  "\nWea" "ry " "and " "sick " "with " "sin, "
  "\nAnd " "on " "His " shoul "ders " "brought " "me "
  "\nBack " "to " "His " "fold " a "gain! "
  "\nWhile " an "gels " "in " "His " pre "sence " "sang, "
  "\nun" "til " "the " "courts " "of " hea "ven " "rang. "
  "\nOh, " "the " "love " "that " "sought " "me! "
  "\nOh, " "the " "love " "that " "bought " "me! "
  "\nOh, " "the " "grace " "that " "brought " "me " "to " "the " "fold, "
  "\nWon" "drous " "grace " "that " "brought " "me " "to " "the " "fold! "

  \set stanza = "2."
  "\nHe " "found " "me " "bruised " "and " dy "ing, "
  "\nAnd " "pour'd " "in " "oil " "and " "wine; "
  "\nHe " whis "per'd " "to " as "sure " "me, "
  "\n\"I've " "found " "thee— " "thou " "art " "Mine\! "
  "\nI " nev "er " "heard " "a " sweet "er " "voice, "
  "\nIt " "made " "my " ach "ing " "heart " re "joice! "
  "\nOh, " "the " "love " "that " "sought " "me! "
  "\nOh, " "the " "love " "that " "bought " "me! "
  "\nOh, " "the " "grace " "that " "brought " "me " "to " "the " "fold, "
  "\nWon" "drous " "grace " "that " "brought " "me " "to " "the " "fold! "

  \set stanza = "3."
  "\nHe " point "ed " "to " "the " mail "prints, "
  "\nFor " "me " "His " "blood " "was " "shed; "
  "\nA " mock "ing " "crown " "so " thorn "y "
  "\nWas " "placed " up "on " "His " "head: "
  "\nI " won "der'd " "what " "He " "swa " "in " "me "
  "\nTo " suf "fer " "such " "deep " ag o "ny, "
  "\nOh, " "the " "love " "that " "sought " "me! "
  "\nOh, " "the " "love " "that " "bought " "me! "
  "\nOh, " "the " "grace " "that " "brought " "me " "to " "the " "fold, "
  "\nWon" "drous " "grace " "that " "brought " "me " "to " "the " "fold! "

  \set stanza = "4."
  "\nI'm " sit "ting " "in " "His " pre "sence, "
  "\nThe " sun "shine " "of " "His " "face, "
  "\nWhile " "with " a dor "ing " won "der "
  "\nHis " bless "ings " "I " re "trace. "
  "\nIt " "seems " "as " "if " e ter "nal " "days "
  "\nAre " "far " "too " "short " "to " "sound " "His " "praise. "
  "\nOh, " "the " "love " "that " "sought " "me! "
  "\nOh, " "the " "love " "that " "bought " "me! "
  "\nOh, " "the " "grace " "that " "brought " "me " "to " "the " "fold, "
  "\nWon" "drous " "grace " "that " "brought " "me " "to " "the " "fold! "

  \set stanza = "5."
  "\nSo " "while " "the " "hours " "are " pass "ing, "
  "\nAll " "now " "is " per "fect " "rest; "
  "\nI'm " wait "ing " "for " "the " morn "ing, "
  "\nThe " bright "est " "and " "the " "best, "
  "\nWhen " "He " "will " "call " "us " "to " "His " "side, "
  "\nTo " "be " "with " "Him, " "His " spot "less " "bride. "
  "\nOh, " "the " "love " "that " "sought " "me! "
  "\nOh, " "the " "love " "that " "bought " "me! "
  "\nOh, " "the " "grace " "that " "brought " "me " "to " "the " "fold, "
  "\nWon" "drous " "grace " "that " "brought " "me " "to " "the " "fold! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
