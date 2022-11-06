\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "One is our Master."
  subtitle    = "Sankey No. 500"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
%  meter       = \markup\smallCaps "meter"
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
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 c8 ees aes4 ees8 aes | bes4 ees,8 bes' c4 aes | f des'8. 16 c4 aes8 c |
  bes4 f8 bes8 2 | ees,4 c8 ees aes4 ees8 aes | bes4 ees,8 bes' c4 aes |
  f4 des'8. 16 c4 aes8 c | bes4 f8 g aes2 \bar "||" | c8^\markup\smallCaps Chorus. 4 8 bes4 4 |
  aes8 4 8 g4 4 | f aes8. f16 ees4 aes8 c | ees4 c8 aes bes2 | c4 8. 16 \bar "|" \break bes8 4 8 |
  aes4 8. 16 g8 4. | f4 aes8 f ees[aes] c ees | 4 bes8. c16 aes2 |
}

alto = \relative {
  \autoBeamOff
  ees'4 c8 ees c4 8 8 | des4 8 8 ees4 c | des4 f8. 16 ees4 c8 ees |
  d4 8 8 des2 | ees4 c8 ees c4 8 8 | des4 8 8 ees4 c |
  des4 f8. 16 ees4 c8 ees | des4 8 8 c2 | aes'8 4 8 g4 4 |
  f8 4 8 e4 4 | f4 8. des16 c4 ees8 8 | 4 aes8 8 g2 | aes4 8. 16 g8 4 8 |
  f4 8. 16 e8 4. | f4 8 des c[ees] aes aes | g4 8. 16 ees2 |
}

tenor = \relative {
  \autoBeamOff
  ees4 c8 ees aes4 8 8 | g4 8 8 aes4 4 | 4 8. 16 4 8 8 |
  aes4 8 8 g2 | ees4 c8 ees aes4 8 8 | g4 8 8 aes4 4 |
  aes4 8. 16 4 8 8 | g4 aes8 bes aes2 | ees'8 4 8 4 4 |
  c8 4 8 4 bes | aes4 8. 16 4 c8 8 | 4 ees8 c ees2 | 4 8. 16 8 4 des8 |
  c4 8. 16 bes8 4. | aes4 8 8 8[c] ees c | bes4 des8. ees16 c2 |
}

bass = \relative {
  \autoBeamOff
  ees4 c8 ees aes,4 8 8 | ees'4 8 8 aes,4 4 | des4 8. 16 aes4 8 8 |
  bes4 8 8 ees2 | 4 c8 ees aes,4 8 8 | ees'4 8 8 aes4 aes, |
  des4 8. 16 ees4 8 8 | 4 8 8 aes,2 | aes'8 4 8 ees4 4 |
  f8 4 8 c4 4 | des4 8. 16 aes4 aes'8 8 | 4 8 8 ees2 | aes4 8. 16 ees8 4 8 |
  f4 8. 16 c8 4. | des4 8 8 aes4 aes'8 8 | ees4 8. 16 aes,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Breth -- ren in Je -- sus, let us be faith -- ful,
  Faith -- ful to Him who is guid -- ing our ways;
  True in al -- leg -- iance and lov -- ing o -- be -- dience,
  Till in His glo -- ry, ho -- san -- nas we raise.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  One is our Mas -- ter, the bless -- ed Re -- deem -- er,
  Strong is the bond that u -- nites us in Him;
  Oh, may the love His own Spi -- rit hath kin -- dled
  Burn with a light that will nev -- er grow dim.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  One is our as -- ter; with glad -- ness we'll serve Him,
  "\"Do" -- ing the "will\"" of the Lord, "\"From" the "heart,\""
  Know -- ing His strength is made per -- fect in weak -- ness—
  All that is need -- ful His grace will im -- part.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  One is our mas -- ter, the high -- est and no -- blest,
  Yet in His ten -- der -- ness al -- ways "\"the" "same\";"
  Be it our hon -- our to fol -- low His ban -- ner.
  Bless -- ing for ev -- er be un -- to His name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  One is our Mas -- ter; and hap -- py those ser -- vants,
  Watch -- ing and rea -- dy, when -- e'er He may come;
  Changed in His im -- age, from "\"glo" -- ry to glo -- "ry,\""
  Joy -- ful re -- ward in His king -- dom and home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "One " "is " "our " Mas "ter, " "the " bless "ed " Re deem "er, "
  "\nStrong " "is " "the " "bond " "that " u "nites " "us " "in " "Him; "
  "\nOh, " "may " "the " "love " "His " "own " Spi "rit " "hath " kin "dled "
  "\nBurn " "with " "a " "light " "that " "will " nev "er " "grow " "dim. "
  "\nBreth" "ren " "in " Je "sus, " "let " "us " "be " faith "ful, "
  "\nFaith" "ful " "to " "Him " "who " "is " guid "ing " "our " "ways; "
  "\nTrue " "in " al leg "iance " "and " lov "ing " o be "dience, "
  "\nTill " "in " "His " glo "ry, " ho san "nas " "we " "raise.\n"

  \set stanza = "2."
  "\nOne " "is " "our " as "ter; " "with " glad "ness " "we'll " "serve " "Him, "
  "\n\"Do" "ing " "the " "will\" " "of " "the " "Lord, " "\"From " "the " "heart,\" "
  "\nKnow" "ing " "His " "strength " "is " "made " per "fect " "in " weak "ness— "
  "\nAll " "that " "is " need "ful " "His " "grace " "will " im "part. "
  "\nBreth" "ren " "in " Je "sus, " "let " "us " "be " faith "ful, "
  "\nFaith" "ful " "to " "Him " "who " "is " guid "ing " "our " "ways; "
  "\nTrue " "in " al leg "iance " "and " lov "ing " o be "dience, "
  "\nTill " "in " "His " glo "ry, " ho san "nas " "we " "raise.\n"

  \set stanza = "3."
  "\nOne " "is " "our " mas "ter, " "the " high "est " "and " no "blest, "
  "\nYet " "in " "His " ten der "ness " al "ways " "\"the " "same\"; "
  "\nBe " "it " "our " hon "our " "to " fol "low " "His " ban "ner. "
  "\nBless" "ing " "for " ev "er " "be " un "to " "His " "name. "
  "\nBreth" "ren " "in " Je "sus, " "let " "us " "be " faith "ful, "
  "\nFaith" "ful " "to " "Him " "who " "is " guid "ing " "our " "ways; "
  "\nTrue " "in " al leg "iance " "and " lov "ing " o be "dience, "
  "\nTill " "in " "His " glo "ry, " ho san "nas " "we " "raise.\n"

  \set stanza = "4."
  "\nOne " "is " "our " Mas "ter; " "and " hap "py " "those " ser "vants, "
  "\nWatch" "ing " "and " rea "dy, " when "e'er " "He " "may " "come; "
  "\nChanged " "in " "His " im "age, " "from " "\"glo" "ry " "to " glo "ry,\" "
  "\nJoy" "ful " re "ward " "in " "His " king "dom " "and " "home. "
  "\nBreth" "ren " "in " Je "sus, " "let " "us " "be " faith "ful, "
  "\nFaith" "ful " "to " "Him " "who " "is " guid "ing " "our " "ways; "
  "\nTrue " "in " al leg "iance " "and " lov "ing " o be "dience, "
  "\nTill " "in " "His " glo "ry, " ho san "nas " "we " "raise. "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
