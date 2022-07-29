\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, give my Heart to Jesus."
  subtitle    = "Sankey No. 436"
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

  poet        = \markup\smallCaps "W. O. Cushing."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8
  bes4 g8 f4 ees8
  ees4. d4 aes'8
  aes8[g] aes c4 bes8
  g4.~4 \bar "|" \break bes8
  bes4 g8 f4 ees8 % B
  ees4. d4 aes'8aes8[g] f bes4 d,8
  ees4.~4 \bar "|" \break ees8^\markup\smallCaps Chorus.
  c8[ees] aes c4 8 % C
  c4. bes4 8
  bes8[f] bes d4 c8
  bes4.~4 \bar "|" \break bes8
  ees4 bes8 4 g8 % D
  f4. ees4 c'8
  c8[bes] ees, g4 f8
  ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8
  ees4 8 bes 4 8
  bes4. 4 d8
  f8[e] f a4 f8
  ees4.~4 8
  ees4 8 bes4 8 % B
  bes4. 4 d8
  f8[ees] d d4 bes8
  bes4.~4 8
  c8[ees] 8 aes4 8 % C
  aes4. g4 ees8
  d4 8 f4 ees8
  d4.~4 f8
  ees4 8 d4 ees8 % D
  d4. ees4 8
  ees4 8 4 d8
  ees4.~4
}

tenor = \relative {
  \autoBeamOff
  g8
  g4 bes8 aes4 g8
  g4. f4 8
  bes4 8 d4 8
  ees4.(bes4) g8
  g4 bes8 aes4 g8 % B
  g4. f4 8
  bes4 8 f4 aes8
  g4.~4 8
  aes4 c8 ees4 8 % C
  ees4. 4 bes8
  bes4 8 a4 8
  bes4.~4 8
  bes4 8 4 8 % D
  aes4. g4 aes8
  g4 8 bes4 aes8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8
  ees4 8 4 8
  bes4. 4 8
  bes4 8 4 8
  ees4.~4 8
  ees4 8 4 8 % B
  bes4. 4 8
  bes4 8 4 8
  ees4.~4 8
  aes,4 8 4 8 % C
  ees'4. 4 g8
  f4 8 4 8
  bes,8(d f bes4) aes8
  g4 8 f4 ees8 % D
  bes4. c4 aes8
  bes4 c8 bes4 8
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, give thy heart to Je -- sus,
  A balm for ev -- 'ry care;
  Go, hide be -- neath His sha -- dow;
  No storm can reach thee there.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, give thy heart to Je -- sus,
  Thy wea -- ry heart of cure:
  No friend can love so deep -- ly;
  Go, find thy ref -- uge there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, trust the heart of Je -- sus,
  Breathe all thy sor -- rows there;
  He loves to hear thy plead -- ings,
  Thy hum -- ble con -- trite prayer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go, hide thy -- self in Je -- sus:
  No foe can harm thee there;
  Hi hand will lift thy bur -- dens,
  And all thy sor -- rows bear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Go, lean thy heart on Je -- sus,
  Who sees each fall -- ing tear;
  No friend so true and ten -- der
  Can soothe thy ev -- 'ry fear.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "give " "thy " "heart " "to " Je "sus, "
  "\nThy " wea "ry " "heart " "of " "cure: "
  "\nNo " "friend " "can " "love " "so " deep "ly; "
  "\nGo, " "find " "thy " ref "uge " "there. "
  "\nOh, " "give " "thy " "heart " "to " Je "sus, "
  "\nA " "balm " "for " ev "'ry " "care; "
  "\nGo, " "hide " be "neath " "His " sha "dow; "
  "\nNo " "storm " "can " "reach " "thee " "there.\n"

  \set stanza = "2."
  "\nOh, " "trust " "the " "heart " "of " Je "sus, "
  "\nBreathe " "all " "thy " sor "rows " "there; "
  "\nHe " "loves " "to " "hear " "thy " plead "ings, "
  "\nThy " hum "ble " con "trite " "prayer. "
  "\nOh, " "give " "thy " "heart " "to " Je "sus, "
  "\nA " "balm " "for " ev "'ry " "care; "
  "\nGo, " "hide " be "neath " "His " sha "dow; "
  "\nNo " "storm " "can " "reach " "thee " "there.\n"

  \set stanza = "3."
  "\nGo, " "hide " thy "self " "in " Je "sus: "
  "\nNo " "foe " "can " "harm " "thee " "there; "
  "\nHi " "hand " "will " "lift " "thy " bur "dens, "
  "\nAnd " "all " "thy " sor "rows " "bear. "
  "\nOh, " "give " "thy " "heart " "to " Je "sus, "
  "\nA " "balm " "for " ev "'ry " "care; "
  "\nGo, " "hide " be "neath " "His " sha "dow; "
  "\nNo " "storm " "can " "reach " "thee " "there.\n"

  \set stanza = "4."
  "\nGo, " "lean " "thy " "heart " "on " Je "sus, "
  "\nWho " "sees " "each " fall "ing " "tear; "
  "\nNo " "friend " "so " "true " "and " ten "der "
  "\nCan " "soothe " "thy " ev "'ry " "fear. "
  "\nOh, " "give " "thy " "heart " "to " Je "sus, "
  "\nA " "balm " "for " ev "'ry " "care; "
  "\nGo, " "hide " be "neath " "His " sha "dow; "
  "\nNo " "storm " "can " "reach " "thee " "there. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
