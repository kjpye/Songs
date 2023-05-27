\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Shadow of His Wings."
  subtitle    = "Sankey No. 644"
  subsubtitle = "Sankey 880 No. 535"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. O. Excell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. B. Atchison."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*2
  \textMark \markup { \box \bold "C" }    s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*2 s2.
  \textMark \markup { \box \bold "E" } s4 s1*2 s2.
  \textMark \markup { \box \bold "F" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

apart = \partCombineApart
auto  = \partCombineAutomatic

soprano = \relative {
  \autoBeamOff
  a'8 bes | c d c bes a4 8 g | f4 4 4 8 8 |
  e8 8 f f g g f e | f f g g a a a bes |
  c8 f e d c4 f,8 g | a4 bes a4 8 bes | c d c bes \bar "|" \break
  a4 8 g | f2.
  \section \sectionLabel \markup\smallCaps Chorus.
  a8 8 | bes4 \apart r r \auto a8 bes | c4 \apart r r \auto \bar "|" \break
  a8 c | f2. c8 bes | a c g c f,4 a8 8 | bes4 \apart r r \auto \bar "|" \break
  a8 bes | c4 \apart r r \auto a8 c | f2. c8 bes | a a a g f4\fermata
}

alto = \relative {
  \autoBeamOff
  f'8 g | a bes a g f4 8 c | 4 d c4 8 8 |
  c8 8 8 8 8 8 8 8 | 8 8 e e f f f g |
  a8 a bes bes a4 f8 8 | 4 4 4 8 g | a b a g
  f4 e8 8 | f4 e c \section f8 8 | g4 e g f8 g | a4 e4 f
  f8 a | 4 4 bes g8 8 | f a e e f4 8 8 | g4 e f
  f8 g | a4 e f4 8 a | 4 4 bes g8 8 | f f f c c4\fermata
}

tenor = \relative {
  \autoBeamOff
  c'8 8 | 8 8 8 8 4 8 bes | a4 bes a a8 8 |
  g8 8 a a bes bes a g | a a bes bes c c c c |
  c8 8 8 8 4 a8 bes | c4 d c4 8 8 | 8 8 8 d
  c4 bes8 8 | a4 bes a \section c8 8 | 4 g c4 8 8 | 4 4 4
  c8 8 | c4 ees d d8 8 | c8 8 8 bes a4 c8 8 | 4 g c
  c8 8 | 4 4 4 8 8 | 4 ees d4 8 8 | c c c bes a4\fermata
}

bass = \relative {
  \autoBeamOff
  f8 8 | 8 8 8 8 c4 f8 c | f4 4 4 8 8 |
  c8 8 8 8 8 8 8 8 | f f f f f f f f |
  f8 f c c f4 8 8 | 4 4 4 8 8 |
  8 8 8 bes, c4 8 8 | f2. \section 8 8 | c4 4 4 f8 8 | 4 g a
  f8 8 | 4 4 bes4 8 8 | c c c, c f4 8 8 | c4 4 4
  f8 8 | 4 g a f8 8 | 4 4 bes4 8 8 | c c c, c f4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  There is rest! _ _ There is peace! _ _ There is joy!— _ _
  In the sha -- dow of His wings;
  There is rest! _ _ There is peace! _ _ There is joy!— _ _
  In the sha -- dow of His wings!
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 52 _
  _ _ _ sweet rest _ _ _ sweet peace! _ _ _ glad joy
  _ _ _ _ _ _ _
  _ _ _ sweet rest! _ _ _ sweet peace! _ _ _ glad joy!
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the sha -- dow of His wings
  There is rest, sweet rest;
  There is rest from care and la -- bour,
  There is rest for friend and neigh -- bour:
  In the sha -- dow of His wings
  There is rest, sweet rest;
  In the sha -- dow of His wings
  There is rest, \markup\italic sweet \markup\italic rest;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In the sha -- dow of His wings
  There is peace, sweet peace;
  Peace that pass -- eth un -- der -- stand -- ing,
  Peace, sweet peace, that knows no end -- ing;
  In the sha -- dow of His wings
  There is peace, sweet peace;
  In the sha -- dow of His wings
  There is peace, \markup\italic sweet \markup\italic peace,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the sha -- dow of His wings
  There is joy, glad joy;
  There is joy to tell the sto -- ry,
  Joy ex -- ceed -- ing, full of glo -- ryk
  In the sha -- dow of His wings
  There is joy, glad joy;
  In the sha -- dow of His wings
  There is joy, \markup\italic glad \markup\italic joy,
}
  
wordsMidi = \lyricmode {
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "In " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "rest, " "sweet " "rest; "
  "\nThere " "is " "rest " "from " "care " "and " la "bour, "
  "\nThere " "is " "rest " "for " "friend " "and " neigh "bour: "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "rest, " "sweet " "rest; "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "rest, " "sweet " "rest; "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings; "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings!\n"

  \set stanza = "2."
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "peace, " "sweet " "peace; "
  "\nPeace " "that " pass "eth " un der stand "ing, "
  "\nPeace, " "sweet " "peace, " "that " "knows " "no " end "ing; "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "peace, " "sweet " "peace; "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "peace, " "sweet " "peace, "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings; "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings!\n"

  \set stanza = "3."
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "joy, " "glad " "joy; "
  "\nThere " "is " "joy " "to " "tell " "the " sto "ry, "
  "\nJoy " ex ceed "ing, " "full " "of " glo "ryk "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "joy, " "glad " "joy; "
  "\nIn " "the " sha "dow " "of " "His " "wings "
  "\nThere " "is " "joy, " "glad " "joy, "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings; "
  "\nThere " "is " "rest! " "sweet " "rest! " "There " "is " "peace! " "sweet " "peace! " "There " "is " "joy!— " "glad " "joy! "
  "\nIn " "the " sha "dow " "of " "His " "wings! "
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \alto
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
