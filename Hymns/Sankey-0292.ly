\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Evening Praise."
  subtitle    = "Sankey No. 292"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. F. Sherwin."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary A. Lathbury."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*4
  \mark \markup { \box "B" } s1.*4
  \mark \markup { \box "C" } s1.*4
  \mark \markup { \box "D" } s1.*4
  \mark \markup { \box "E" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2.=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'2 4 2 f4
  ees2 d4 ees2.
  aes2 4 2 f4
  ees2 d4 ees2.
  g2 4 aes2 4 % B
  bes4(aes) bes c2.
  des2 4 c2 4
  d4(c) d ees2 c4
  bes2.^\< 2.^\> % C
  ees,2.\! ~ 2 r4 \bar "||"
  aes2^\p^\<^\markup\smallCaps Chorus. ees4 aes2\! ees4
  c'2. aes
  ees'2. des2 bes4 % D
  aes2.~2 r4
  aes2 g4 aes2 f4
  ees2 aes4 c2.
  bes2^\cresc a4 bes2 g4 % E
  aes2 c4 ees2 f4
  ees2. g,2. aes2.~2\omit\ff r4
}

alto = \relative {
  \autoBeamOff
  c'2 4 des2 4
  c2 b4 c2.
  c2 4 des2 4
  c2 b4 c2.
  des2 4 c2 4 % B
  des4(c) ees4 2.
  ees2 4 2 4
  aes2 f4 ees2 4
  ees2.^\< d2.^\> % C
  ees2.\! ~ 2 r4
  c2^\p^\< 4 2\! 4
  ees2. c
  aes'2. g2 des4 % D
  c2.~2 r4
  f2 e4 f2 des4
  c2 ees4 2.
  ees2^\cresc 4 2 4 % E
  ees2 4 aes2 4
  aes2. ees
  ees2.~2\omit\ff r4
}

tenor = \relative {
  \autoBeamOff
  ees2 4 f2 aes4
  aes2 f4 ees2.
  ees2 4 f2 aes4
  aes2 f4 ees2(aes4)
  bes2 4 aes2 4 % B
  g4(aes) g aes2.
  bes2 4 aes2 4
  f2 aes4 g2 aes4
  g2.\omit\< f\omit\> % C
  g2.\! ~2 r4
  aes2\omit\p\omit\< 4 ees2\! aes4
  aes2. 2.
  c2. bes2 g4 % D
  aes2.~2 r4
  aes2 bes4 aes2 4
  aes2 c4 aes2.
  des2\omit\cresc c4 des2 bes4 % E
  c2 aes4
  c2 des4
  c2. bes2(des4)
  c2.~2\omit\ff r4
}

bass = \relative {
  \autoBeamOff
  aes,2 4 2 4
  aes2 4 2.
  aes2 4 2 4
  aes 2 4 2.
  ees'2 4 2 4 % B
  ees2 4 aes2.
  g2 4 aes2 aes,4
  bes2 b4 c2 aes4
  bes2.\omit\< 2.\omit\> % C
  ees2.\! ~ 2 r4
  aes,2\omit\p\omit\< 4 2\! 4
  aes'2. 2.
  ees2. 2 4 % D
  aes,2.~2 r4
  des2 4 2 4
  aes2 aes'4 2.
  ees2\omit\cresc 4 2 4 % E
  aes2 4 2 des,4
  ees2. 2.
  aes,2.~2\omit\ff r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Ho -- ly, ho -- ly, ho -- ly,
  Lord God of hosts!
  Heaven and earth are full of Thee!
  Heaven and earth are prais -- ing Thee, O Lord most high!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Day is dy -- ing in the west,
  Heaven is touch -- ing earth with rest;
  Wait and wor -- ship while the night
  Sets her ev -- 'ning lamps a -- light
  Thro' all the sky.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord of life, be -- neath the dome
  Of the u -- ni --verse, Thy home,
  Gath -- er us, who seek Thy face,
  To the fold of Thy em -- brace,
  For Thou art nigh.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  While the deepen -- ing shad -- ows fall,
  Heart of Love, en -- fold -- ing all,
  Through the glo -- ry and the grace
  Of the stars that veil Thy face,
  Our hearts as -- cend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When for ev -- er from our sight
  Pass the stars, the day, the night,
  Lord of an -- gels, on our eyes
  Let e -- ter -- nal morn -- ing rise,
  And shad -- ows end.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Day " "is " dy "ing " "in " "the " "west, "
  "\nHeaven " "is " touch "ing " "earth " "with " "rest; "
  "\nWait " "and " wor "ship " "while " "the " "night "
  "\nSets " "her " ev "'ning " "lamps " a "light "
  "\nThro' " "all " "the " "sky. "
  "\nHo" "ly, " ho "ly, " ho "ly, "
  "\nLord " "God " "of " "hosts! "
  "\nHeaven " "and " "earth " "are " "full " "of " "Thee! "
  "\nHeaven " "and " "earth " "are " prais "ing " "Thee, " "O " "Lord " "most " "high! "

  \set stanza = "2."
  "\nLord " "of " "life, " be "neath " "the " "dome "
  "\nOf " "the " u ni"verse, " "Thy " "home, "
  "\nGath" "er " "us, " "who " "seek " "Thy " "face, "
  "\nTo " "the " "fold " "of " "Thy " em "brace, "
  "\nFor " "Thou " "art " "nigh. "
  "\nHo" "ly, " ho "ly, " ho "ly, "
  "\nLord " "God " "of " "hosts! "
  "\nHeaven " "and " "earth " "are " "full " "of " "Thee! "
  "\nHeaven " "and " "earth " "are " prais "ing " "Thee, " "O " "Lord " "most " "high! "

  \set stanza = "3."
  "\nWhile " "the " deepen "ing " shad "ows " "fall, "
  "\nHeart " "of " "Love, " en fold "ing " "all, "
  "\nThrough " "the " glo "ry " "and " "the " "grace "
  "\nOf " "the " "stars " "that " "veil " "Thy " "face, "
  "\nOur " "hearts " as "cend. "
  "\nHo" "ly, " ho "ly, " ho "ly, "
  "\nLord " "God " "of " "hosts! "
  "\nHeaven " "and " "earth " "are " "full " "of " "Thee! "
  "\nHeaven " "and " "earth " "are " prais "ing " "Thee, " "O " "Lord " "most " "high! "

  \set stanza = "4."
  "\nWhen " "for " ev "er " "from " "our " "sight "
  "\nPass " "the " "stars, " "the " "day, " "the " "night, "
  "\nLord " "of " an "gels, " "on " "our " "eyes "
  "\nLet " e ter "nal " morn "ing " "rise, "
  "\nAnd " shad "ows " "end. "
  "\nHo" "ly, " ho "ly, " ho "ly, "
  "\nLord " "God " "of " "hosts! "
  "\nHeaven " "and " "earth " "are " "full " "of " "Thee! "
  "\nHeaven " "and " "earth " "are " prais "ing " "Thee, " "O " "Lord " "most " "high! "
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
