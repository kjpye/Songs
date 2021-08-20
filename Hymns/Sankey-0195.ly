\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Holy Spirit!"
  subtitle    = "Sankey No. 195"
  subsubtitle = "N.H. No. 80"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Robert Bruce."
  meter       = \markup\smallCaps "11.10."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 bes4 c
  aes2 ees
  f4 aes g f
  f2 ees
  f2 g4 aes
  aes2 c % B
  c4 bes bes aes
  bes1
  c2 bes4 c
  aes2 ees
  f4 aes g f % C
  f2 ees
  f2 g4 aes
  aes2 c
  c4 bes aes g
  aes1
}

alto = \relative {
  \autoBeamOff
  ees'2 des4 ees
  c2 2
  des4 f ees des
  des2 c
  des2 4 c
  c2 ees % B
  des4 4 4 4
  ees1
  ees2 des4 ees
  c2 2
  des4 f ees des % C
  des2 c
  des2 ees4 f
  ees2 2
  f4 4 ees des
  c1
}

tenor = \relative {
  \autoBeamOff
  aes2 4 4
  ees2 aes
  aes4 f g aes
  aes2 2
  aes2 ees4 4
  ees2 aes % B
  g4 4 4 bes
  g1
  aes2 4 4
  ees2 aes
  aes4 f g aes % C
  f2 ees
  f2 g4 aes
  aes2 c
  c4 bes aes g
  aes1
}

bass = \relative {
  \autoBeamOff
  aes,2 4 4
  aes2 2
  des4 4 4 4
  aes2 2
  des2 bes4 aes
  aes2 2 % B
  bes4 4 4 4
  ees1
  aes,2 4 4
  aes2 2
  des4 4 4 4 % C
  aes2 2
  des2 4 4
  c2 aes
  des4 4 ees ees
  aes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Ho -- ly Spi -- rit, like a dove de -- scend -- ing,
  Rest Thou up -- on us while we meet to pray;
  Show us the Sa -- viour, His great love re -- veal -- ing;
  lead us to Him, the Life, the Truth, the Way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, Ho -- ly Spi -- rit, ev -- 'ry cloud dis -- pell -- ing;
  Fill us with glad -- ness, thro' the Mas -- ter's name:
  Bring to our mem -- 'ry words that He hath spo -- ken,
  Then shall our tongues His won -- drous grace pro -- claim.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, Ho -- ly Spi -- rit, sent from God the Fat -- ther—
  Thou Friend and Teach -- er, Com -- fort -- er, and Guide—
  Our thoughts di -- rect -- ing, keep us close to Je -- sus,
  And in our hearts for ev -- er -- more a -- bide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Ho "ly " Spi "rit, " "like " "a " "dove " de scend "ing, "
  "\nRest " "Thou " up "on " "us " "while " "we " "meet " "to " "pray; "
  "\nShow " "us " "the " Sa "viour, " "His " "great " "love " re veal "ing; "
  "\nlead " "us " "to " "Him, " "the " "Life, " "the " "Truth, " "the " "Way. "

  \set stanza = "2."
  "\nCome, " Ho "ly " Spi "rit, " ev "'ry " "cloud " dis pell "ing; "
  "\nFill " "us " "with " glad "ness, " "thro' " "the " Mas "ter's " "name: "
  "\nBring " "to " "our " mem "'ry " "words " "that " "He " "hath " spo "ken, "
  "\nThen " "shall " "our " "tongues " "His " won "drous " "grace " pro "claim. "

  \set stanza = "3."
  "\nCome, " Ho "ly " Spi "rit, " "sent " "from " "God " "the " Fat "ther— "
  "\nThou " "Friend " "and " Teach "er, " Com fort "er, " "and " "Guide— "
  "\nOur " "thoughts " di rect "ing, " "keep " "us " "close " "to " Je "sus, "
  "\nAnd " "in " "our " "hearts " "for " ev er "more " a "bide. "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
