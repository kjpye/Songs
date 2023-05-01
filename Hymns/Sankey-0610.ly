\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Cross and the Crown."
  subtitle    = "Sankey No. 610"
  subsubtitle = "Sankey 880 No. 206"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Arnold."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "T.Shepherd" and \smallCaps "G. N. Allen."}
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Arnold's."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 | b(gis) b | a(fis) a | gis(a) gis | fis2 4 | gis(a) b | cis(a) gis | fis2 \bar "|" \break
  b4 | cis(e) cis | b(gis) b | cis(e) cis | b2 4 | cis(dis) e | a,(gis) fis | e2
}

alto = \relative {
  \autoBeamOff
  gis'4 | gis(e) gis | fis(dis) fis | e(fis) e | dis2 4 | e(fis) gis | a(fis) e | dis2
  e4 | 2 4 | 2 4 | 2 4 | 2 gis4 | a2 gis4 | fis(e) dis | e2
}

tenor = \relative {
  \autoBeamOff
  e'4 | e(b) e | dis(b) dis | e(b) b | 2 4 | b(a) gis | e'(cis) cis | fis,2
  e4 | a(cis) a | gis(b) gis | a(cis) a | gis2 e'4 | e(fis) b, | cis(b) a | gis2
}

bass = \relative {
  \autoBeamOff
  e4 | 2 4 | b2 4 | e(dis) e | b2 4 | e2 4 | a,2 4 | b2
  gis4 a2 cis4 | e2 4 | a,2 cis4 | e2 4 | a(fis) gis | a(b) b, | e2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Must Je -- sus bear the cross a -- lone,
  And all the world go free?
  No, there's a cross for ev -- 'ry one,
  And there's a cross for me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The con -- se -- cra -- ted cross I'll bear,
  Till death shall set me free:
  And then go home my crown to wear,
  For there's a crown for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Up -- on the crys -- tal pave -- ment, down
  At Je -- sus' pier -- ced feet,
  With joy I'll cast my gold -- en crown,
  And His dear name re -- peat.
  
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O pre -- cious cross! O glo -- rious crown!
  O res -- ur -- ec -- tion day.
  Ye an -- gels, from the stars come down,
  And bear my soul a -- way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Must " Je "sus " "bear " "the " "cross " a "lone, "
  "\nAnd " "all " "the " "world " "go " "free? "
  "\nNo, " "there's " "a " "cross " "for " ev "'ry " "one, "
  "\nAnd " "there's " "a " "cross " "for " "me.\n"

  \set stanza = "2."
  "\nThe " con se cra "ted " "cross " "I'll " "bear, "
  "\nTill " "death " "shall " "set " "me " "free: "
  "\nAnd " "then " "go " "home " "my " "crown " "to " "wear, "
  "\nFor " "there's " "a " "crown " "for " "me.\n"

  \set stanza = "3."
  "\nUp" "on " "the " crys "tal " pave "ment, " "down "
  "\nAt " Je "sus' " pier "ced " "feet, "
  "\nWith " "joy " "I'll " "cast " "my " gold "en " "crown, "
  "\nAnd " "His " "dear " "name " re "peat.\n"

  \set stanza = "4."
  "\nO " pre "cious " "cross! " "O " glo "rious " "crown! "
  "\nO " res ur ec "tion " "day. "
  "\nYe " an "gels, " "from " "the " "stars " "come " "down, "
  "\nAnd " "bear " "my " "soul " a "way."
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
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
