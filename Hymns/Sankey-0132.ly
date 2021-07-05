\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gethsemane."
  subtitle    = "Sankey No. 132"
  subsubtitle = "Sankey 880 No. 219"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. B. Tappan"
  meter       = "L.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key aes \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2 s1*5 s2
  \mark \markup { \box "B" } s2 s1*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=96
  s2
  s1*11
  \tempo 4=32 s2
}

soprano = \relative {
  ees'2
  ees4 4 f f
  ees2 2
  ees2 aes
  aes4 4 bes c
  bes2 2
  aes2 \bar "|" \break \partial 2 c
  bes4 4 4 4 % B
  bes2 aes
  g2 2
  aes4 4 4 f
  ees2 2
  ees2\fermata
}

alto = \relative {
  c'2
  c4 4 des des
  c2 bes
  c2 2
  c4 4 ees ees
  f2 ees4(des)
  c2 ees
  ees4 4 4 4 % B
  d2 f
  ees2 2
  ees4 4 f des
  c4(bes) des2
  c2\fermata
}

tenor = \relative {
  aes2
  aes4 4 4 4
  aes2 g
  aes2 2
  aes4 4 g aes
  aes2 g
  aes2 aes2
  g4 4 bes g % B
  f4(bes) 2
  bes2 2
  aes4 4 4 4
  aes2 g
  aes2\fermata
}

bass= \relative {
  aes,2
  aes4 4 des des
  ees2 2
  aes,2 2
  f'4 4 ees c
  des2 ees
  aes,2 aes
  ees'4 4 g ees % B
  bes2 d
  ees2 des
  c4 4 des des
  ees2 2
  aes,2\fermata
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  'Tis mid -- night: and on Ol -- ive's brow
  The star is dimm'd that late -- ly shone;
  'Tis mid -- night; in the gar -- den now
  The suf -- f'ring Sa -- viour prays a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis miod -- night: and from all re -- moved,
  The Sa -- viour wres -- tles 'lone with fears;
  E'en that dis -- ci -- ple whom He loved
  Heeds not his Mas -- ter's grief and tears.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Tis mid -- night: and for oth -- ers guilt
  The Man of Sor -- rows weeps in blood;
  Yet He, who hath in an -- guish knelt,
  Is not for -- sak -- en by His God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  'Tis mid -- night: and from eth -- er- -- plains
  Is borne the song that an -- gels know;
  Un -- heard by mor -- tals are the strains
  That sweet -- ly soothe the Sa -- viour's woe.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "'Tis " mid "night: " "and " "on " Ol "ive's " "brow "
  "\nThe " "star " "is " "dimm'd " "that " late "ly " "shone; "
  "\n'Tis " mid "night; " "in " "the " gar "den " "now "
  "\nThe " suf "f'ring " Sa "viour " "prays " a "lone. "

  \set stanza = "2."
  "\n'Tis " miod "night: " "and " "from " "all " re "moved, "
  "\nThe " Sa "viour " wres "tles " "'lone " "with " "fears; "
  "\nE'en " "that " dis ci "ple " "whom " "He " "loved "
  "\nHeeds " "not " "his " Mas "ter's " "grief " "and " "tears. "

  \set stanza = "3."
  "\n'Tis " mid "night: " "and " "for " oth "ers " "guilt "
  "\nThe " "Man " "of " Sor "rows " "weeps " "in " "blood; "
  "\nYet " "He, " "who " "hath " "in " an "guish " "knelt, "
  "\nIs " "not " for sak "en " "by " "His " "God. "

  \set stanza = "4."
  "\n'Tis " mid "night: " "and " "from " eth er- "plains "
  "\nIs " "borne " "the " "song " "that " an "gels " "know; "
  "\nUn" "heard " "by " mor "tals " "are " "the " "strains "
  "\nThat " sweet "ly " "soothe " "the " Sa "viour's " "woe. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
