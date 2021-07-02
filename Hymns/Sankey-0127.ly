\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Crown Him!"
  subtitle    = "Sankey No. 127"
  subsubtitle = "Sankey 880 No. 305"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \smallCaps "Geo. C. Stebbins" (arr.). }
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
  meter       = "8.7.4."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  a'4. gis8 a4 f
  c'4. b8 c4 a
  g4. fis8 g bes a8. g16
  f1 \break
  a4. gis8 a4 f % B
  c'4. b8 c4 a
  g4. fis8 g bes a8. g16
  f1
  bes4.^\markup\smallCaps Refrain. a8 bes4 g % C
  a4. gis8 a4 f
  d'4. c8 bes a g f
  e2(c'4 bes)
  a4. gis8 a4 f % D
  c'4. b8 c4 a
  g4. fis8 g bes a8. g16
  f1
}

alto = \relative {
  f'4. 8 4 4
  f4. 8 4 4
  e4. 8 8 8 f8. e16
  f1
  f4. 8 4 4 % B
  f4. 8 4 4
  e4. 8 8 8 f8. e16
  f1
  f4. 8 4 4 % C
  f4. 8 4 4
  f4. 8 e f c b
  c2(e4 g)
  f4. 8 4 4 % D
  f4. 8 4 4
  e4. 8 8 8 f8. e16
  f1
}

tenor = \relative {
  c'4. b8 c4 a
  a4. gis8 a4 c
  bes4. a8 bes g c8. bes16
  a1
  c4. b8 c4 a % B
  a4. gis8 a4 c
  bes4. a8 bes g c8. bes16
  a1
  d4. cis8 d4 4 % C
  c4. b8 c4 a
  bes4. c8 8 8 8 g
  g2.(c4)
  c4. b8 c4 a % D
  a4. gis8 a4 c
  bes4. a8 bes g c8. bes16
  a1
}

bass= \relative {
  f4. 8 4 4
  f4. 8 4 4
  c4. 8 8 8 8. 16
  f1
  f4. 8 4 4 % B
  f4. 8 4 4
  c4. 8 8 8 8. 16
  f1
  bes,4. 8 4 4 % C
  f'4. 8 4 4
  bes4. a8 g f e d
  c1
  f4. 8 4 4 % D
  f4. 8 4 4
  c4. 8 8 8 8. 16
  f1
}

chorus = \lyricmode {
  Crown Him!  crown Him! an -- gels crown Him!
  Crown the Sa -- viour "\"King" of "kings!\""
  Crown Him!  crown Him! an -- gels crown Him!
  Crown the Sa -- viour "\"King" of "kings!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Look, ye saints, the sight is glo -- rious;
  See the "\"Man" of sor -- "rows\"" now,
  From the fight re -- turn vic -- to -- rious:
  Ev -- 'ry knee to Him shall bow!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Crown the Sa -- viour! An -- gels, crown Him!
  Rich the troph -- ies Je -- sus brings:
  In the seat of power en -- throne Him,
  While the vault of hea -- ven rings.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sin -- ners in de -- ris -- ion crown'd Him,
  Mock -- ing thus the Sa -- viour's claim;
  Saints and an -- gels crowd a -- round Him,
  Own His ti -- tle, praise His name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hark the bursts of ac -- cla -- ma -- tion!
  Hark those loud tri -- umph -- ant chords!
  Je -- sus takes the high -- est sta -- tion,
  Oh what joy the sight af -- fords!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look, " "ye " "saints, " "the " "sight " "is " glo "rious; "
  "\nSee " "the " "\"Man " "of " sor "rows\" " "now, "
  "\nFrom " "the " "fight " re "turn " vic to "rious: "
  "\nEv" "'ry " "knee " "to " "Him " "shall " "bow! "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "

  \set stanza = "2."
  "\nCrown " "the " Sa "viour! " An "gels, " "crown " "Him! "
  "\nRich " "the " troph "ies " Je "sus " "brings: "
  "\nIn " "the " "seat " "of " "power " en "throne " "Him, "
  "\nWhile " "the " "vault " "of " hea "ven " "rings. "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "

  \set stanza = "3."
  "\nSin" "ners " "in " de ris "ion " "crown'd " "Him, "
  "\nMock" "ing " "thus " "the " Sa "viour's " "claim; "
  "\nSaints " "and " an "gels " "crowd " a "round " "Him, "
  "\nOwn " "His " ti "tle, " "praise " "His " "name. "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "

  \set stanza = "4."
  "\nHark " "the " "bursts " "of " ac cla ma "tion! "
  "\nHark " "those " "loud " tri umph "ant " "chords! "
  "\nJe" "sus " "takes " "the " high "est " sta "tion, "
  "\nOh " "what " "joy " "the " "sight " af "fords! "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "
  "\nCrown " "Him! "  "crown " "Him! " an "gels " "crown " "Him! "
  "\nCrown " "the " Sa "viour " "\"King " "of " "kings!\" "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
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
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
