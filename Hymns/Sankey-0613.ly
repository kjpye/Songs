\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All this for Me!"
  subtitle    = "Sankey No. 613"
  subsubtitle = "C. C. No. 252"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3
  \textMark \markup { \box \bold "C" }     s2.*3
  \textMark \markup { \box \bold "D" }     s2.*2 s4.
  \textMark \markup { \box \bold "E" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 e f | g4. c8 b a | g4. 8 a g | 4. e8 d c |
  d4. c8 e f | g4. c8 b a | g4. c8 e c |
  c4. g8^\markup\italic rit. a c | c4. \section \sectionLabel \markup\smallCaps Chorus. c8 b c | d4. b8 a g |
  e4. c'8 b c | d4. d,8 e f | a4(g8\fermata) \bar "|" \break
  c,8 e f | g4. c8 b a | g4. c8 e c | 4. g8^\markup\italic rit. a c | 4.
}

alto = \relative {
  \autoBeamOff
  c'8 c d | e4. 8 dis dis | e4. 8 f e | 4. c8 c a |
  b4. c8 8 d | e4. 8 dis dis | e4. 8 g e |
  e4. 8 f f | e4. \section 8 d e | f4. g8 f e |
  c4. e8 d e | f4. b,8 c d | dis4(8\fermata)
  c8 c d | e4. 8 dis dis | e4. 8 g e | 4. 8 f f | e4.
}

tenor = \relative {
  \autoBeamOff
  e8 g g | c4. g8 fis fis | g4. c8 8 8 | 4. g8 fis8 8 |
  g4. e8 g g | c4. g8 fis8 8 | g4. 8 c g |
  g4. c8 8 a | g4. \section r8 r g | b8 8 4 g |
  g8 8 4 r8 g | b8 8 8 g g g | fis4(g8\fermata)
  e8 g g | c4. g8 fis8 8 | g4. 8 c g | 4. c8 8 a | g4.
}

bass = \relative {
  \autoBeamOff
  c8 c c | 4. 8 8 8 | 4. 8 8 8 | 4. 8 d d |
  g,4. c8 8 8 | 4. 8 8 8 | 4. 8 8 8 |
  c4. 8 8 8 | 4. \section r8 r c | g'8 8 4 a, |
  c8 8 4 r8 c | g'8 8 8 g, g g | c4.\fermata
  c8 8 8 | 4. 8 8 8 | 4. 8 8 8 | 4. 8 8 8 | 4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O bless -- ed Sa -- viour, may I be __
  A liv -- ing sac -- ri -- fice to Thee:
  Both now and in e -- ter -- ni -- ty:
  Yes, all for Thee! yes, all for Thee!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  O bless -- ed Sa -- viour, may I be
  A liv -- ing sac -- ri -- fice to Thee:
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  My Sa -- viour, oh, what glo -- ries shine
  Thro' all Thy life of love Di -- vine!
  What won -- drous grace and sym -- pa -- thy:
  All this for me! all this for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy vig -- ils 'neath the low -- ly shade,
  Des -- pised, re -- ject -- ed, scorned, be -- trayed;
  Thy sor -- row in Geth -- se -- ma -- ne:
  All this for me! all this for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The thorns that pierced Thy sac -- red brow,
  The blood that saves so ful -- ly now;
  Oh, won -- drous Cross of Cal -- va -- ry!—
  All this for me! all this for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The rich -- es of Thy peace and love,
  The trea -- sures of Thy home a -- bove;
  Grace ev -- er -- last -- ing, full and free;
  All this for me! all this for me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Sa "viour, " "oh, " "what " glo "ries " "shine "
  "\nThro' " "all " "Thy " "life " "of " "love " Di "vine! "
  "\nWhat " won "drous " "grace " "and " sym pa "thy: "
  "\nAll " "this " "for " "me! " "all " "this " "for " "me! "
  "\nO " bless "ed " Sa "viour, " "may " "I " "be " 
  "\nA " liv "ing " sac ri "fice " "to " "Thee: "
  "\nBoth " "now " "and " "in " e ter ni "ty: "
  "\nYes, " "all " "for " "Thee! " "yes, " "all " "for " "Thee!\n"

  \set stanza = "2."
  "\nThy " vig "ils " "'neath " "the " low "ly " "shade, "
  "\nDes" "pised, " re ject "ed, " "scorned, " be "trayed; "
  "\nThy " sor "row " "in " Geth se ma "ne: "
  "\nAll " "this " "for " "me! " "all " "this " "for " "me! "
  "\nO " bless "ed " Sa "viour, " "may " "I " "be " 
  "\nA " liv "ing " sac ri "fice " "to " "Thee: "
  "\nBoth " "now " "and " "in " e ter ni "ty: "
  "\nYes, " "all " "for " "Thee! " "yes, " "all " "for " "Thee!\n"

  \set stanza = "3."
  "\nThe " "thorns " "that " "pierced " "Thy " sac "red " "brow, "
  "\nThe " "blood " "that " "saves " "so " ful "ly " "now; "
  "\nOh, " won "drous " "Cross " "of " Cal va "ry!— "
  "\nAll " "this " "for " "me! " "all " "this " "for " "me! "
  "\nO " bless "ed " Sa "viour, " "may " "I " "be " 
  "\nA " liv "ing " sac ri "fice " "to " "Thee: "
  "\nBoth " "now " "and " "in " e ter ni "ty: "
  "\nYes, " "all " "for " "Thee! " "yes, " "all " "for " "Thee!\n"

  \set stanza = "4."
  "\nThe " rich "es " "of " "Thy " "peace " "and " "love, "
  "\nThe " trea "sures " "of " "Thy " "home " a "bove; "
  "\nGrace " ev er last "ing, " "full " "and " "free; "
  "\nAll " "this " "for " "me! " "all " "this " "for " "me! "
  "\nO " bless "ed " Sa "viour, " "may " "I " "be " 
  "\nA " liv "ing " sac ri "fice " "to " "Thee: "
  "\nBoth " "now " "and " "in " e ter ni "ty: "
  "\nYes, " "all " "for " "Thee! " "yes, " "all " "for " "Thee! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
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
