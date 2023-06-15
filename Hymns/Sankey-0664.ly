\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Yes, for me, for me He Careth."
  subtitle    = "Sankey No. 664"
  subsubtitle = "C. C. No. 217"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" }    s4.*12
  \textMark \markup { \box \bold "D" }    s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 3/4 \partial 4
  g'8. aes16 | g4. ees8 g8. f16 | ees4 bes d8. ees16 | f4. aes8 ees8. f16 | g2 \bar "|" \break
  g8. aes16 | g4. ees8 bes'8. aes16 | 4 g ees8. 16 | f4. e8 g8. f16 | ees2
  \section \sectionLabel \markup\smallCaps Chorus. \break \time 9/8 \partial 4.
  bes'8[d] c | aes4.~4 8 8[f'] d | ees4. bes g8[bes] ees | d4.~8[c] bes aes[g] f | aes4. g \bar "|" \break
  g8[aes] a | bes4.~4 ees8 ees[d] ees | f4. c c8[d] ees | 4.~8[bes] g aes4 d,8 | f4. ees
}

alto = \relative {
  \autoBeamOff \partCombineApart
  r4 | R2. | R | R | r2
  r4 | R2. | R | R | r2
  r4 r8 | \partCombineAutomatic f'4 8 4 8 8[aes] a | g4. g r4 r8 | aes4 8 4 g8 f[ees] d | f4. ees
  r4 r8 | g4 8 4 8 8[aes] bes | aes4. 4. r4 r8 | g4 8 4 ees8 d4 bes8 | 4. 4.
}

tenor = \relative {
  \autoBeamOff
  bes8. c16 | bes4. g8 bes8. aes16 | g4 4 f8. g16 | aes4. c8 8. ces16 | bes2
  bes8. c16 | bes4. g8 des'8. c16 | 4 bes g8. 16 | aes4. g8 bes8. aes16 | g2 \section
  r4 r8 | d'4 8 4 8 4 bes8 | 4. ees r4 r8 | f4 8 4 bes,8 4 8 | 4. 4.
  r4 r8 | ees4 8 4 bes8 4 8 | c4. ees r4 r8 | bes4 8 4 8 f4 aes8 | 4. g
}

bass = \relative {
  \autoBeamOff \partCombineApart
  r4 | R2. | R | R | r2
  r4 | R2. | R | R | r2 \partCombineAutomatic
  r4 r8 | bes,4 8 4 8 4 8 | ees4. 4. r4 r8 | bes'4 8 4 8 bes,4 8 | ees4. 4.
  r4 r8 | ees4 8 4 8 8[f] g | aes4. 4. r4 r8 | bes4 8 4 8 bes,4 8 | 4. ees
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then I wait __ for His re -- turn -- ing,
  Sing -- ing all __ the way to hea -- ven;
  Such the joy -- ful song of morn -- ing,
  Such the tran -- quil song of e -- ven.
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 30 _
  Then I wait _ _ _ _ _
  Sing -- ing all _ _ _ _ _
  Such the joy -- ful _ _ _ _
  Such the tran -- quil _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Yes, for me, for me He car -- eth
  With a bro -- ther's ten -- der care:
  Yes, for me, for me He car -- eth
  Ev -- 'ry bur -- den, ev -- 'ry fear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yes, for me He stand -- eth plaed -- ing
  At the mer -- cy- seat a -- bove:
  Ev -- er for me in -- ter -- ced -- ing,
  Con -- stant in un -- tir -- ing love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, in me a -- broad He shed -- deth
  Joys un -- earth -- ly, love, and light;
  And to cov -- er me he spread -- eth
  His pa -- ter -- nal wing of might.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Yes, in me, is me He dwell -- eth,
  I in Him, and He in me;
  And my emp -- ty soul He fill -- eth
  Here and through e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Yes, " "for " "me, " "for " "me " "He " car "eth "
  "\nWith " "a " bro "ther's " ten "der " "care: "
  "\nYes, " "for " "me, " "for " "me " "He " car "eth "
  "\nEv" "'ry " bur "den, " ev "'ry " "fear. "
  "\nThen " "I " "wait "  "for " "His " re turn "ing, "
  "\nSing" "ing " "all "  "the " "way " "to " hea "ven; "
  "\nSuch " "the " joy "ful " "song " "of " morn "ing, "
  "\nSuch " "the " tran "quil " "song " "of " e "ven.\n"

  \set stanza = "2."
  "\nYes, " "for " "me " "He " stand "eth " plaed "ing "
  "\nAt " "the " mer cy "seat " a "bove: "
  "\nEv" "er " "for " "me " in ter ced "ing, "
  "\nCon" "stant " "in " un tir "ing " "love. "
  "\nThen " "I " "wait "  "for " "His " re turn "ing, "
  "\nSing" "ing " "all "  "the " "way " "to " hea "ven; "
  "\nSuch " "the " joy "ful " "song " "of " morn "ing, "
  "\nSuch " "the " tran "quil " "song " "of " e "ven.\n"

  \set stanza = "3."
  "\nYes, " "in " "me " a "broad " "He " shed "deth "
  "\nJoys " un earth "ly, " "love, " "and " "light; "
  "\nAnd " "to " cov "er " "me " "he " spread "eth "
  "\nHis " pa ter "nal " "wing " "of " "might. "
  "\nThen " "I " "wait "  "for " "His " re turn "ing, "
  "\nSing" "ing " "all "  "the " "way " "to " hea "ven; "
  "\nSuch " "the " joy "ful " "song " "of " morn "ing, "
  "\nSuch " "the " tran "quil " "song " "of " e "ven.\n"

  \set stanza = "4."
  "\nYes, " "in " "me, " "is " "me " "He " dwell "eth, "
  "\nI " "in " "Him, " "and " "He " "in " "me; "
  "\nAnd " "my " emp "ty " "soul " "He " fill "eth "
  "\nHere " "and " "through " e ter ni "ty. "
  "\nThen " "I " "wait "  "for " "His " re turn "ing, "
  "\nSing" "ing " "all "  "the " "way " "to " hea "ven; "
  "\nSuch " "the " joy "ful " "song " "of " morn "ing, "
  "\nSuch " "the " tran "quil " "song " "of " e "ven. "
}

\book {
  \bookOutputSuffix "midi-sop"
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
            \addlyrics \wordsMidi
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
