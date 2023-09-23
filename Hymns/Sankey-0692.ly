\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Trust On!"
  subtitle    = "Sankey No. 692"
  subsubtitle = "Sankey 880 No. 330"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Eliza A Walker."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl     = { \bar "||" \break }
apart  = \partCombineApart
auto   = \partCombineAutomatic
chords = \partCombineChords

soprano = \relative {
  \autoBeamOff
  c''8 | 4 a8 bes4 d8 | c4. a4 g8 | f4 e8 f4 a8 | g4.~4 \bar "|" \break
  c8 | 4 a8 bes4 d8 | c4. a4 f8 | g4 bes8 a4 g8 | f4.~4 \section
  \sectionLabel \markup\smallCaps Chorus. \break
  c'8 | d4.~4 8 | c4.~4 8 | bes4 a8 bes4 c8 | a4.~8[bes] \bar "|" \break
  c8 | d4.~4 8 | c4.~4 a8 | g4 bes8 a4 g8 | f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8 | 4 8 4 8 | 4. 4 8 | c4 8 4 f8 | e4.~4
  e8 | f4 8 4 8 | 4. 4 c8 | d4 g8 f4 e8 | c4.~4 \section
  \apart r8 | r4 f8 4 r8 | r4 f8 4 \auto a8 | g4 fis8 g4 a8 | f4.~4
  \apart r8 | r4 f8 4 r8 | r4 f8 4 \auto 8 | d4 g8 d4 e8 | c4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | 4 c8 d4 bes8 | a4. c4 bes8 | a4 bes8 c4 8 | 4.~4
  bes8 | a4 c8 d4 bes8 | a4. c4 8 | bes4 d8 c4 bes8 | a4.~4 \section
  r8 | r4 bes8 4 r8 | r4 a8 4 c8 | 4 8 4 8 | 4.~4
  r8 | r4 bes8 4 r8 | r4 a8 4 c8 | bes4 d8 c4 bes8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  f8 | 4 8 4 8 | 4. 4 c8 | f4 g8 a4 f8 | c4.~4
  c8 | f4 8 4 8 | 4. 4 a,8 | bes4 g8 c4 8 | f4.~4 \section
  r8 | r4 bes,8 4 r8 | r4 f'8 4 8 | c4 8 4 8 | f4.~4
  r8 | r4 bes,8 4 r8 | r4 f'8 4 8 | bes,4 g8 c4 8 | f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Trust on, trust on,
  Tho' dark the night and drear:
  Trust on! trust on!
  The morn -- ing dawn is near.
}

chorusSop = \lyricmode {
  \repeat unfold 26 _
  Trust on! trust on!
  _ _ _ _ _ _
  Trust on! trust on!
  _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Trust on, trust on, be -- liev -- er!
  Though long the con -- flict be,
  Thou yet shalt prove vic -- to -- rious;
  Thy God shall fight for thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Trust on! the dan -- ger pres -- ses,
  Temp -- ta -- tion strong is near,
  O -- ver life's dang -- 'rous ra -- pids
  He shall thy pas -- sage steer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Lord is strong to save us,
  He is a faith -- ful friend:
  Trust on, trust on, be -- liev -- er!
  Oh, trust Him to the end!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Trust " "on, " "trust " "on, " be liev "er! "
  "\nThough " "long " "the " con "flict " "be, "
  "\nThou " "yet " "shalt " "prove " vic to "rious; "
  "\nThy " "God " "shall " "fight " "for " "thee. "
  "\nTrust " "on, " "trust " "on, "
  "\nTho' " "dark " "the " "night " "and " "drear: "
  "\nTrust " "on! " "trust " "on! "
  "\nThe " morn "ing " "dawn " "is " "near.\n"

  \set stanza = "2."
  "\nTrust " "on! " "the " dan "ger " pres "ses, "
  "\nTemp" ta "tion " "strong " "is " "near, "
  "\nO" "ver " "life's " dang "'rous " ra "pids "
  "\nHe " "shall " "thy " pas "sage " "steer. "
  "\nTrust " "on, " "trust " "on, "
  "\nTho' " "dark " "the " "night " "and " "drear: "
  "\nTrust " "on! " "trust " "on! "
  "\nThe " morn "ing " "dawn " "is " "near.\n"

  \set stanza = "3."
  "\nThe " "Lord " "is " "strong " "to " "save " "us, "
  "\nHe " "is " "a " faith "ful " "friend: "
  "\nTrust " "on, " "trust " "on, " be liev "er! "
  "\nOh, " "trust " "Him " "to " "the " "end! "
  "\nTrust " "on, " "trust " "on, "
  "\nTho' " "dark " "the " "night " "and " "drear: "
  "\nTrust " "on! " "trust " "on! "
  "\nThe " morn "ing " "dawn " "is " "near. "
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
            \addlyrics \wordsMidi
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
%            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\tiny \chorusSop}
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
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

#(set-global-staff-size 20)

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                             }
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSop }
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

#(set-global-staff-size 20)

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

#(set-global-staff-size 20)

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
