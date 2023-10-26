\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Saviour knows them All."
  subtitle    = "Sankey No. 716"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8 bes aes | ees4. f8 aes8. g16 | g2 aes4 | bes4. f8 g8. ees16 | aes4. \bar "|" \break
  c8 bes aes | ees4. f8 aes8. g16 | 2 des'4 | c4. bes8 f g | aes4. \bar "|" \break
  c8 8 bes | aes4. g8 aes bes | c2 g4 | aes4. 8 bes b | c4. \bar "|" \break
  des8 c bes | aes4. g8 bes aes | f2 aes4 | ees4. aes8 bes8. aes16 | 4.
}

alto = \relative {
  \autoBeamOff
  ees'8 des c | 4. ees8 des8. 16 | 2 ees4 | f4. 8 des8. 16 | c4.
  ees8 des c | 4. ees8 des8. 16 | 2 f4 | ees4. des8 8 8 | c4.
  ees8 e g | f4. e8 f f | e2 4 | f4. 8 8 8 | e4.
  ees8 8 des | c4. e8 f f | des2 f4 | ees4. c8 des8. c16 | 4.
}

tenor = \relative {
  \autoBeamOff
  aes8 8 ees | aes4. 8 ees8. 16 | 2 aes4 | 4. bes8 8. ges16 | aes4.
  aes8 8 ees | aes4. 8 ees8. 16 | 2 g4 | 4. 8 bes ees, | 4.
  aes8 g c | 4. 8 8 f, | g2 c4 | 4. 8 bes g | 4.
  g8 aes ees | 4. bes'8 aes8 8 | 2 ces4 | 4. aes8 g8. aes16 | 4.
}

bass = \relative {
  \autoBeamOff
  aes,8 8 8 | 4. c8 bes8. 16 | 2 c4 | des4. 8 ees8. 16 | aes,4.
  aes8 8 8 | 4. c8 bes8. 16 | 2 ees4 | 4. 8 8 8 | aes,4.
  aes8 c e | f4. c8 f des | c2 4 | f4. 8 d d | c4.
  bes8 aes aes | 4. c8 des des | 2 d4 | ees4. 8 8. aes,16 | \partCombineChords <aes \tweak NoteHead.font-size #-2 ees'>4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O troub -- led heart, there is a balm
  To heal thy ev -- 'ry wound;
  In thy Re -- deem -- er's bleed -- ing side
  That balm a -- lone is found;
  The hid -- den an -- guish of the soul,
  The burn -- ing tears that fall,
  The sigh that reads thy ach -- ing breast—
  Thy Sa -- viour knows them all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go where no ear but His can hear,
  No eye but His can see;
  Has He not said that as thy day
  E'en so thy strength shall be?
  Tho' heav'n and earth should pass a -- way,
  His word can nev -- er fail;
  If thou by faith ap -- proach His throne,
  By faith thou shalt pre -- vail.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then why cast down? these pass -- ing ills
  Thy path that some -- times dim,
  Will work to -- geth -- er for thy good
  If thou that trust in Him;
  The ma -- ny bles -- sings of the past,
  With gra -- ti -- tude re -- call;
  Then tell thy sor -- rows at the feet
  Of Him who knows them all.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " troub "led " "heart, " "there " "is " "a " "balm "
  "\nTo " "heal " "thy " ev "'ry " "wound; "
  "\nIn " "thy " Re deem "er's " bleed "ing " "side "
  "\nThat " "balm " a "lone " "is " "found; "
  "\nThe " hid "den " an "guish " "of " "the " "soul, "
  "\nThe " burn "ing " "tears " "that " "fall, "
  "\nThe " "sigh " "that " "reads " "thy " ach "ing " "breast— "
  "\nThy " Sa "viour " "knows " "them " "all.\n"

  \set stanza = "2."
  "\nGo " "where " "no " "ear " "but " "His " "can " "hear, "
  "\nNo " "eye " "but " "His " "can " "see; "
  "\nHas " "He " "not " "said " "that " "as " "thy " "day "
  "\nE'en " "so " "thy " "strength " "shall " "be? "
  "\nTho' " "heav'n " "and " "earth " "should " "pass " a "way, "
  "\nHis " "word " "can " nev "er " "fail; "
  "\nIf " "thou " "by " "faith " ap "proach " "His " "throne, "
  "\nBy " "faith " "thou " "shalt " pre "vail.\n"

  \set stanza = "3."
  "\nThen " "why " "cast " "down? " "these " pass "ing " "ills "
  "\nThy " "path " "that " some "times " "dim, "
  "\nWill " "work " to geth "er " "for " "thy " "good "
  "\nIf " "thou " "that " "trust " "in " "Him; "
  "\nThe " ma "ny " bles "sings " "of " "the " "past, "
  "\nWith " gra ti "tude " re "call; "
  "\nThen " "tell " "thy " sor "rows " "at " "the " "feet "
  "\nOf " "Him " "who " "knows " "them " "all. "
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
