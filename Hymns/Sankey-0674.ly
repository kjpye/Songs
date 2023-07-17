\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oft in Sorrow."
  subtitle    = "Sankey No. 674"
  subsubtitle = "Sankey 880 No. 690"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "H. Kirke White" and \smallCaps "F. S. Fuller-Maitland."}
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Oakfield."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 c' bes c | aes bes g2 | aes4 c bes ees | aes, g8[f] ees2 |
  ees'4 c a f | des' bes g2 | aes4 c bes des | des c8[bes] aes2 |
}

alto = \relative {
  \autoBeamOff
  c'4 ees des des | c f f(ees8[des]) | c4 d ees ees | ees d ees2 |
  ges4 ees ges f8[ees] | des4 f f(ees8[des]) | c4 ges' f f | f g aes2 |
}

tenor = \relative {
  \autoBeamOff
  aes4 4 4 g | aes des bes2 | aes4. 8 g4 bes | c bes8[aes] g2 |
  a4. bes8 c4 a | bes des bes2 | aes4 a bes bes | f' ees8[des] c2 |
}

bass = \relative {
  \autoBeamOff
  aes,4 4 ees' ees | f des ees2 | f4. 8 g4 g, | aes bes  ees4.(des8) |
  c4. des8 ees4 f | bes,4. 8 ees2 | f4 ees des bes | ees4 4 aes,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Oft in sor -- row, oft in woe,
  On -- ward, Christ -- ians, on -- ward go!
  Fight the fight, main -- tain the strife,
  Strength -- ened with the Bread of Life.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ward, Christ -- ians, on -- ward go!
  Join the war, and face the foe:
  Will ye flee in dan -- ger's hour?
  Know ye not your Cap -- tain's power?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let your droop -- ing hearts be glad!
  March, in heaven -- ly ar -- mour clad:
  Fight, nor think the bat -- tle long;
  Soon shall vic -- t'ry tune your song.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Let not sor -- row dim your eye,
  Soon shall ev -- 'ry tear be dry;
  Let not tears your course im -- pede,
  Great your strength if great your need.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  On -- ward then, to glo -- ry move,
  More than con -- querors ye shall prove;
  Though op -- posed by many a foe,
  Christ -- ian sol -- diers, on -- ward go!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oft " "in " sor "row, " "oft " "in " "woe, "
  "\nOn" "ward, " Christ "ians, " on "ward " "go! "
  "\nFight " "the " "fight, " main "tain " "the " "strife, "
  "\nStrength" "ened " "with " "the " "Bread " "of " "Life.\n"

  \set stanza = "2."
  "\nOn" "ward, " Christ "ians, " on "ward " "go! "
  "\nJoin " "the " "war, " "and " "face " "the " "foe: "
  "\nWill " "ye " "flee " "in " dan "ger's " "hour? "
  "\nKnow " "ye " "not " "your " Cap "tain's " "power?\n"

  \set stanza = "3."
  "\nLet " "your " droop "ing " "hearts " "be " "glad! "
  "\nMarch, " "in " heaven "ly " ar "mour " "clad: "
  "\nFight, " "nor " "think " "the " bat "tle " "long; "
  "\nSoon " "shall " vic "t'ry " "tune " "your " "song.\n"

  \set stanza = "4."
  "\nLet " "not " sor "row " "dim " "your " "eye, "
  "\nSoon " "shall " ev "'ry " "tear " "be " "dry; "
  "\nLet " "not " "tears " "your " "course " im "pede, "
  "\nGreat " "your " "strength " "if " "great " "your " "need.\n"

  \set stanza = "5."
  "\nOn" "ward " "then, " "to " glo "ry " "move, "
  "\nMore " "than " con "querors " "ye " "shall " "prove; "
  "\nThough " op "posed " "by " "many " "a " "foe, "
  "\nChrist" "ian " sol "diers, " on "ward " "go! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
