\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Anywhere with Jesus."
  subtitle    = "Sankey No. 627"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. B. Towner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jessie H. Brown."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 8 cis4 8 | a4 fis8 d4 e8 | fis4. g | a~a | g4 fis8 e4 fis8 |
  g4 a8 cis4 b8 | a4. g | fis~fis | a4 8 b4 8 | a4 fis8 d4 e8 |
  fis4. g | a~a | d4 8 4 a8 | cis4 b8 a4 g8 | fis4. e | d~d |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  e4 fis8 g4. | fis4 g8 a4. | b4 8 a4 gis8 | a4.~a | \break
  d4 8 4 a8 | cis4 b8 a4 g8 | fis4. e | d~d |
}

alto = \relative {
  \autoBeamOff
  fis'4 8 g4 8 | fis4 d8 4 8 | 4. e | fis~fis | e4 d8 cis4 d8 |
  e4 8 g4 8 | fis4. e | d~d | fis4 8 g4 8 | fis4 d8 4 8 |
  d4. e | fis~fis | 4 g8 a4 fis8 | a4 g8 fis4 e8 | d4. cis | d~d \section |
  cis4 d8 e4. | d4 e8 fis4. | 4 8 e4 d8 | cis4.~cis |
  fis4 fis8 a4 fis8 | a4 g8 fis4 e8 | d4. cis | d~d |
}

tenor = \relative {
  \autoBeamOff
  d'4 8 4 8 | 4 a8 fis4 g8 | a4. a | d~d | a4 8 4 8 |
  a4 cis8 e4 cis8 | d4. c | d~d | d4 8 4 8 | d4 a8 fis4 g8 |
  a4. a | d~d | a4 8 d4 8 | 4 8 4 b8 | a4. g | fis~fis \section |
  a4 8 4. | d4 8 4. | b4 8 e4 8 | a,4.~a |
  a4 8 d4 8 | 4 8 4 b8 | a4. g | fis~fis |
}

bass = \relative {
  \autoBeamOff
  d4 8 4 8 | 4 8 4 8 | 4. 4. | d~d | a'4 8 4 8 |
  a4 8 4 8 | a,4. a | d~d | 4 8 4 8 | 4 8 4 8 |
  d4. d | d~d | 4 e8 fis4 d8 | g4 8 4 8 | a4. a, | d~d |
  a4 8 4. | d4 8 4. | b4 8 e4 8 | a,4.~a |
  d4 e8 fis4 d8 | g4 8 4 8 | a4. a, | d~d |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  An -- y -- where! An -- y -- where!
  Fear I can -- not know;
  An -- y -- where with Je -- sus
  I can safe -- ly go…
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  An -- y -- where with Je -- sus I can safe -- ly go,
  An -- y -- where He leads me in this world be -- low;
  An -- y -- where with -- out Him, dear -- est joys would fade:
  An -- y -- where with Je -- sus I am not a -- fraid.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  An -- y -- where with Je -- sus I am not a -- lone,
  Oth -- er friends may fail me, He is still my own:
  Tho' His hand may lead me o -- ver drear -- iest ways,
  An -- y -- where with Je -- sus is a house of praise.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  An -- y -- where with Je -- sus I can go to sleep,
  When the dark -- ling sha -- dows round a -- bout me creep:
  Know -- ing I shall wa -- ken, nev -- er more to roam,
  An -- y -- where with Je -- sus will be home, sweet home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "An" y "where " "with " Je "sus " "I " "can " safe "ly " "go, "
  "\nAn" y "where " "He " "leads " "me " "in " "this " "world " be "low; "
  "\nAn" y "where " with "out " "Him, " dear "est " "joys " "would " "fade: "
  "\nAn" y "where " "with " Je "sus " "I " "am " "not " a "fraid. "
  "\nAn" y "where! " An y "where! "
  "\nFear " "I " can "not " "know; "
  "\nAn" y "where " "with " Je "sus "
  "\nI " "can " safe "ly " "go…\n"

  \set stanza = "2."
  "\nAn" y "where " "with " Je "sus " "I " "am " "not " a "lone, "
  "\nOth" "er " "friends " "may " "fail " "me, " "He " "is " "still " "my " "own: "
  "\nTho' " "His " "hand " "may " "lead " "me " o "ver " drear "iest " "ways, "
  "\nAn" y "where " "with " Je "sus " "is " "a " "house " "of " "praise. "
  "\nAn" y "where! " An y "where! "
  "\nFear " "I " can "not " "know; "
  "\nAn" y "where " "with " Je "sus "
  "\nI " "can " safe "ly " "go…\n"

  \set stanza = "3."
  "\nAn" y "where " "with " Je "sus " "I " "can " "go " "to " "sleep, "
  "\nWhen " "the " dark "ling " sha "dows " "round " a "bout " "me " "creep: "
  "\nKnow" "ing " "I " "shall " wa "ken, " nev "er " "more " "to " "roam, "
  "\nAn" y "where " "with " Je "sus " "will " "be " "home, " "sweet " "home. "
  "\nAn" y "where! " An y "where! "
  "\nFear " "I " can "not " "know; "
  "\nAn" y "where " "with " Je "sus "
  "\nI " "can " safe "ly " "go…"
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 20)
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
