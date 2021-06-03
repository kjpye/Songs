\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Pearl of Greatest Price."
  subtitle    = "Sankey No. 88"
  subsubtitle = "Sankey 880 No. 242"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Mason."
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
  \mark \markup { \box "C" } s4. s2.*3 s4.
  \mark \markup { \box "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.
  s2.*14
  s2 \tempo 4=25 s8. \tempo 4=120 s16
  s4.
}

soprano = \relative {
  d'8 d8. g16
  b4. c8 b8. a16
  g2 4
  a4. 8 b8. c16
  b4. \bar "||" \break \partial 4. d,8 8. g16
  b4. c8 b8. a16
  g2 b4
  a4. 8 b8. cis16
  d4. \bar "||" \break \partial 4. d8^\markup\smallCaps Chorus. 8.-> e16
  d4. b8 8. a16 % C
  g2 4
  a4. 8 b8. c16
  b4. \bar "||" \break \partial 4. d8 8. e16
  d4. b8 8. a16 % D
  g2 c4
  b4. g8 a8.\fermata g16
  g4.
}

alto = \relative {
  b8 8. 16
  d4. e8 d8. c16
  b2 d4
  fis4. 8 g8. a16
  g4. b,8 8. 16
  d4. 8 dis8. 16 % B
  e2 g4
  fis4. 8 g8. 16
  fis4. 8 8.-> 16
  g4. 8 fis8. 16 % C
  g2 4
  fis4. 8 g8. a16
  g4. 8 8.-> 16
  g4. 8 fis8. 16 % D
  e2 g4
  g4. d8 8.\fermata 16
  d4.
}

tenor = \relative {
  g8 8. 16
  g4. 8 fis8. 16
  g2 b4
  d4. 8 8. 16
  d4. g,8 8. 16
  g4. 8 a8. 16 % B
  b2 d4
  d4. 8 e8. a,16
  a4. d8 c8. 16
  b4. d8 8. c16 % C
  b2 4
  d4. 8 8. 16
  d4. b8 8. c16
  b4. 8 8. c16 % D
  b2 e4
  d4. b8 c8.\fermata b16
  b4.
}

bass= \relative {
  g8 8. 16
  g4. c,8 d8. 16
  g,2 g'4
  d4. 8 8. 16
  g4. 8 8. 16
  g4. 8 fis8. 16 % B
  e2 4
  a4. 8 8. 16
  d,4. 8 8. 16
  d4. 8 8. 16 % C
  g2 4
  d4. 8 8. 16
  g4. 8 8. 16
  g4. 8 dis8. 16 % D
  e2 c4
  d4. 8 8.\fermata 16
  g,4.
}

chorus = \lyricmode {
  I've found the pearl of great -- est price!
  My heart doth sing for joy;
  And sing I must, for Christ is mine!
  Christ shall my song em -- ploy!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I've found the pearl of great -- est price!
  My heart doth sing for joy;
  And sing I must, for Christ is mine!
  Christ shall my song em -- ploy.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Christ is my Pro -- phet, Priest, and King;
  My Pro -- phet full of light,
  My great High Priest be -- fore the throne,
  My King of heaven -- ly might.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For He in -- deed is Lord of lords,
  And He the King of kings;
  He is the Sun of Right -- eous -- ness,
  With heal -- ing in His wings.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Christ is my peace; He died for me,
  For me He shed His blood;
  And as my wond -- rous Sac -- ri -- fice,
  Of -- fered Him -- self to God.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Christ Je -- sus is my All in All,
  My com -- fort, and my love;
  My life be -- low; and He shall be
  My joy and crown a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy. "
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy! "

  \set stanza = "2."
  "\nChrist " "is " "my " Pro "phet, " "Priest, " "and " "King; "
  "\nMy " Pro "phet " "full " "of " "light, "
  "\nMy " "great " "High " "Priest " be "fore " "the " "throne, "
  "\nMy " "King " "of " heaven "ly " "might. "
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy! "

  \set stanza = "3."
  "\nFor " "He " in "deed " "is " "Lord " "of " "lords, "
  "\nAnd " "He " "the " "King " "of " "kings; "
  "\nHe " "is " "the " "Sun " "of " Right eous "ness, "
  "\nWith " heal "ing " "in " "His " "wings. "
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy! "

  \set stanza = "4."
  "\nChrist " "is " "my " "peace; " "He " "died " "for " "me, "
  "\nFor " "me " "He " "shed " "His " "blood; "
  "\nAnd " "as " "my " wond "rous " Sac ri "fice, "
  "\nOf" "fered " Him "self " "to " "God. "
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy! "

  \set stanza = "5."
  "\nChrist " Je "sus " "is " "my " "All " "in " "All, "
  "\nMy " com "fort, " "and " "my " "love; "
  "\nMy " "life " be "low; " "and " "He " "shall " "be "
  "\nMy " "joy " "and " "crown " a "bove. "
  "\nI've " "found " "the " "pearl " "of " great "est " "price! "
  "\nMy " "heart " "doth " "sing " "for " "joy; "
  "\nAnd " "sing " "I " "must, " "for " "Christ " "is " "mine! "
  "\nChrist " "shall " "my " "song " em "ploy! "
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
            \new Voice \TempoTrack
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
    \unfoldRepeats
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
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
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
