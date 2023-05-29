\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "More than Tongue can Tell."
  subtitle    = "Sankey No. 648"
  subsubtitle = "Sankey 880 No. 289"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. E. Hall."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*2
  \textMark \markup { \box \bold "D" }    s1*2
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | g4. a8 b d, e8. c'16 | b2. 4 | d4. e8 d g, b a | a2. \bar "|" \break
  g4 | g4. a8 b d, g8. a16 | b4(c d) e | d4. c8 b4 a | g2. \bar "|" \break
  \section \sectionLabel \markup\smallCaps Chorus
  g4 | b4. c8 b a g8. fis16 | e2. 4 | \break
  g4. a8 b c d8. b16 | a2. d,4 |
  g4. a8 b d, g8. a16 | b4(c d) e | d4. c8 b4 a | g2.
}

alto = \relative {
  \autoBeamOff
  d'4 | 4. 8 8 8 c8. e16 | d2. g4 | 4. 8 8 8 8 e | fis2.
  d4 4. 8 8 8 8. fis16 | g4(fis g) g | 4. fis8 g4 d | 2. \section
  d4 | g4. 8 8 fis e8. dis16 | e8. c16 8. 16 4 e |
  d4. 8 g g g8. d16 | 8. 16 8. 16 4 4 |
  d4. 8 8 8 8. fis16 | g4(fis g) g | 4. fis8 g4 d | 2.
}

tenor = \relative {
  \autoBeamOff
  b4 | 4. c8 d b c8. g16 | 2. 4 | b4. c8 b b cis cis | d2.
  b4 | 4. c8 d b d8. 16 | d4(c b) g | b4. a8 d4 c b2. \section
  b4 d4. e8 d c b8. a16 | g8. 16 8. 16 4 c |
  b4. c8 d a b8. g16 | fis8. 16 8. 16 4 c' |
  b4. c8 d b d8. 16 | d4(c b) g | b4. a8 d4 c | b2.
}

bass = \relative {
  \autoBeamOff
  g4 | 4. 8 8 8 c,8. 16 | g'2. 4 | 4. 8 8 8 e a | d,2.
  g4 | 4. d8 g, g b8. d16 | g,4(a b) c | d4. 8 4 4 | g,2. \section
  g'4 | 4. 8 8 d e8. b16 | c8. 16 8. 16 4 4 |
  g4. 8 8 8 8. b16 | d8. 16 8. 16 4 fis |
  g4. d8 g, g b8. d16 | g,4(a b) c | d4. 8 4 4 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  His love is more than tongue can tell!
  His love is more than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 30 _
  _ _ _ _ _ _ _ _ than tongue can tell!
  _ _ _ _ _ _ _ _ than tongue can tell!
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The love that Je -- sus had for me,
  To suf -- fer on the cru -- el tree.
  That I a ran -- somed soul might be, __
  Is more than tongue can tell!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The bit -- ter sor -- row that He bore,
  And oh, that crown of thorns He wore,
  That I might live for e -- ver -- more, __
  Is more than tongue can tell!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The peace I have in Him, my Lord,
  Who pleads be -- fore the throne of God
  The me -- rit of His pre -- cious blood, __
  Is more than tongue can tell!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The joy that comes when He is near,
  The rest He gives, so free from fear,
  The hope in Him, so bright and clear, __
  Is more than tongue can tell!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  The love that Je -- sus had for me,
  To suf -- fer on the cru -- el tree.
  That I a ran -- somed soul might be, __
  Is more than tongue can tell!
  His love is more than tongue can tell!
  His love is more than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "2."
  The bit -- ter sor -- row that He bore,
  And oh, that crown of thorns He wore,
  That I might live for e -- ver -- more, __
  Is more than tongue can tell!
  His love is more than tongue can tell!
  His love is more than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "3."
  The peace I have in Him, my Lord,
  Who pleads be -- fore the throne of God
  The me -- rit of His pre -- cious blood, __
  Is more than tongue can tell!
  His love is more than tongue can tell!
  His love is more than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "4."
  The joy that comes when He is near,
  The rest He gives, so free from fear,
  The hope in Him, so bright and clear, __
  Is more than tongue can tell!
  His love is more than tongue can tell!
  His love is more than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  The love that Je -- sus had for me,
  To suf -- fer on the cru -- el tree.
  That I a ran -- somed soul might be, __
  Is more than tongue can tell!
  His love is more than tongue can tell,
  than tongue can tell!!
  His love is more than tongue can tell,
  than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "2."
  The bit -- ter sor -- row that He bore,
  And oh, that crown of thorns He wore,
  That I might live for e -- ver -- more, __
  Is more than tongue can tell!
  His love is more than tongue can tell,
  than tongue can tell!!
  His love is more than tongue can tell,
  than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "3."
  The peace I have in Him, my Lord,
  Who pleads be -- fore the throne of God
  The me -- rit of His pre -- cious blood, __
  Is more than tongue can tell!
  His love is more than tongue can tell,
  than tongue can tell!!
  His love is more than tongue can tell,
  than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!

  \set stanza = "4."
  The joy that comes when He is near,
  The rest He gives, so free from fear,
  The hope in Him, so bright and clear, __
  Is more than tongue can tell!
  His love is more than tongue can tell,
  than tongue can tell!!
  His love is more than tongue can tell,
  than tongue can tell!
  The love that Je -- sus had for me __
  Is more than tongue can tell!
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

#(set-global-staff-size 18)

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
