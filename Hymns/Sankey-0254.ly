\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Awake, and Sing the Song."
  subtitle    = "Sankey No. 254"
  subsubtitle = "Sankey 880 No. 412"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Aaron Williams."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Wm. Hammond."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "St. Thomas."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*6 s1.
  \mark \markup { \box "B" } s2 s1*6 s1.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2
  g2 2 b a4(g)
  a1. b4(c)
  d2 c4(b) c2 b
  a1. \bar "|" \break d2
  b2 g a d, % B
  g2 b d2. 4
  e2 d4(c) b2 a
  g1.
}

alto = \relative {
  \autoBeamOff
  d'2
  d2 2 2 4(cis)
  d1. 2
  d4(g) e8(fis g4) e4(fis) g2
  fis1. d2
  d2 2 2 2
  d2 e fis2. g4
  g2 2 2 fis
  g1.
}

tenor = \relative {
  \autoBeamOff
  d2
  g2 b g a
  fis1. d'2
  b2 c4(d) c(a) d2
  d1. a2
  g2 2 fis a
  b2 g a2. d4
  c2 d4(e) d2 c
  b1.
}

bass = \relative {
  \autoBeamOff
  d2
  b2 g g' fis4(e)
  fis1. g4(a)
  b2 a4(g) a2 g
  d1. fis2
  g2 b, d fis
  g2 e d2. b4
  c2 b4(c) d2 2
  g,1.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake, and sing the song
  Of Mo -- ses and the Lamb;
  Wake ev -- 'ry heart and ev -- 'ry tongue
  To praise the Sa -- viour's name.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sing of His dy -- ing love;
  Sing of His ris -- en power;
  Sing how He in -- ter -- cedes a -- bove
  For those whose sins He bore.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye pil -- grims on the road
  To Zi -- on's ci -- ty sing!
  Re -- joice ye in the Lamb of God—
  In Christ, th'e -- ter -- nal King!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There shall each rap -- tured tongue
  His end -- less praise pro -- claim,
  And sweet -- er voi -- ces tune the song
  Of Mo -- ses and the Lamb.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake, " "and " "sing " "the " "song "
  "\nOf " Mo "ses " "and " "the " "Lamb; "
  "\nWake " ev "'ry " "heart " "and " ev "'ry " "tongue "
  "\nTo " "praise " "the " Sa "viour's " "name. "

  \set stanza = "2."
  "\nSing " "of " "His " dy "ing " "love; "
  "\nSing " "of " "His " ris "en " "power; "
  "\nSing " "how " "He " in ter "cedes " a "bove "
  "\nFor " "those " "whose " "sins " "He " "bore. "

  \set stanza = "3."
  "\nYe " pil "grims " "on " "the " "road "
  "\nTo " Zi "on's " ci "ty " "sing! "
  "\nRe" "joice " "ye " "in " "the " "Lamb " "of " "God— "
  "\nIn " "Christ, " th'e ter "nal " "King! "

  \set stanza = "4."
  "\nThere " "shall " "each " rap "tured " "tongue "
  "\nHis " end "less " "praise " pro "claim, "
  "\nAnd " sweet "er " voi "ces " "tune " "the " "song "
  "\nOf " Mo "ses " "and " "the " "Lamb. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
