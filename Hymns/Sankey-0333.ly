\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, Teach us how to Pray."
  subtitle    = "Sankey No. 333"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "W. Horsley," "Mus. Bac."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Montgomery."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Horsley."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
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

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  f4 g aes g
  bes4 aes8[g] f4 bes
  g4 ees' d c
  bes2. \bar "|" \break f8[g]
  aes4 4 4 g % B
  c4 4 b b
  c4 aes g f
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4
  d4 ees ees ees
  ees4 4 d bes
  ees4 4 f f
  d2. 4
  ees4 4 f g % B
  g4 f g g
  ees4 f ees d
  ees2.
}

tenor = \relative {
  \autoBeamOff
  g4
  bes4 4 aes bes
  bes4 c f, f
  bes4 c bes a
  bes2. 4
  aes4 c bes bes % B
  c4 4 d d
  c4 4 bes4. aes8
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  bes4 ees c ees
  g,4 aes bes d
  ees4 c f f
  bes,2. 4
  c4 4 d ees % B
  aes4 4 g g
  aes4 aes, bes bes
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, teach us how to pray a -- right,
  With rev -- 'rence and with fear;
  Though dust and ash -- es in Thy sight,
  We may, we must draw near.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bur -- dened with guilt, con -- vinced of sin,
  In weak -- ness, want, and woe,
  Fight -- ings with -- out, and fears with -- in,
  Lord, whi -- ther shall we go?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God of all grace, we come to Thee
  With bro -- ken, con -- triter hearts;
  Give, what Thine eye de -- lights to see,
  Truth in the in -- ward parts.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Give deep hu -- mil -- i -- ty; the sense
  Of god -- ly sor -- row give;
  A strong, de -- sir -- ing con -- fi -- dence
  To hear Thy voice and live;
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Faith in the ho -- ly Sac -- ri -- fice
  That can for sin a -- tone;
  To cast our hopes, to fix our eyes,
  On Christ, on Christ a -- lone;
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Pa -- tience to watch, and wait, and weep,
  Though mer -- cy long de -- lay;
  Cou -- rage, our faint -- ing souls to keep,
  And trust Thee, though Thou slay:
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Give these, and then Thy will be done;
  Thus strength -- ened with all might,
  We by Thy Spi -- rit, and Thy Son,
  Shall pray, and pray a -- right.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "teach " "us " "how " "to " "pray " a "right, "
  "\nWith " rev "erence " "and " "with " "fear; "
  "\nThough " "dust " "and " ash "es " "in " "Thy " "sight, "
  "\nWe " "may, " "we " "must " "draw " "near. "

  \set stanza = "2."
  "\nBur" "dened " "with " "guilt, " con "vinced " "of " "sin, "
  "\nIn " weak "ness, " "want, " "and " "woe, "
  "\nFight" "ings " with "out, " "and " "fears " with "in, "
  "\nLord, " whi "ther " "shall " "we " "go? "

  \set stanza = "3."
  "\nGod " "of " "all " "grace, " "we " "come " "to " "Thee "
  "\nWith " bro "ken, " con "triter " "hearts; "
  "\nGive, " "what " "Thine " "eye " de "lights " "to " "see, "
  "\nTruth " "in " "the " in "ward " "parts. "

  \set stanza = "4."
  "\nGive " "deep " hu mil i "ty; " "the " "sense "
  "\nOf " god "ly " sor "row " "give; "
  "\nA " "strong, " de sir "ing " con fi "dence "
  "\nTo " "hear " "Thy " "voice " "and " "live; "

  \set stanza = "5."
  "\nFaith " "in " "the " ho "ly " Sac ri "fice "
  "\nThat " "can " "for " "sin " a "tone; "
  "\nTo " "cast " "our " "hopes, " "to " "fix " "our " "eyes, "
  "\nOn " "Christ, " "on " "Christ " a "lone; "

  \set stanza = "6."
  "\nPa" "tience " "to " "watch, " "and " "wait, " "and " "weep, "
  "\nThough " mer "cy " "long " de "lay; "
  "\nCou" "rage, " "our " faint "ing " "souls " "to " "keep, "
  "\nAnd " "trust " "Thee, " "though " "Thou " "slay: "

  \set stanza = "7."
  "\nGive " "these, " "and " "then " "Thy " "will " "be " "done; "
  "\nThus " strength "ened " "with " "all " "might, "
  "\nWe " "by " "Thy " Spi "rit, " "and " "Thy " "Son, "
  "\nShall " "pray, " "and " "pray " a "right. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
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
