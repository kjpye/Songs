\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Glory Ever be to Jesus!"
  subtitle    = "Sankey No. 210"
  subsubtitle = "Sankey 880 No. 503"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = \markup\smallCaps "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 aes4 4. bes8
  aes8[g] f[g] aes4 ees
  ees4 bes'4 4. c8
  bes8[aes] g[aes] bes2
  ees,4 aes4 4. bes8 % B
  aes8[g] f[g] aes4 bes
  c4 ees ees8[des] c[bes]
  aes4 g aes2 \bar "||"
  bes4^\markup\smallCaps Chorus. 4 4. c8 % C
  des8[c] bes[c] des4 bes
  c4 4 4. ees8
  ees8[d] c[d] ees2
  ees,4 aes4 4. bes8 % D
  aes8[g] f[g] aes4 bes
  c4 ees ees8[des] c[bes] aes4 g aes2
}

alto = \relative {
  \autoBeamOff
  c'4 ees4 4. f8
  ees8[des] c4 4 4
  ees8[des] des4 c c
  des8[c] des[c] <<ees2 \new Voice {\voiceFour \teeny bes'8 g f ees \normalsize} >>
  c4 ees4 4. f8 % B
  ees8[des] des4 c ees
  ees4 ges f f
  ees4 des c2
  ees4 4 4. 8 % C
  ees4 4 4 4
  ees4 4 4. 8
  g8[f] aes4 << g2 \new Voice {\voiceFour \teeny ees'8 des bes g \normalsize} >>
  c,4 ees4 4. f8 % D
  ees8[des] des4 c ees
  ees4 ges f f
  ees4 des c2
}

tenor = \relative {
  \autoBeamOff
  aes4 c4 4. des8
  c8[bes] aes[bes] aes4 4
  g4 4 4. aes8
  g8[aes] bes[aes] g2
  aes4 c4 4. des8 % B
  c8[bes] aes[bes] aes4 g
  aes4 4 8[bes] ees[des]
  c4 bes aes2
  g4 4 4. aes8 % C
  bes8[aes] g[aes] bes4 g
  aes4 4 4. c8
  bes4 4 2
  aes4 c4 4. des8 % D
  c8[bes] aes[bes] aes4 g
  aes4 4 8[bes] ees[des] c4 bes aes2
}

bass = \relative {
  \autoBeamOff
  aes4 4 4. des,8
  ees4 4 aes,4 4
  ees'4 4 4. 8
  ees4 4 2
  aes4 4 4. des,8 % B
  ees4 4 f ees
  aes4 c, d d
  ees4 4 aes,2
  ees'4 4 4. 8 % C
  ees4 4 4 4
  aes4 4 4. 8
  bes4 bes, ees2
  aes4 4 4. des,8 % D
  ees4 4 f4 ees4
  aes4 c, des des
  ees4 4 aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Saved by grace thro' faith in Je -- sus.
  Saved by His own pre -- cious blood,
  May we, in His love a -- bi -- ding,
  Fol -- low on to know the Lord.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Glo -- ry ev -- er be to Je -- sus!—
  God's own well -- be -- lov -- ed Son!
  By His grace He hath re -- deem'd us,
  "\"It" is fin -- "ish'd!\"" all is done.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, the wear -- y days of wan -- d'ring.
  Long -- ing, ho -- ping, for the light!
  These at last lie all be -- hind us,
  Je -- sus is our strength and might.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In His safe and ho -- ly keep -- ing,
  'Neath the sha -- dow of His wing,
  Glad -- ly in His love con -- fi -- ding,
  May our souls His prais -- es sing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Glo" "ry " ev "er " "be " "to " Je "sus!— "
  "\nGod's " "own " well be lov "ed " "Son! "
  "\nBy " "His " "grace " "He " "hath " re "deem'd " "us, "
  "\n\"It " "is " fin "ish'd!\" " "all " "is " "done. "
  "\nSaved " "by " "grace " "thro' " "faith " "in " Je "sus. "
  "\nSaved " "by " "His " "own " pre "cious " "blood, "
  "\nMay " "we, " "in " "His " "love " a bi "ding, "
  "\nFol" "low " "on " "to " "know " "the " "Lord. "

  \set stanza = "2."
  "\nOh, " "the " wear "y " "days " "of " wan "d'ring. "
  "\nLong" "ing, " ho "ping, " "for " "the " "light! "
  "\nThese " "at " "last " "lie " "all " be "hind " "us, "
  "\nJe" "sus " "is " "our " "strength " "and " "might. "
  "\nSaved " "by " "grace " "thro' " "faith " "in " Je "sus. "
  "\nSaved " "by " "His " "own " pre "cious " "blood, "
  "\nMay " "we, " "in " "His " "love " a bi "ding, "
  "\nFol" "low " "on " "to " "know " "the " "Lord. "

  \set stanza = "3."
  "\nIn " "His " "safe " "and " ho "ly " keep "ing, "
  "\n'Neath " "the " sha "dow " "of " "His " "wing, "
  "\nGlad" "ly " "in " "His " "love " con fi "ding, "
  "\nMay " "our " "souls " "His " prais "es " "sing. "
  "\nSaved " "by " "grace " "thro' " "faith " "in " Je "sus. "
  "\nSaved " "by " "His " "own " pre "cious " "blood, "
  "\nMay " "we, " "in " "His " "love " a bi "ding, "
  "\nFol" "low " "on " "to " "know " "the " "Lord. "
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
