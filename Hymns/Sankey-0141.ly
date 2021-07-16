\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Head that once was Crowned."
  subtitle    = "Sankey No. 141"
  subsubtitle = "Sankey 880 No. 661"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Clark."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
  meter       = "C.M."
  piece       = \markup\smallCaps "St. Magnus."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  e'4
  a4 b gis e
  a4 b cis b
  cis4 a cis dis
  e2. \bar "|" \break b4
  cis4 b a gis % B
  fis4 b gis e
  e'4 d cis b
  a2.
}

alto = \relative {
  \autoBeamOff
  cis'4
  fis4 4 e e
  e4 d cis e
  e4 e a a
  gis2. 4
  a4 gis fis eis % B
  fis4 fis e e
  e4 fis e e8[d]
  cis2.
}

tenor = \relative {
  \autoBeamOff
  a4
  cis4 d b gis
  a4 fis8[gis] a4 gis
  a4 cis cis b
  b2. e4
  e4 e dis b % B
  a4 d b gis
  a4 4 4 gis
  a2.
}

bass= \relative {
  \autoBeamOff
  a4
  fis4 d e e8[d]
  cis4 b a e'
  a4 a fis b,
  e2. 4
  a4 e fis cis % B
  d4 b e e8[d]
  cis4 d e e
  a,2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The head that once was crown'd with thorns
  Is crown'd with glo -- ry now:
  A roy -- al di -- a -- dem a -- dorns
  The migh -- ty Vic -- tor's brow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The high -- est place that heav'n af -- fords
  Is His by sov -- 'reign right:
  The King of kings and Lord of lords,
  He reigns in per -- fect light.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The joy of all who dwell a -- bove,
  The joy of all be -- low,
  To whom He man -- i -- fests His love,
  And grants His name to know.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To them the cross, with all its shame,
  With all its grace, is given:
  Their name, and ev -- er -- last -- ing name;
  Their joy, the joy of heaven.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  They suf -- fer with their Lord be -- low;
  They reign with Him a -- bove—
  Their pro -- fit and their bliss to know
  The ful -- ness of His love.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  His cross to them is life and health,
  Though it was death to Him;
  Their pre -- sent hope, and joy, and wealth,
  And their e -- ter -- nal theme.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "head " "that " "once " "was " "crown'd " "with " "thorns "
  "\nIs " "crown'd " "with " glo "ry " "now: "
  "\nA " roy "al " di a "dem " a "dorns "
  "\nThe " migh "ty " Vic "tor's " "brow. "

  \set stanza = "2."
  "\nThe " high "est " "place " "that " "heav'n " af "fords "
  "\nIs " "His " "by " sov "'reign " "right: "
  "\nThe " "King " "of " "kings " "and " "Lord " "of " "lords, "
  "\nHe " "reigns " "in " per "fect " "light. "

  \set stanza = "3."
  "\nThe " "joy " "of " "all " "who " "dwell " a "bove, "
  "\nThe " "joy " "of " "all " be "low, "
  "\nTo " "whom " "He " man i "fests " "His " "love, "
  "\nAnd " "grants " "His " "name " "to " "know. "

  \set stanza = "4."
  "\nTo " "them " "the " "cross, " "with " "all " "its " "shame, "
  "\nWith " "all " "its " "grace, " "is " "given: "
  "\nTheir " "name, " "and " ev er last "ing " "name; "
  "\nTheir " "joy, " "the " "joy " "of " "heaven. "

  \set stanza = "5."
  "\nThey " suf "fer " "with " "their " "Lord " be "low; "
  "\nThey " "reign " "with " "Him " a "bove— "
  "\nTheir " pro "fit " "and " "their " "bliss " "to " "know "
  "\nThe " ful "ness " "of " "His " "love. "

  \set stanza = "6."
  "\nHis " "cross " "to " "them " "is " "life " "and " "health, "
  "\nThough " "it " "was " "death " "to " "Him; "
  "\nTheir " pre "sent " "hope, " "and " "joy, " "and " "wealth, "
  "\nAnd " "their " e ter "nal " "theme. "
}
  
nl = { \bar "||" \break }

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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
                                % Joint soprano/alto staff
      \new Staff \with { printPartCombineTexts = ##f }
      <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano
      <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
      >>
                                % Alto staff
      \new Staff = alto
      <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
      >>
                                  % Tenor staff
      \new Staff = tenor
      <<
        \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor }
      >>
                                  % Bass staff
      \new Staff = bass
      <<
        \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass }
      >>
    >>
    \midi {}
  }
}
