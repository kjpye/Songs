\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise Him! Praise Him!"
  subtitle    = "Sankey No. 208"
  subsubtitle = "Sankey 880 No. 454"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chester G. Allen."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 19)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*7
  \mark \markup { \box "D" } s2.*6
  s2.*3
  \mark \markup { \box "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

sopranoA = \relative {
  c''4. ees
  aes,4. c
  bes8 c bes aes g f
  ees4. aes
  c4. ees
  aes,4. c
  c8 bes aes bes4 c8 % B
  bes4.~4 r8
}

sopranoB = \relative {
  c''4. ees
  aes,4. c
  bes8 c bes aes g f
  ees4. aes % C
  c4. ees
  des4. bes
  aes8 g aes c4 bes8
  aes4.~4 r8
}

sopranoC = \relative {
  bes'4. c
  bes4(g8) ees4.
  des'8 c bes c4 des8 % D
  c4. bes
  c4. ees
  aes,4. c
  c8 bes aes bes4 c8
  bes4.~4 r8
}

soprano = \relative {
  \autoBeamOff
  \sopranoA
  \sopranoB
  \sopranoC
  \sopranoB
}

altoA = \relative {
  ees'4. 4.
  ees4. 4.
  f8 8 8 8 ees des
  c4. c
  ees4. 4.
  c4. c
  d8 8 8 4 8 % B
  ees4.~4 r8
}

altoB = \relative {

  ees'4. 4.
  ees4. 4.
  f8 8 8 8 ees des
  c4. 4. % C
  ees4. ges
  f4. 4.
  ees8 8 8 aes4 g8
  aes4.~4 r8
}

altoC = \relative {
  ees'4. 4.
  ees4. 4.
  ees8 8 8 4 8 % D
  ees4. 4.
  ees4. 4.
  c4. 4.
  d8 8 8 4 8
  ees4.~4 r8
}

alto = \relative {
  \autoBeamOff
  \altoA
  \altoB
  \altoC
  \altoB
}

tenorA = \relative {
  aes4. c
  c4. aes
  des8 8 8 aes8 8 8
  aes4. 4.
  aes4. 4.
  aes4. 4.
  aes8 8 8 f4 aes8 % B
  g4.~4 r8
}

tenorB = \relative {
  aes4. c
  c4. aes
  des8 8 8 aes8 8 8
  aes4. 4. % C
  aes4. 4.
  aes4. des
  c8 bes c ees4 des8
  c4.~4 r8 \bar "||"
}

tenorC = \relative {
  g4. aes
  g4(bes8) g4.
  bes8 aes g aes4 bes8 % D
  aes4. g
  aes4. 4.
  aes4. 4.
  aes8 8 8 f4 aes8
  g4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  \tenorA
  \tenorB
  \tenorC
  \tenorB
}

bassA = \relative {
  aes4. 4.
  aes4. 4.
  des,8 8 8 8 8 8
  aes4. 4.
  aes4. c
  f4. 4.
  bes,8 8 8 4 8 % B
  ees4.~4 r8
}

bassB = \relative {
  aes4. 4.
  aes4. 4.
  des,8 8 8 8 8 8
  aes4. 4. % C
  aes4. c
  des4. 4.
  ees8 8 8 4 8
  aes,4.~4 r8
}

bassC = \relative {
  ees4. 4.
  ees4. 4.
  ees8 8 8 4 8 % D
  ees4. 4.
  aes,4. c
  f4. 4.
  bes,8 8 8 4 8
  ees4.~4 r8
}

bass = \relative {
  \autoBeamOff
  \bassA
  \bassB
  \bassC
  \bassB
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Praise Him! praise Him! tell of His ex -- cel -- lent great -- ness;
  Praise Him! praise Him ev -- er in joy -- ful song!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise Him! praise Him!
  Je -- sus, our bles -- sed Re -- deem -- er!
  Sin, O earth— His won -- der -- ful love pro -- claim!
  Hail Him! hail Him! high -- est arch -- an -- gels in glo -- ry;
  Strength and hon -- our give to His ho -- ly name!
  Like a shep -- herd, Je -- sus will guard His child -- ren,
  In His arms He car -- ries them all day long:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise Him! praise Him!
  Je -- sus, our bles -- sed Re -- deem -- er!
  For our sins He sud -- fered, and bled, and died;
  He— our Rock, our hope of e -- ter -- nal sal -- va -- tion,
  Hail Him! hail Him! Je -- sus, the Cru -- ci -- fied!
  Sound His prais -- es— Je -- sus who bore our sor -- rows,
  Love un -- bound -- ed, won -- der -- ful, deep, and strong:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Praise Him! praise Him!
  Je -- sus, our bles -- sed Re -- deem -- er!
  heav'n -- ly por -- tals, loud with ho -- san -- nas ring!
  Je -- sus, Sa -- viour, reign -- eth for ev -- er and ev -- er:
  Crown Him! crown Him! Pro -- phet and Priest, and King!
  Christ is com -- ing, o -- ver the world vic -- to -- rious,
  Power and glo -- ry un -- to the Lord be -- long:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "Him! " "praise " "Him! "
  "\nJe" "sus, " "our " bles "sed " Re deem "er! "
  "\nSin, " "O " "earth— " "His " won der "ful " "love " pro "claim! "
  "\nHail " "Him! " "hail " "Him! " high "est " arch an "gels " "in " glo "ry; "
  "\nStrength " "and " hon "our " "give " "to " "His " ho "ly " "name! "
  "\nLike " "a " shep "herd, " Je "sus " "will " "guard " "His " child "ren, "
  "\nIn " "His " "arms " "He " car "ries " "them " "all " "day " "long: "
  "\nPraise " "Him! " "praise " "Him! " "tell " "of " "His " ex cel "lent " great "ness; "
  "\nPraise " "Him! " "praise " "Him " ev "er " "in " joy "ful " "song! "

  \set stanza = "2."
  "\nPraise " "Him! " "praise " "Him! "
  "\nJe" "sus, " "our " bles "sed " Re deem "er! "
  "\nFor " "our " "sins " "He " sud "fered, " "and " "bled, " "and " "died; "
  "\nHe— " "our " "Rock, " "our " "hope " "of " e ter "nal " sal va "tion, "
  "\nHail " "Him! " "hail " "Him! " Je "sus, " "the " Cru ci "fied! "
  "\nSound " "His " prais "es— " Je "sus " "who " "bore " "our " sor "rows, "
  "\nLove " un bound "ed, " won der "ful, " "deep, " "and " "strong: "
  "\nPraise " "Him! " "praise " "Him! " "tell " "of " "His " ex cel "lent " great "ness; "
  "\nPraise " "Him! " "praise " "Him " ev "er " "in " joy "ful " "song! "

  \set stanza = "3."
  "\nPraise " "Him! " "praise " "Him! "
  "\nJe" "sus, " "our " bles "sed " Re deem "er! "
  "\nheav'n" "ly " por "tals, " "loud " "with " ho san "nas " "ring! "
  "\nJe" "sus, " Sa "viour, " reign "eth " "for " ev "er " "and " ev "er: "
  "\nCrown " "Him! " "crown " "Him! " Pro "phet " "and " "Priest, " "and " "King! "
  "\nChrist " "is " com "ing, " o "ver " "the " "world " vic to "rious, "
  "\nPower " "and " glo "ry " un "to " "the " "Lord " be "long: "
  "\nPraise " "Him! " "praise " "Him! " "tell " "of " "His " ex cel "lent " great "ness; "
  "\nPraise " "Him! " "praise " "Him " ev "er " "in " joy "ful " "song! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
