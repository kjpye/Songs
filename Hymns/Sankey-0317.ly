\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Father, before Thy Throne."
  subtitle    = "Sankey No. 317"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Eliza M. Sherman."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
%  piece       = \markup\smallCaps "piece"

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
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 bes8[aes] g[f]
  ees4. f8 ees2
  c'2 bes4 aes
  g2. r4
  aes2 des8[c] bes[aes]
  g4. a8 g2 % B
  aes2 c4 bes
  bes2. r4
  c2 bes8[aes] g[f]
  ees4. f8 ees2
  c'2 bes8[f] g[aes] % C
  bes4. c8 bes2
  ees2 des8[c] bes[aes]
  g4. 8 aes4 c8[bes]
  aes2 g
  aes2. r4
}

alto = \relative {
  \autoBeamOff
  ees'4(c) des des
  ees4. 8 c2
  ees2 d4 f
  ees2. r4
  c2 ees4 f
  f4. 8 e2 % B
  f4(ees) d4 4
  ees2. r4
  ees4(c) des des
  des4. 8 c2
  ees4(c) des des % C
  ees4 d ees2
  ees4(ges) f8[ees] d4
  ees4. des8 c4 f
  ees2. des4
  c2. r4
}

tenor = \relative {
  \autoBeamOff
  aes4(ees) f bes8[aes]
  g4 ees ees2
  ees4(aes) aes bes
  bes2. r4
  aes2 bes8[aes] des[c]
  b4. 8 c2 % B
  c2 aes4 f
  g2. r4
  aes4(ees) f bes8[aes]
  g4 4 aes2
  aes4(ees) f bes8[aes] % C
  g4 f g2
  aes4(c) aes aes8[bes]
  bes4. 8 aes4 ees'8[des]
  c2 bes
  aes2. r4
}

bass = \relative {
  \autoBeamOff
  aes,2 4 4
  bes4 g aes2
  aes2 bes4 d
  ees2. r4
  f2 g4 des
  d4. g,8 c2 % B
  f2 bes,4 4
  ees2. r4
  aes,2 4 4
  bes4 ees \once\partCombineApart aes2
  aes,2 bes4 4 % C
  ees4 bes ees(des)
  c4(aes) des8[ees] f4
  ees4. e8 f4 des
  ees2 2
  aes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Fa -- ther, be -- fore Thy throne
  My soul would bow;
  Ne'er have I asked in vain,
  Oh, hear me now:
  hear Thou the prayer I make.
  An -- swer for Je -- sus' sake;
  Bid faith and love a -- wake
  With -- in my heart.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fa -- ther, this heart of mine,
  Which now I bring,
  Lies down be -- fore Thy feet,
  A guil -- ty thing:
  Kin -- dle its al -- tar fire,
  Then hope and zeal in -- spire;
  Wake Thou its si -- lent lyre
  In praise to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art our dwell -- ing plaec
  In ev -- 'ry age;
  In Thy sweet love we trace
  Our her -- i -- tage—
  Our re -- fuge from the storm,
  Our shel -- ter safe and warml
  Help us our vowas per -- form,
  Fa -- ther Di -- vine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Fa" "ther, " be "fore " "Thy " "throne "
  "\nMy " "soul " "would " "bow; "
  "\nNe'er " "have " "I " "asked " "in " "vain, "
  "\nOh, " "hear " "me " "now: "
  "\nhear " "Thou " "the " "prayer " "I " "make. "
  "\nAn" "swer " "for " Je "sus' " "sake; "
  "\nBid " "faith " "and " "love " a "wake "
  "\nWith" "in " "my " "heart. "

  \set stanza = "2."
  "\nFa" "ther, " "this " "heart " "of " "mine, "
  "\nWhich " "now " "I " "bring, "
  "\nLies " "down " be "fore " "Thy " "feet, "
  "\nA " guil "ty " "thing: "
  "\nKin" "dle " "its " al "tar " "fire, "
  "\nThen " "hope " "and " "zeal " in "spire; "
  "\nWake " "Thou " "its " si "lent " "lyre "
  "\nIn " "praise " "to " "Thee. "

  \set stanza = "3."
  "\nThou " "art " "our " dwell "ing " "plaec "
  "\nIn " ev "'ry " "age; "
  "\nIn " "Thy " "sweet " "love " "we " "trace "
  "\nOur " her i "tage— "
  "\nOur " re "fuge " "from " "the " "storm, "
  "\nOur " shel "ter " "safe " "and " "warml "
  "\nHelp " "us " "our " "vowas " per "form, "
  "\nFa" "ther " Di "vine. "
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
    page-breaking = #ly:one-page-breaking
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
