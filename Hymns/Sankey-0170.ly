\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Waiting for Thy Coming."
  subtitle    = "Sankey No. 170"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7.D."

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
  c''4. bes8 des c bes aes
  aes2 g4 r
  bes4. aes8 g des' c8. bes16
  c2. r4 \break
  c4. bes8 des c bes aes % B
  aes2 g4 r
  bes4. aes8 g des' c8. bes16
  aes2. r4 \break
  bes4. a8 bes ees, ees' des % C
  c2 aes4 r
  c4. bes8 aes aes bes8. c16
  bes2(ees4 des) \break
  c4. bes8 des c bes aes % D
  a2 des4 r
  c4. des8 c bes aes8. g16
  aes2. r4
}

alto = \relative {
  \autoBeamOff
  ees'4. des8 f ees ees ees
  ees2 4 r
  g4. aes8 ees ees ees8. 16
  ees2. r4
  ees4. des8 f ees ees ees % B
  ees2 4 r
  g4. aes8 ees f ees8. des16
  c2. r4
  des4. 8 8 ees8 8 8 % C
  ees2 c4 r
  ees4. e8 f e d8. 16
  ees1
  ees4. des8 f ees ees ees % D
  f2 4 r
  ees4. 8 8 8 8. 16
  ees2. r4
}

tenor = \relative {
  \autoBeamOff
  aes4. 8 8 8 g aes
  c2 bes4 r
  des4. c8 bes bes aes8. g16
  aes2. r4
  aes4. 8 8 8 g aes % B
  c2 bes4 r
  des4. c8 bes g8 8. 16
  aes2. r4
  g4. 8 8 8 aes bes % C
  aes2 4 r
  aes4. c8 8 8 aes8. 16
  g2(aes4 bes)
  aes4. 8 8 8 g aes % D
  aes2 4 r
  aes4. bes8 aes des c8. bes16
  c2. r4
}

bass = \relative {
  \autoBeamOff
  aes,4. 8 8 8 bes c
  ees2 e4 r
  ees4. 8 8 g aes8. ees16
  aes,2. r4
  aes4. 8 8 8 bes c % B
  ees2 4 r
  ees4. 8 8 8 8. 16
  aes,2. r4
  ees'4. 8 8 8 f g % C
  aes2 aes,4 r
  aes'4. g8 f f bes,8. 16
  ees2(f4 g)
  aes4. aes,8 8 8 bes c % D
  des2 4 r
  ees4. 8 8 8 8. 16
  aes2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  We are wait -- ing, Bless -- ed Sa -- viour,
  We are watch -- ing for the hour
  When, in ma -- jes -- ty de -- scend -- ing,
  Thou shalt come in migh -- ty power;
  Then the shad -- ows will be lift -- ed,
  And the dark -- ness roll'd a -- way, __
  And our eyes be -- hold the splen -- dour
  Of the glo -- rious crown -- ing- -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We are wait -- ing, Bless -- ed Sa -- viour,
  We are watch -- ing not in vain
  For the cloud that bore Thee up -- ward,
  And will bring Thee back a -- gain;
  Then a -- mong Thy ran -- som'd peo -- ple
  We shall tread the shi -- ning way, __
  And our eyes be -- hold the splen -- dour
  Of the glo -- rious crown -- ing- -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We are wait -- ing, Bless -- ed Sa -- viour,
  For a u -- nion, heart to heart,
  With our dear ones o'er the riv -- er,
  Where we nev -- er -- more shall part;
  Then our sor -- rows, in a mom -- ent,
  Like a dream wll pass a -- way, __
  When our eyes be -- hold the splen -- dour
  Of the glo -- rious crown -- ing- -- day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "are " wait "ing, " Bless "ed " Sa "viour, "
  "\nWe " "are " watch "ing " "for " "the " "hour "
  "\nWhen, " "in " ma jes "ty " de scend "ing, "
  "\nThou " "shalt " "come " "in " migh "ty " "power; "
  "\nThen " "the " shad "ows " "will " "be " lift "ed, "
  "\nAnd " "the " dark "ness " "roll'd " a "way, " 
  "\nAnd " "our " "eyes " be "hold " "the " splen "dour "
  "\nOf " "the " glo "rious " crown ing- "day. "

  \set stanza = "2."
  "\nWe " "are " wait "ing, " Bless "ed " Sa "viour, "
  "\nWe " "are " watch "ing " "not " "in " "vain "
  "\nFor " "the " "cloud " "that " "bore " "Thee " up "ward, "
  "\nAnd " "will " "bring " "Thee " "back " a "gain; "
  "\nThen " a "mong " "Thy " ran "som'd " peo "ple "
  "\nWe " "shall " "tread " "the " shi "ning " "way, " 
  "\nAnd " "our " "eyes " be "hold " "the " splen "dour "
  "\nOf " "the " glo "rious " crown ing- "day. "

  \set stanza = "3."
  "\nWe " "are " wait "ing, " Bless "ed " Sa "viour, "
  "\nFor " "a " u "nion, " "heart " "to " "heart, "
  "\nWith " "our " "dear " "ones " "o'er " "the " riv "er, "
  "\nWhere " "we " nev er "more " "shall " "part; "
  "\nThen " "our " sor "rows, " "in " "a " mom "ent, "
  "\nLike " "a " "dream " "wll " "pass " a "way, " 
  "\nWhen " "our " "eyes " be "hold " "the " splen "dour "
  "\nOf " "the " glo "rious " crown ing- "day. "
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
%    system-separator-markup = \slashSeparator
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
%            \new Lyrics \lyricsto "aligner" \wordsMidi
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
          \new Staff = tenor\with { printPartCombineTexts = ##f }
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
