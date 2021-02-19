\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Redeeming Love!"
  subtitle    = "Sankey No. 56"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. S. Lorenz."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ida Scott Taylor"
  meter       = "L.M."
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key aes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4. s2.*3
  \mark \markup { \box "B" } s2.*4 s4. \time 4/4
  \mark \markup { \box "C" } s4. s1*2
  \mark \markup { \box "D" } s1*2 s2.
  \mark \markup { \box "E" } s4 s1*2 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  \time 3/4
  \partial 4. s4.
  s2.*7
  s4 \tempo 4=20 s8 \tempo 4=120 \time 4/4 \partial 4. s4.
  s1*7
  s2 s8
}

soprano = \relative {
  ees'8 aes bes
  c4. ees8 des f
  ees4. ees8 f c
  ees8. des16 des4. ees8
  c4. ees,8 aes bes % B
  c4. ees8 des f
  ees4. ees8 f c
  ees8 des c4 bes
  aes4.\fermata \bar "||" \break \time 4/4 \partial 4. c8^\markup\smallCaps Chorus. ees8. c16
  ees2~8 aes, c8. aes16 % C
  c2~4 c
  c8. c16 c8 c d4 d % D
  ees2 r8 ees, aes bes
  c2~8 ees \bar "|" \break \partial 4 des8 g
  ees2. ees4 % E
  ees8 f des bes aes4 g
  aes2~8
}

alto = \relative {
  ees'8 c ees
  aes4. c8 bes des
  c4. c8 des aes
  c8. bes16 bes4. g8
  aes4. ees8 c ees % B
  aes4. c8 bes des
  c4. c8 des aes
  c8 bes aes(ees) des4
  c4.\fermata aes'8 c8. aes16
  c2~8 r r4 % C
  r8 aes8 aes8. aes16 aes4 aes
  aes8. aes16 g8 aes aes4 aes % D
  g2 r8 ees c ees
  aes2~8 \once \partCombineApart r \once\partCombineApart r4
  \once\partCombineApart r8 aes aes aes aes4 c % E
  c8 des bes f ees4 ees
  ees2~8
}

tenor = \relative {
  s4.
  s2.
  s2.
  s2.
  s2. % B
  s2.
  s2.
  s2.
  s4. \time 4/4 r8 r4
  r8 ees'8 ees8. ees16 ees8 c ees8. c16  % C
  ees2~4 ees
  f8. f16 ees8 f f4 bes, % D
  bes2 r
  r8 ees ees ees ees c bes des
  c2. ges'4 % E
  f8 f f des c4 bes8(des)
  c2~8
}

bass= \relative {
  s4.
  s2.
  s2.
  s2.
  s2. % B
  s2.
  s2.
  s2.
  s4. \time 4/4 r8 r4
  r8 aes aes8. aes16 aes8 \once\partCombineApart r8 \once\partCombineApart r4 % C
  r8 aes aes8. aes16 aes4 aes
  f8. f16 c8 f bes,4 bes % D
  ees2 r
  r8 aes aes aes aes \once\partCombineApart r \once\partCombineApart r4
  \once\partCombineApart r8 aes aes aes aes4 aes
  des,8 des des des ees4 ees
  aes,2~8
}

chorus = \lyricmode {
  Re -- deem -- ing love, __
  re -- deem -- ing love! __
  The grand -- est theme,
  all themes a -- bove;
  My soul with joy __
  her wings would prove, __
  and sing of Christ's re -- deem -- ing love.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Like some sweet bird that up -- ward flies,
  My soul to heav'n -- ly heights would rise,
  And while I mount to worlds a -- bove,
  Would sing of Christ's re -- deem -- ing love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Like some sweet flower of spring that wakes,
  When sun and shower its slum -- ber breaks,
  My soul would rise from doubt and gloom,
  And in His love e -- ter -- nal bloom.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- deem -- ing love! oh can it be
  That Je -- sus shed His blood for me?
  His glo -- rious name I will a -- dore,
  And praise and bless Him ev -- er -- more.
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}
  
