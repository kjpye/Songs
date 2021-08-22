\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Spirit Divine, Attend our PRayers."
  subtitle    = "Sankey No. 201"
  subsubtitle = "C.C. No. 279"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "Este's" Psalter.}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. A. Reed."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "Winchester Old."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  a4. 8 g4 f
  bes4 4 a g
  a4 c c b
  c2. \bar "|" \break a4
  d4. c8 bes4 a % B
  g4 f e a
  g4 f f e
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4
  f4. 8 e4 d
  d4 f f e
  f4 g g g
  e2. f4
  f4. 8 4 4 % B
  e4 d cis c
  e4 d d c
  c2.
}

tenor = \relative {
  \autoBeamOff
  a4
  c4. 8 4 a
  bes4 d c c
  c4 c d d
  c2. 4
  bes4. a8 bes4 c
  c4 a a a
  c4 a bes g
  a2.
}

bass = \relative {
  \autoBeamOff
  f4
  f4. 8 c4 d
  bes4 4 f' c
  f4 e g g
  c,2. f4
  bes4. f8 d4 f % B
  c4 d a f'
  c4 d bes c
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Spi -- rit Di -- vine, at -- tend our prayers,
  And make our hearts Thy home;
  De -- scend with all Thy gra -- cious powers—
  Oh come, great Spi -- rit, come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come as the light— to us re -- veal
  Our emp -- ti -- ness and woe;
  And lead us in those paths of life
  Where all the righ -- teous go.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come as the fire— and purge our hearts,
  Like sac -- ri -- fi -- cial flame;
  Let our whole soul an off -- 'ring be
  To our Re -- deem -- er's name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come as the dew— and sweet -- ly bless
  This con -- se -- cra -- ted hour;
  Mat bar -- ren -- ness re -- joice to own
  Thy fer -- til -- i -- zing power.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come as the dove— and spread Thy wings,
  The wings of peace -- ful love;
  And let Thy church on earth be -- come
  Blest as the church a -- bove.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Come as the wind— with rush -- ing sound
  And pen -- te -- cos -- tal grace,
  That all of wo -- man born may see
  The glo -- ry of Thy face.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Spi" "rit " Di "vine, " at "tend " "our " "prayers, "
  "\nAnd " "make " "our " "hearts " "Thy " "home; "
  "\nDe" "scend " "with " "all " "Thy " gra "cious " "powers— "
  "\nOh " "come, " "great " Spi "rit, " "come! "

  \set stanza = "2."
  "\nCome " "as " "the " "light— " "to " "us " re "veal "
  "\nOur " emp ti "ness " "and " "woe; "
  "\nAnd " "lead " "us " "in " "those " "paths " "of " "life "
  "\nWhere " "all " "the " righ "teous " "go. "

  \set stanza = "3."
  "\nCome " "as " "the " "fire— " "and " "purge " "our " "hearts, "
  "\nLike " sac ri fi "cial " "flame; "
  "\nLet " "our " "whole " "soul " "an " off "'ring " "be "
  "\nTo " "our " Re deem "er's " "name. "

  \set stanza = "4."
  "\nCome " "as " "the " "dew— " "and " sweet "ly " "bless "
  "\nThis " con se cra "ted " "hour; "
  "\nMat " bar ren "ness " re "joice " "to " "own "
  "\nThy " fer til i "zing " "power. "

  \set stanza = "5."
  "\nCome " "as " "the " "dove— " "and " "spread " "Thy " "wings, "
  "\nThe " "wings " "of " peace "ful " "love; "
  "\nAnd " "let " "Thy " "church " "on " "earth " be "come "
  "\nBlest " "as " "the " "church " a "bove. "

  \set stanza = "6."
  "\nCome " "as " "the " "wind— " "with " rush "ing " "sound "
  "\nAnd " pen te cos "tal " "grace, "
  "\nThat " "all " "of " wo "man " "born " "may " "see "
  "\nThe " glo "ry " "of " "Thy " "face. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix

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
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
