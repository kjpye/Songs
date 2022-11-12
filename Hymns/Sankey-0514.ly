\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O God of Bethel!"
  subtitle    = "Sankey No. 514"
  subsubtitle = "Sankey 880 No. 438"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Paraphrase ii."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "St. Ann."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
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
  g'4 | e a g c | c b c g | c g a fis | g2. \bar "|" \break b4 |
  c4 a d b | c a b g | a c d b | c2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4. d8 e4 4 | d d e e | e e e d | d2. 4 |
  e c f d | e4. d8 b4 c | f e d d | e2.
}

tenor = \relative {
  \autoBeamOff
  e4 | g a8[b] c4 4 | a g g c | c b a a | b2. g4 |
  g4 a a g | g a gis g | f g a g | 2.
}

bass = \relative {
  \autoBeamOff
  c4 | c f e a | f g c, c | a e' c d | g,2. g'4 |
  c,4 f d g | c, f e e | d c f g | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O God of Beth -- el! by whose hand
  The peo -- ple still are fed,
  Who through this wea -- ry pil -- grim -- age
  Hast all our fa -- thers led:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Our vows, our prayers, we now pre -- sent
  Be -- fore Thy throne of grace:
  God of our fa -- thers, be the God
  Of their suc -- ceed -- ing race!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Through each per -- plex -- ing path of life
  Our wan -- dering foot -- steps guide:
  Give us each day our dai -- ly bread,
  And rai -- ment fit pro -- vide.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, spread Thy cov -- ering wings a -- round
  Till all our wan -- derings cease,
  And at our Fa -- ther's loved a -- bode
  Our souls ar -- rive in peace.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Such bless -- ings from Thy gra -- cious hand
  Our hum -- ble prayers im -- plore,
  And Thou shalt be our cho -- sen God
  And por -- tion ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "God " "of " Beth "el! " "by " "whose " "hand "
  "\nThe " peo "ple " "still " "are " "fed, "
  "\nWho " "through " "this " wea "ry " pil grim "age "
  "\nHast " "all " "our " fa "thers " "led:\n"

  \set stanza = "2."
  "\nOur " "vows, " "our " "prayers, " "we " "now " pre "sent "
  "\nBe" "fore " "Thy " "throne " "of " "grace: "
  "\nGod " "of " "our " fa "thers, " "be " "the " "God "
  "\nOf " "their " suc ceed "ing " "race!\n"

  \set stanza = "3."
  "\nThrough " "each " per plex "ing " "path " "of " "life "
  "\nOur " wan "dering " foot "steps " "guide: "
  "\nGive " "us " "each " "day " "our " dai "ly " "bread, "
  "\nAnd " rai "ment " "fit " pro "vide.\n"

  \set stanza = "4."
  "\nOh, " "spread " "Thy " cov "ering " "wings " a "round "
  "\nTill " "all " "our " wan "derings " "cease, "
  "\nAnd " "at " "our " Fa "ther's " "loved " a "bode "
  "\nOur " "souls " ar "rive " "in " "peace.\n"

  \set stanza = "5."
  "\nSuch " bless "ings " "from " "Thy " gra "cious " "hand "
  "\nOur " hum "ble " "prayers " im "plore, "
  "\nAnd " "Thou " "shalt " "be " "our " cho "sen " "God "
  "\nAnd " por "tion " ev er "more. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
