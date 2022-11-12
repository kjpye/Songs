\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O God, our Help in Ages past."
  subtitle    = "Sankey No. 513"
  subsubtitle = "Sankey 880 No. 647"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
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

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  O God, our help in a -- ges past,
  Our hope for years to come,
  Our shel -- ter from the storm -- y blast,
  And our e -- ter -- nal home:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Un -- der the sha -- dow of Thy throne
  Thy saints have dwelt se -- cure;
  Suf -- fi -- cient is Thine arm a -- lone,
  And our de -- fence is sure.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be -- fore the hills in or -- der stood,
  Or earth re -- ceived her frame,
  From ev -- er -- last -- ing Thou art God,
  To end -- less years the same.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A thou -- sand a -- ges in Thy sight
  Are like an ev -- 'ning gone;
  Short as the watch that ends the night
  Be -- fore the ris -- ing sun.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Time, like an ev -- er -- roll -- ing stream,
  Bears all its sons a -- way;
  They fly for -- got -- ten, as a dream
  Dies at the op -- 'ning day.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  O God, our help in a -- ges past,
  Our hope for years to come,
  Be Thou our guard while life shall last,
  And our e -- ter -- nal home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "God, " "our " "help " "in " a "ges " "past, "
  "\nOur " "hope " "for " "years " "to " "come, "
  "\nOur " shel "ter " "from " "the " storm "y " "blast, "
  "\nAnd " "our " e ter "nal " "home:\n"

  \set stanza = "2."
  "\nUn" "der " "the " sha "dow " "of " "Thy " "throne "
  "\nThy " "saints " "have " "dwelt " se "cure; "
  "\nSuf" fi "cient " "is " "Thine " "arm " a "lone, "
  "\nAnd " "our " de "fence " "is " "sure.\n"

  \set stanza = "3."
  "\nBe" "fore " "the " "hills " "in " or "der " "stood, "
  "\nOr " "earth " re "ceived " "her " "frame, "
  "\nFrom " ev er last "ing " "Thou " "art " "God, "
  "\nTo " end "less " "years " "the " "same.\n"

  \set stanza = "4."
  "\nA " thou "sand " a "ges " "in " "Thy " "sight "
  "\nAre " "like " "an " ev "'ning " "gone; "
  "\nShort " "as " "the " "watch " "that " "ends " "the " "night "
  "\nBe" "fore " "the " ris "ing " "sun.\n"

  \set stanza = "5."
  "\nTime, " "like " "an " ev er roll "ing " "stream, "
  "\nBears " "all " "its " "sons " a "way; "
  "\nThey " "fly " for got "ten, " "as " "a " "dream "
  "\nDies " "at " "the " op "'ning " "day.\n"

  \set stanza = "6."
  "\nO " "God, " "our " "help " "in " a "ges " "past, "
  "\nOur " "hope " "for " "years " "to " "come, "
  "\nBe " "Thou " "our " "guard " "while " "life " "shall " "last, "
  "\nAnd " "our " e ter "nal " "home. "
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
    \layout { }
%    \midi {}
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
