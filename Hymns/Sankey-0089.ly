\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Great Physician"
  subtitle    = "Sankey No. 89"
  subsubtitle = "Sankey 880 No. 49"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Stockton."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Wm. Hunter."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \tempo 4=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "C" } s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  bes'8^\p
  bes4 g8 ees4 f8
  g4 aes8 bes4 8
  bes4 ees,8 g4 ees8
  f4. ees4 \bar "|" \break \partial 8 bes'8
  bes4 g8 ees4 f8 % B
  g4 aes8 bes4 8
  bes4 ees,8 g4 ees8
  f4. ees \bar "||" \break
  bes'8^\markup\smallCaps Chorus. [c] d8 ees4 bes8 % C
  d4 c8 bes4.
  bes8[c] d ees4 bes8
  d4 c8 bes4.
  bes4 g8 ees4 f8 % D
  g4 aes8 bes4.
  bes4^\pp ees,8 g4 ees8
  f4. ees4
}

alto = \relative {
  g'8^\p
  g4 ees8 bes4 d8
  ees4 f8 g4 8
  g4 bes,8 ees4 bes8
  d4. bes4 g'8
  g4 ees8 bes4 d8 % B
  ees4 f8 g4 8
  g4 bes,8 ees4 bes8
  d4. bes
  g'4 8 4 8 % C
  bes4 aes8 g4.
  g4 8 4 8
  bes4 aes8 g4.
  g4 ees8 bes4 d8 % D
  ees4 f8 g4.
  g4^\pp bes,8 ees4 bes8
  ees4(d8) bes4
}

tenor = \relative {
  bes8
  bes4 8 g4 bes8
  bes4 8 4 8
  bes4 g8 bes4 g8
  aes4. g4 bes8
  bes4 8 g4 bes8 % B
  bes4 8 4 8
  bes4 g8 bes4 g8
  aes4. g
  bes4 8 4 ees8 % C
  ees4 8 4.
  bes4 8 4 ees8
  ees4 8 4.
  bes4 8 g4 bes8 % D
  bes4 8 4.
  bes4^\pp g8 bes4 g8
  aes4. g4
}

bass= \relative {
  ees8
  ees4 8 4 bes8
  ees4 d8 ees4 8
  ees4 8 4 8
  bes4. ees4 8
  ees4 8 4 bes8 % B
  ees4 d8 ees4 8
  ees4 8 4 8
  bes4. e
  ees4 8 4 8 % C
  aes4 8 ees4.
  ees4 8 4 8
  aes4 8 ees4.
  ees4 8 4 bes8 % D
  ees4 d8 ees4.
  ees4^\pp 8 4 8
  bes4. ees4
}

chorus = \lyricmode {
  Sweet -- est note in ser -- aph song;
  Sweet -- est name on mor -- tal tongue;
  Sweet -- est ca -- rol ev -- er sung;
  Je -- sus, bless -- ed Je -- sus!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Great Phy -- si -- cian now is near.
  The sym -- pa -- thi -- zing Je -- sus;
  He speaks the droop -- ing heart to cheer,
  Oh, hear the voice of Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Your ma -- ny sins are all for -- given!
  Oh, hear the voice of Je -- sus!
  Go on your way in peace to heav'n,
  And wear a crown with Je -- sus.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All glo -- ry to the ris -- en Lamb!
  I now be -- lieve in Je -- sus!
  I love the bless -- ed Sa -- viour's name,
  I love the name of Je -- sus.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  His name dis -- pels my guilt and fear,
  No oth -- er name but Je -- sus;
  Oh, how my soul de -- lights to hear
  The pre -- cious name of Je -- sus!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come, breth -- ren, help me sing His praise,
  Oh, praise the nmame of Je -- sus!
  Come sis -- ters, all your voi -- ces raise,
  Oh, bless the name of Je -- sus!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  The child -- ren too, both great and small,
  Who love the name pf Je -- sus,
  May now ac -- cept the gra -- cious call
  To work and love for Je -- sus.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  And when to the bright world a -- bove
  We rise to see our Je -- sus,
  We'll sing a -- round the throne of love
  His name, the name of Je -- sus.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Great " Phy si "cian " "now " "is " "near. "
  "\nThe " sym pa thi "zing " Je "sus; "
  "\nHe " "speaks " "the " droop "ing " "heart " "to " "cheer, "
  "\nOh, " "hear " "the " "voice " "of " Je "sus! "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "2."
  "\nYour " ma "ny " "sins " "are " "all " for "given! "
  "\nOh, " "hear " "the " "voice " "of " Je "sus! "
  "\nGo " "on " "your " "way " "in " "peace " "to " "heav'n, "
  "\nAnd " "wear " "a " "crown " "with " Je "sus. "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "3."
  "\nAll " glo "ry " "to " "the " ris "en " "Lamb! "
  "\nI " "now " be "lieve " "in " Je "sus! "
  "\nI " "love " "the " bless "ed " Sa "viour's " "name, "
  "\nI " "love " "the " "name " "of " Je "sus. "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "4."
  "\nHis " "name " dis "pels " "my " "guilt " "and " "fear, "
  "\nNo " oth "er " "name " "but " Je "sus; "
  "\nOh, " "how " "my " "soul " de "lights " "to " "hear "
  "\nThe " pre "cious " "name " "of " Je "sus! "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "5."
  "\nCome, " breth "ren, " "help " "me " "sing " "His " "praise, "
  "\nOh, " "praise " "the " "nmame " "of " Je "sus! "
  "\nCome " sis "ters, " "all " "your " voi "ces " "raise, "
  "\nOh, " "bless " "the " "name " "of " Je "sus! "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "6."
  "\nThe " child "ren " "too, " "both " "great " "and " "small, "
  "\nWho " "love " "the " "name " "pf " Je "sus, "
  "\nMay " "now " ac "cept " "the " gra "cious " "call "
  "\nTo " "work " "and " "love " "for " Je "sus. "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "

  \set stanza = "7."
  "\nAnd " "when " "to " "the " "bright " "world " a "bove "
  "\nWe " "rise " "to " "see " "our " Je "sus, "
  "\nWe'll " "sing " a "round " "the " "throne " "of " "love "
  "\nHis " "name, " "the " "name " "of " Je "sus. "
  "\nSweet" "est " "note " "in " ser "aph " "song; "
  "\nSweet" "est " "name " "on " mor "tal " "tongue; "
  "\nSweet" "est " ca "rol " ev "er " "sung; "
  "\nJe" "sus, " bless "ed " Je "sus! "
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
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
