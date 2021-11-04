\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Saviour, again to Thy Dear Name!"
  subtitle    = "Sankey No. 291"
  subsubtitle = "Sankey 880 No. 729"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps "E. J. Hopkins," "Mus. Doc."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Ellerton."
  meter       = \markup "10s"
  piece       = \markup\smallCaps "Ellers."

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
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*14
  s2 \tempo 4=110 s
  s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'2 4 4
  ees2 aes
  aes4 g aes bes
  c1
  aes2 4 bes
  aes2 c % B
  c4 bes c d
  ees1
  ees2 aes,4 4
  des2 2
  des4 bes c des % C
  c1
  aes2 bes4 aes
  aes2 f
  ees4 4 f^\markup\italic rit. ees
  ees1
}

alto = \relative {
  \autoBeamOff
  c'2 4 4
  ees2 2
  des4 4 4 4
  c1
  ees2 4 4
  f2 aes % B
  aes4 4 4 4
  g1
  ees2 4 4
  f2 2
  ees4 4 4 4 % C
  ees1
  c2 4 4
  bes2 2
  bes4 4 des des
  c1
}

tenor = \relative {
  \autoBeamOff
  aes2 4 4
  aes2 2
  ees4 4 f g
  aes1
  c2 4 4
  c2 2 % B
  d4 4 c bes
  bes1
  aes2 c4 4
  des2 bes
  bes4 4 g g % C
  aes1
  aes2 4 4
  f2 aes
  g4 4 4 4
  aes1
}

bass = \relative {
  \autoBeamOff
  aes,2 4 4
  c2 2
  bes4 4 4 4
  aes1
  aes'2 4 4
  f2 2 % B
  bes,4 4 4 4
  ees1
  2 c'4 4
  bes2 aes
  g4 4 ees ees % C
  aes,1
  f'2 4 4
  des2 2
  ees4 4 4 4
  aes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sa -- viour a -- gain to Thy dear name we raise
  With one ac -- cord our part -- ing hymn of praise:
  We rise to bless Thee ere our wor -- ship cease;
  And now, de -- part -- ing, wait Thy word of peace.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Grant us Thy peace up -- on our home -- ward way;
  With Thee be -- gan, with Thee shall end the day;
  Guard Thou the lips from sin, the hearts from shame,
  That in this house have called up -- on Thy name.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Grant us Thy peace, Lord, through the com -- ing night;
  Turn Thou for us its dark -- ness in -- to light;
  From harm and dan -- ger keep Thi chil -- dren free,
  For dark and light are both a -- like to Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Grant us Thy peace through -- out our earth -- ly life,
  Our balm in sor -- row, and our stay in strife;
  Then when Thy voice shall bid our con -- flict cease,
  Call us, O Lord, to Thine e -- ter -- nal peace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour " a "gain " "to " "Thy " "dear " "name " "we " "raise "
  "\nWith " "one " ac "cord " "our " part "ing " "hymn " "of " "praise: "
  "\nWe " "rise " "to " "bless " "Thee " "ere " "our " wor "ship " "cease; "
  "\nAnd " "now, " de part "ing, " "wait " "Thy " "word " "of " "peace. "

  \set stanza = "2."
  "\nGrant " "us " "Thy " "peace " up "on " "our " home "ward " "way; "
  "\nWith " "Thee " be "gan, " "with " "Thee " "shall " "end " "the " "day; "
  "\nGuard " "Thou " "the " "lips " "from " "sin, " "the " "hearts " "from " "shame, "
  "\nThat " "in " "this " "house " "have " "called " up "on " "Thy " "name. "

  \set stanza = "3."
  "\nGrant " "us " "Thy " "peace, " "Lord, " "through " "the " com "ing " "night; "
  "\nTurn " "Thou " "for " "us " "its " dark "ness " in "to " "light; "
  "\nFrom " "harm " "and " dan "ger " "keep " "Thi " chil "dren " "free, "
  "\nFor " "dark " "and " "light " "are " "both " a "like " "to " "Thee. "

  \set stanza = "4."
  "\nGrant " "us " "Thy " "peace " through "out " "our " earth "ly " "life, "
  "\nOur " "balm " "in " sor "row, " "and " "our " "stay " "in " "strife; "
  "\nThen " "when " "Thy " "voice " "shall " "bid " "our " con "flict " "cease, "
  "\nCall " "us, " "O " "Lord, " "to " "Thine " e ter "nal " "peace. "
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
