\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I know I love Thee better, Lord!"
  subtitle    = "Sankey No. 649"
  subsubtitle = "Sankey 880 No. 447"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. E. Hudson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 | e4. f8 g g a c | c2. 4 | 4. 8 b4 a | g2 r4 \bar "|" \break
  c,4 | e4. f8 g g a c | 2. 4 | d4. g,8 b4 a8[g] | c2. \break
  \section \sectionLabel \markup\smallCaps Chorus.
  g4 | e'4. c8 d c c a | g2. 4 | b4. 8 a4 g | c2. \bar "|" \break
  g4 | e'4. c8 d c c a | g2. 4 | b4. 8 a4 g | c2.^\markup\italic rall.
}

alto = \relative {
  \autoBeamOff
  c'4 4. d8 e e f f | e2. 4 | 4. a8 g4 fis | g2 r4
  c,4 | 4. d8 e e f f | e2. 4 | g4. 8 f4 f | e2. \section
  e4 | g4. e8 f f f f | e4 d8. 16 e4 e | f4. 8 4 4 | e2.
  e4 | g4. e8 f f f f | e4 d8. 16 e4 4 | f4. 8 4 4 | e f8. 16 e4
}

tenor = \relative {
  \autoBeamOff
  e4 | g4. 8 8 c c a | g2. 4 | 4. e'8 d4 c | b2 r4
  e,4 | g4. 8 8 c c a | g2. 4 | b4. 8 d4 c8[b] | c2. \section
  c4 | 4. g8 a a a c | c4 b8. 16 c4 c | d4. 8 c4 b | c2.
  c4 | 4. g8 a a a c | 4 b8. 16 c4 4 | d4. 8 c4 b | c a8. 16 g4
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 8 8 f f | c2. 4 4. 8 d4 d | g2 r4
  c,4 | 4. 8 8 8 f f | c2. 4 | g'4. 8 4 4 | c,2. \section
  c4 | 4. 8 f f f f | c4 g'8. 16 c,4 4 | g'4. 8 4 4 | c,2.
  c4 | 4. 8 f f f f | c4 g'8. 16 c,4 4 | g'4. 8 4 4 | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The half has nev -- er yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  The blood it cleans -- eth me!
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 28 _
  _ _ _ _ _ _ _ _ yet been told,
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ yet been told,
  _ _ _ _ _ _ cleans -- eth me!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I know I love Thee bet -- ter, Lord,
  Than an -- y earth -- ly joy;
  For Thou hast giv -- en me the peace
  Which no -- thing can de -- stroy.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I know that Thou art near -- er still
  Than an -- y earth -- ly throng;
  And sweet -- er is the thought of Thee
  Than an -- y love -- ly song.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou hast put glad -- ness in my heart;
  Then may I well be glad!
  With -- out the sec -- ret of Thy love
  I could not be but sad.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Sa -- viour, pre -- cious Sa -- viour, mine!
  What will The pre -- sence be,
  If such a life of joy can crown
  Our walk on earth with Thee?
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  I know I love Thee bet -- ter, Lord,
  Than an -- y earth -- ly joy;
  For Thou hast giv -- en me the peace
  Which no -- thing can de -- stroy.
  The half has nev -- er yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  The blood it cleans -- eth me!

  \set stanza = "2."
  I know that Thou art near -- er still
  Than an -- y earth -- ly throng;
  And sweet -- er is the thought of Thee
  Than an -- y love -- ly song.
  The half has nev -- er yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  The blood it cleans -- eth me!

  \set stanza = "3."
  Thou hast put glad -- ness in my heart;
  Then may I well be glad!
  With -- out the sec -- ret of Thy love
  I could not be but sad.
  The half has nev -- er yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  The blood it cleans -- eth me!

  \set stanza = "4."
  O Sa -- viour, pre -- cious Sa -- viour, mine!
  What will The pre -- sence be,
  If such a life of joy can crown
  Our walk on earth with Thee?
  The half has nev -- er yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  The blood it cleans -- eth me!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  I know I love Thee bet -- ter, Lord,
  Than an -- y earth -- ly joy;
  For Thou hast giv -- en me the peace
  Which no -- thing can de -- stroy.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me, cleans -- eth me!

  \set stanza = "2."
  I know that Thou art near -- er still
  Than an -- y earth -- ly throng;
  And sweet -- er is the thought of Thee
  Than an -- y love -- ly song.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me, cleans -- eth me!

  \set stanza = "3."
  Thou hast put glad -- ness in my heart;
  Then may I well be glad!
  With -- out the sec -- ret of Thy love
  I could not be but sad.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me, cleans -- eth me!

  \set stanza = "4."
  O Sa -- viour, pre -- cious Sa -- viour, mine!
  What will The pre -- sence be,
  If such a life of joy can crown
  Our walk on earth with Thee?
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me, cleans -- eth me!
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  I know I love Thee bet -- ter, Lord,
  Than an -- y earth -- ly joy;
  For Thou hast giv -- en me the peace
  Which no -- thing can de -- stroy.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me!

  \set stanza = "2."
  I know that Thou art near -- er still
  Than an -- y earth -- ly throng;
  And sweet -- er is the thought of Thee
  Than an -- y love -- ly song.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me!

  \set stanza = "3."
  Thou hast put glad -- ness in my heart;
  Then may I well be glad!
  With -- out the sec -- ret of Thy love
  I could not be but sad.
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me!

  \set stanza = "4."
  O Sa -- viour, pre -- cious Sa -- viour, mine!
  What will The pre -- sence be,
  If such a life of joy can crown
  Our walk on earth with Thee?
  The half has nev -- er yet been told,
  yet been told,
  Of love so full and free!
  The half has nev -- er yet been told,
  yet been told,
  The blood it cleans -- eth me!
}

\book {
  \bookOutputSuffix "midiSop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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

\book {
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
