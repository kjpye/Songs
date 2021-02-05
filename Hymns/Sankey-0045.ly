\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tell Me More about Jesus!"
  subtitle    = "Sankey No. 45"
  subsubtitle = "Sankey 880 No. 425"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "P. P. Bliss"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 6/8
  \tempo 4=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \partial 8
  \tempo 4=120
  s8
  s2.*13
  s4. \tempo 4=40 s \tempo 4=120
  s2.
  s4. s4
}

soprano = \relative {
  ees'8
  g4 g8 \slurDashed g(fis) \slurSolid g
  bes4 bes8 bes(aes) g
  f4 f8 f(g) aes
  c8(bes) aes \bar "|" \break \partial 4. g4 ees8
  g4 g8 \slurDashed g(fis) \slurSolid g % B
  bes4 bes8 bes(a bes)
  ees4 ees8 ees d c
  c4. bes \bar "||" \break
  bes4^\markup \smallCaps Chorus g8 g aes bes % C
  c4. bes
  bes4 c8 bes g ees
  g4. f \break
  g8 fis g bes4 bes8 % D
  c8(bes) c ees4(c8\fermata)
  bes4 c8 bes g ees
  f4. ees4
}

alto = \relative {
  ees'8
  ees4 ees8 ees4 ees8
  g4 g8 g(f) ees
  d4 8 d(e) f
  aes8 g f ees4 8
  ees4 8 \slurDashed d(d) \slurSolid ees % B
  g4 8 g(fis g)
  g4 8 f f f
  ees4. d
  ees4 8 8 f g % C
  aes4. g
  g4 aes8 g ees bes
  ees4. d
  ees8 ees ees ees4 g8 % D
  aes4 aes8 aes4.\fermata
  g4 aes8 g ees bes
  bes4. bes4
}

tenor = \relative {
  g8
  bes4 bes8 \slurDashed bes(a) \slurSolid bes8
  ees4 ees8 ees4 bes8
  bes4 8 4 8
  bes4 8 4 g8
  bes4 8 \slurDashed bes(a) \slurSolid bes
  ees4 8 4.
  ees4 c8 c bes a
  bes4. bes
  g4 bes8 bes ees ees % C
  ees4. ees
  ees4 8 8 bes aes
  bes4. bes
  bes8 a bes g4 bes8 % D
  ees8 d ees c4(ees8\fermata)
  ees4 8 8 bes g
  aes4. g4
}

bass= \relative {
  ees8
  ees4 ees8 ees4 ees8
  ees4 8 4 8
  bes 4 8 4 8
  bes4 8 ees4 8
  ees4 8 \slurDashed ees(ees) \slurSolid ees % B
  ees4 8 4.
  c4 c8 f8 f f

  bes,4. bes
  ees4 8 8 8 8 % C
  aes,4. ees'
  ees4 8 8 8 8
  bes4. bes
  ees8 ees ees ees4 ees8 % D
  aes4 8 4.\fermata
  ees4 8 8 8 8
  bes4. ees4
}

chorus = \lyricmode {
  "\"Tell" me more a -- bout Je -- "sus!\""
  "\"Tell" me more a -- bout Je -- "sus!\""
  Him would I know who loved me so;
  "\"Tell" me more a -- bout Je -- "sus!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  "\'Tis" known on earth and hea -- ven too,
  "\'Tis" sweet to me be -- cause 'tis true;
  The "\"old," old
  \set ignoreMelismata = ##t
  sto -- "ry\""
  \unset ignoreMelismata
  is ev -- er new;
  Tell me more a --bout Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Earth's fair -- est
  \set ignoreMelismata = ##t
  flow -- ers
  \unset ignoreMelismata
  will droop and die,
  Dark clouds o'er -- spread yon a -- zure sky;
  Life's dear -- est joys flit fleet -- est by;
  Tell me more a -- bout Je -- sus!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When o -- ver -- whelmed with un -- be -- lief,
  When bur -- dened with a blind -- ing grief,
  Come kind -- ly then to my re -- lief:
  Tell me more a -- bout Je -- sus!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when  the Glo -- ry- -- land I see,
  And take the "\"place" pre "pared\"" for me,
  Through end -- less years my song shall be―
  "\"Tell" me more a -- bout Je -- "sus!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\n\'Tis " "known " "on " "earth " "and " hea "ven " "too, "
  "\n\'Tis " "sweet " "to " "me " be "cause " "'tis " "true; "
  "\nThe " "\"old, " "old "
  \set ignoreMelismata = ##t
  "\nsto" "ry\" "
  \unset ignoreMelismata
  "\nis " ev "er " "new; "
  "\nTell " "me " "more " a"bout " Je "sus! "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\nHim " "would " "I " "know " "who " "loved " "me " "so; "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "

  \set stanza = "2."
  "\nEarth's " fair "est "
  \set ignoreMelismata = ##t
  "\nflow" "ers "
  \unset ignoreMelismata
  "\nwill " "droop " "and " "die, "
  "\nDark " "clouds " o'er "spread " "yon " a "zure " "sky; "
  "\nLife's " dear "est " "joys " "flit " fleet "est " "by; "
  "\nTell " "me " "more " a "bout " Je "sus! "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\nHim " "would " "I " "know " "who " "loved " "me " "so; "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "

  \set stanza = "3."
  "\nWhen " o ver "whelmed " "with " un be "lief, "
  "\nWhen " bur "dened " "with " "a " blind "ing " "grief, "
  "\nCome " kind "ly " "then " "to " "my " re "lief: "
  "\nTell " "me " "more " a "bout " Je "sus! "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\nHim " "would " "I " "know " "who " "loved " "me " "so; "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "

  \set stanza = "4."
  "\nAnd " "when "  "the " Glo ry- "land " "I " "see, "
  "\nAnd " "take " "the " "\"place " "pre " "pared\" " "for " "me, "
  "\nThrough " end "less " "years " "my " "song " "shall " "be― "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
  "\nHim " "would " "I " "know " "who " "loved " "me " "so; "
  "\n\"Tell " "me " "more " a "bout " Je "sus!\" "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." }
                                              { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor }
                                            { \global \bass }
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
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
                                              { \global \alto \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
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
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
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
                                              { \global \alto \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \basss }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