wordsWomenMidi = \lyricmode {
  \set stanza = "1."
  "\nLike " "some " "sweet " "bird " "that " up "ward " "flies, "
  "\nMy " "soul " "to " heav'n "ly " "heights " "would " "rise, "
  "\nAnd " "while " "I " "mount " "to " "worlds " a "bove, "
  "\nWould " "sing " "of " "Christ's " re deem "ing " "love. "
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "

  \set stanza = "2."
  "\nLike " "some " "sweet " "flower " "of " "spring " "that " "wakes, "
  "\nWhen " "sun " "and " "shower " "its " slum "ber " "breaks, "
  "\nMy " "soul " "would " "rise " "from " "doubt " "and " "gloom, "
  "\nAnd " "in " "His " "love " e ter "nal " "bloom. "
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "

  \set stanza = "3."
  "\nRe" deem "ing " "love! " "oh " "can " "it " "be "
  "\nThat " Je "sus " "shed " "His " "blood " "for " "me? "
  "\nHis " glo "rious " "name " "I " "will " a "dore, "
  "\nAnd " "praise " "and " "bless " "Him " ev er "more. "
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "
}
  
wordsMenMidi = \lyricmode {
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "
  "\nRe" deem "ing " "love, " 
  "\nre" deem "ing " "love! " 
  "\nThe " grand "est " "theme, "
  "\nall " "themes " a "bove; "
  "\nMy " "soul " "with " "joy " 
  "\nher " "wings " "would " "prove, " 
  "\nand " "sing " "of " "Christ's " re deem "ing " "love. "
}
  
pianoRH = \relative {
}

pianoLH = \relative {
  \teeny
  r8 r4
  aes8 ees aes,4 r
  aes'8 ees aes,4 r
  ees'2 ees,4
  aes8 ees' aes,4 r % B
  aes'8 ees aes,4 r
  aes'8 ees aes,4 r
  des4 ees ees,
  aes8 ees' aes,\fermata \bar "||" \time 4/4 \partial 4. s4.
  s1*7
  s2 s8
}

nl = { \bar "||" \break \partial 4. \time 3/4}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \pianoRH
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \context Lyrics = "sopranolyrics" { \lyricsto "alignerS" { \emptyVerse \chorus } }
          >>
                                  % Joint tenor/bass staff
          \new Lyrics = "tenorlyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" \tenor
            \new NullVoice = "alignerB" \bass
            \new Voice { \global \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto "alignerB" { \chorus }
          >>
          \context Lyrics = "tenorlyrics" { \lyricsto "alignerT" { \chorus } }
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice { \pianoRH \pianoRH \pianoRH }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \context Lyrics = "sopranolyrics" { \lyricsto "alignerS" {
              \emptyVerse \chorus
              \emptyVerse \chorus
              \emptyVerse \chorus
            } }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Lyrics = "tenorlyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice { \global \pianoLH \pianoLH \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
            \new Lyrics \lyricsto "alignerB" {
              \chorus
              \chorus
              \chorus
            }
            \context Lyrics = "tenorlyrics" { \lyricsto "alignerT" {
              \chorus
              \chorus
              \chorus
            } }
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice { \pianoRH \pianoRH \pianoRH }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" \wordsWomenMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice { \global \pianoLH \pianoLH \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice { \pianoRH \pianoRH \pianoRH }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" \wordsWomenMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice { \global \pianoLH \pianoLH \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice { \pianoRH \pianoRH \pianoRH }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice { \global \pianoLH \pianoLH \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
            \new Lyrics \lyricsto "alignerT" \wordsMenMidi
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Lyrics = "sopranolyrics"
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice { \pianoRH \pianoRH \pianoRH }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice { \global \pianoLH \pianoLH \pianoLH }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  }
            \new Lyrics \lyricsto "alignerB" \wordsMenMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
