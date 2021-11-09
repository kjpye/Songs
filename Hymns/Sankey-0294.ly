\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "An Evening Prayer."
  subtitle    = "Sankey No. 294"
  subsubtitle = "C. C. No. 156"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ray Palmer D.D."
  meter       = \markup\smallCaps "7s."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4(ges) g
  aes2 4
  aes4(bes) c
  des2.
  des4(c) bes
  aes2 f4
  aes4(ges) f
  f4(ees2) \break
  f4(ges) g % B
  aes2 4
  aes4(bes) c
  des2.
  ees4(des) bes
  aes2 des4
  f,2 ees4
  des2.
}

alto = \relative {
  \autoBeamOff
  des'4(ees) e
  f2 aes4
  ges2 4
  f4(des f)
  ges2 4
  f2 des4
  ees2 des4
  des4(c2)
  des4(ees) e % B
  f2 aes4
  ges2 4
  f4(aes f)
  ges2 4
  f2 des4
  des4(bes c)
  des2.
}

tenor = \relative {
  \autoBeamOff
  aes2 bes4
  aes4(des) des
  c4(des) ees
  des4(f, aes)
  bes4(c) des
  des2 aes4
  aes2 4
  aes2.
  aes2 bes4 % B
  aes4(des) des
  c4(des) ees
  des2(ces4)
  bes2 des4
  des2 aes8[bes]
  aes2 ges4
  f2.
}

bass = \relative {
  \autoBeamOff
  des2 4
  des2 f4
  aes2 4
  des,2.
  ges2 4
  des2 4
  c2 des4
  aes2.
  
  des2 4 % B
  des2 f4
  aes2 4
  bes4(f des)
  ges2 4
  des2 f8[ges]
  aes2 aes,4
  des2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Steal -- ing from the world a -- way,
  We are come to seek Thy face;
  Kind -- ly meet us, Lord, we pray,
  Grant us Thy re -- vi -- ving grace.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yon -- der stars that guild the sky
  Shine with but a bor -- rowed light;
  We, un -- less Thy light be nigh,
  Wan -- der wrapt in gloom -- y night.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sun of right -- eous -- ness, dis -- pel
  All our dark -- ness, doubts and fears;
  May Thy light with -- in us dwell
  Till e -- ter -- nal day ap -- pears!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Steal" "ing " "from " "the " "world " a "way, "
  "\nWe " "are " "come " "to " "seek " "Thy " "face; "
  "\nKind" "ly " "meet " "us, " "Lord, " "we " "pray, "
  "\nGrant " "us " "Thy " re vi "ving " "grace. "

  \set stanza = "2."
  "\nYon" "der " "stars " "that " "guild " "the " "sky "
  "\nShine " "with " "but " "a " bor "rowed " "light; "
  "\nWe, " un "less " "Thy " "light " "be " "nigh, "
  "\nWan" "der " "wrapt " "in " gloom "y " "night. "

  \set stanza = "3."
  "\nSun " "of " right eous "ness, " dis "pel "
  "\nAll " "our " dark "ness, " "doubts " "and " "fears; "
  "\nMay " "Thy " "light " with "in " "us " "dwell "
  "\nTill " e ter "nal " "day " ap "pears! "
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
