\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet is the Work."
  subtitle    = "Sankey No. 275"
  subsubtitle = "Sankey 880 No. 406"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "William Knapp"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts. D.D."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Wareham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% Uncomment for two-line repeat version
% #(set-global-staff-size 18)

% Uncomment for singlepage version
% #(set-global-staff-size 19)

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*7 s2
  \mark \markup { \box "B" } s4 s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4
  bes4(a) g
  f2 bes4
  c4(bes) a
  bes2 c4
  d4(c) bes
  a2 c4
  bes4(a) g
  f2 \bar "|" \break f4
  g4(f) g8[a] % B
  bes2 a4
  bes2 c4
  d2 4
  ees4(d) c
  bes4(a) bes
  c4(bes) a
  bes2
}

alto = \relative {
  \autoBeamOff
  d'4
  d2 ees4
  f2 d4
  g4(f) f
  f2 4
  f2 d8[e]
  f2 4
  g4(f) e
  f2 4
  ees4(f) ees % B
  d2 4
  d4(g) f
  f2 bes4
  a4(bes) g
  f4(ees) d
  g4(f) ees
  d2
}

tenor = \relative {
  \autoBeamOff
  g4
  bes2 8[a]
  bes2 4
  ees4(d) c
  d2 a4
  d4(a) bes
  c2 4
  d4(c) bes
  a2 bes4
  bes2 c4 % B
  bes2 fis4
  g4(d') c
  bes2 f'4
  ees4(f) ees
  d4(c) bes
  ees4(d) c
  bes2
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes2 c4
  d2 g4
  ees4(f) f
  bes,2 f'4
  bes4(a) g
  f2 a4
  bes4(c) c,
  f2 d4
  ees4(d) c % B
  g'2 d4
  g2 a4
  bes2 bes,4
  c4(d) ees
  f2 g4
  ees4(f) f
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Sweet is the work, my God, my King,
  To praise Thy name, give thanks and sing,
  To show Thy love by morn -- ing light,
  And talk of all Thy truth at night.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sweet is the day of sac -- red rest,
  No mor -- tasl cares can seize ny breast;
  Oh, may my heart in tune be found,
  Like Da -- vid's harp of sol -- emn sound.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My heart shall tri -- umph in the Lord,
  And bless His works, and bless His Word;
  Thy works of grace, how bright they shine!
  How deep Thy coun -- sels, how Di -- vine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord, I shall share a glo -- rious part
  When grace hath well re -- fined my heart.
  And fresh sup -- plies of joy are shed,
  Like ho -- ly oil, to cheer my head.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Sin, my worst en -- em -- y be -- fore,
  Shall vex my eyes and ears no more;
  My in -- ward foes shall all be slain.\Nor Sa -- tan break my peace a -- gain.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Then shall I see, and hear, and know
  All I de -- sired or wished be -- low,
  And ev -- ery power find sweet em -- ploy
  In that e -- ter -- nal world of joy.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sweet " "is " "the " "work, " "my " "God, " "my " "King, "
  "\nTo " "praise " "Thy " "name, " "give " "thanks " "and " "sing, "
  "\nTo " "show " "Thy " "love " "by " morn "ing " "light, "
  "\nAnd " "talk " "of " "all " "Thy " "truth " "at " "night. "

  \set stanza = "2."
  "\nSweet " "is " "the " "day " "of " sac "red " "rest, "
  "\nNo " mor "tasl " "cares " "can " "seize " "ny " "breast; "
  "\nOh, " "may " "my " "heart " "in " "tune " "be " "found, "
  "\nLike " Da "vid's " "harp " "of " sol "emn " "sound. "

  \set stanza = "3."
  "\nMy " "heart " "shall " tri "umph " "in " "the " "Lord, "
  "\nAnd " "bless " "His " "works, " "and " "bless " "His " "Word; "
  "\nThy " "works " "of " "grace, " "how " "bright " "they " "shine! "
  "\nHow " "deep " "Thy " coun "sels, " "how " Di "vine. "

  \set stanza = "4."
  "\nLord, " "I " "shall " "share " "a " glo "rious " "part "
  "\nWhen " "grace " "hath " "well " re "fined " "my " "heart. "
  "\nAnd " "fresh " sup "plies " "of " "joy " "are " "shed, "
  "\nLike " ho "ly " "oil, " "to " "cheer " "my " "head. "

  \set stanza = "5."
  "\nSin, " "my " "worst " en em "y " be "fore, "
  "\nShall " "vex " "my " "eyes " "and " "ears " "no " "more; "
  "\nMy " in "ward " "foes " "shall " "all " "be " "slain.\Nor " Sa "tan " "break " "my " "peace " a "gain. "

  \set stanza = "6."
  "\nThen " "shall " "I " "see, " "and " "hear, " "and " "know "
  "\nAll " "I " de "sired " "or " "wished " be "low, "
  "\nAnd " ev "ery " "power " "find " "sweet " em "ploy "
  "\nIn " "that " e ter "nal " "world " "of " "joy. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
