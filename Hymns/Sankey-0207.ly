\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rejoice in the Lord."
  subtitle    = "Sankey No. 207"
  subsubtitle = "Sankey 880 No. 291"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. E. Servoss."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  f d8. ees16 f4 bes8. c16
  d2. bes4
  c4 8. 16 4 d8. c16
  bes2. \bar "|" \break f4
  f4 d8. ees16 f4 bes8. c16 % B
  d2. ees8[d]
  c4 8. 16 4 d8. c16
  bes2. \bar "|" \break bes4^\markup\smallCaps Chorus.
  ees2. 4 % C
  d2. ees8[d]
  c4 8. 16 4 bes8. c16
  d2. \bar "|" \break bes4
  ees2. 4 % D
  d2. 4
  f4 ees8. d16 c4 d8. c16
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 bes8. c16 d4 8. ees16
  f2. 4
  ees4 8. 16 4 f8. ees16
  d2. 4
  d4 bes8. c16 d4 8. ees16 % B
  f2. g8[f]
  ees4 8. 16 4 f8. ees16
  d2. 4
  g2. 4 % C
  f2. g8[f]
  ees4 8. 16 4 d8. ees16
  f2. d4
  g2. 4 % D
  f2. 4
  bes4 a8. bes16 f4 8. ees16
  d2.
}

tenor = \relative {
  \autoBeamOff
  bes4
  bes4 f8. 16 bes4 f8. 16
  bes2. 4
  a4 8. 16 4 bes8. f16
  f2. bes4
  bes4 f8. 16 bes4 f8. 16 % B
  bes2. 4
  a4 8. 16 4 bes8. a16
  bes2. 4
  bes4 8. 16 4 4 % C
  bes8[f] g[a] bes4 4
  a4 8. 16 4 bes8. a16
  bes4 4 4 4
  bes4 8. 16 4 4 % D
  bes8[f] g[a] bes4 4
  d4 c8. bes16 a4 bes8. a16
  bes2.
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes4 8. 16 4 8. 16
  bes2. d4
  f4 8. 16 4 8. 16
  bes,2. 4
  bes4 8. 16 4 8. 16 % B
  bes2. 4
  f'4 8. 16 4 8. 16
  bes,2. bes'4
  ees,4 8. 16 8[f] g[a] % C
  bes4 bes,4 4 4
  f'4 8. 16 4 8. 16
  bes4 bes,4 4 bes'
  ees,4 8. 16 8[f] g[a] % D
  bes4 bes,4 4 bes'
  f4 8. 16 4 8. 16
  <bes, f'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Re -- joice! re -- joice!
  Be glad in the Lord and re -- joice!
  Re -- joice! re -- joice!
  Be glad in the Lord and re -- joice!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Re -- joice in the Lord! re -- joice! re -- joice!
  _ _ _ _ _ _ _ _
  re -- joice!
  Re -- joice in the Lord! re -- joice! re -- joice!
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- joice in the Lord and re -- joice,
  All ye that are up -- right in heart;
  And ye that have made Him your choice,
  Bid sad -- ness and sor -- row de -- part.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be joy -- ful, for He is the Lord,
  On earth and in hea -- ven su -- preme;
  He fash -- ions and rules by His word;
  The "\"Migh" -- "ty\"" and "\"Strong\"" to re -- deem.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What tho' in the con -- flict for right
  Your en -- e -- mies al -- most pre -- vail!
  God's ar -- mies, just hid from your sight,
  Are more than the foes which as -- sail.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Tho' dark -- ness sur -- round you by day,
  Your sky by the night be o'er -- cast,
  Let no -- thing your spi -- rit dis -- may,
  But trust till the dan -- ger is past.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Be glad in the Lord and re -- joice,
  His prai -- ses pro -- claim -- ing in song;
  With harp, and with or -- gan, and voice,
  The loud hal -- le -- lu -- jahs pro -- long!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "joice " "in " "the " "Lord " "and " re "joice, "
  "\nAll " "ye " "that " "are " up "right " "in " "heart; "
  "\nAnd " "ye " "that " "have " "made " "Him " "your " "choice, "
  "\nBid " sad "ness " "and " sor "row " de "part. "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "2."
  "\nBe " joy "ful, " "for " "He " "is " "the " "Lord, "
  "\nOn " "earth " "and " "in " hea "ven " su "preme; "
  "\nHe " fash "ions " "and " "rules " "by " "His " "word; "
  "\nThe " "\"Migh" "ty\" " "and " "\"Strong\" " "to " re "deem. "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "3."
  "\nWhat " "tho' " "in " "the " con "flict " "for " "right "
  "\nYour " en e "mies " al "most " pre "vail! "
  "\nGod's " ar "mies, " "just " "hid " "from " "your " "sight, "
  "\nAre " "more " "than " "the " "foes " "which " as "sail. "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "4."
  "\nTho' " dark "ness " sur "round " "you " "by " "day, "
  "\nYour " "sky " "by " "the " "night " "be " o'er "cast, "
  "\nLet " no "thing " "your " spi "rit " dis "may, "
  "\nBut " "trust " "till " "the " dan "ger " "is " "past. "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "5."
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice, "
  "\nHis " prai "ses " pro claim "ing " "in " "song; "
  "\nWith " "harp, " "and " "with " or "gan, " "and " "voice, "
  "\nThe " "loud " hal le lu "jahs " pro "long! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
  "\nRe" "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Re" "joice " "in " "the " "Lord " "and " re "joice, "
  "\nAll " "ye " "that " "are " up "right " "in " "heart; "
  "\nAnd " "ye " "that " "have " "made " "Him " "your " "choice, "
  "\nBid " sad "ness " "and " sor "row " de "part. "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! " re "joiec! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "2."
  "\nBe " joy "ful, " "for " "He " "is " "the " "Lord, "
  "\nOn " "earth " "and " "in " hea "ven " su "preme; "
  "\nHe " fash "ions " "and " "rules " "by " "His " "word; "
  "\nThe " "\"Migh" "ty\" " "and " "\"Strong\" " "to " re "deem. "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! " re "joiec! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "3."
  "\nWhat " "tho' " "in " "the " con "flict " "for " "right "
  "\nYour " en e "mies " al "most " pre "vail! "
  "\nGod's " ar "mies, " "just " "hid " "from " "your " "sight, "
  "\nAre " "more " "than " "the " "foes " "which " as "sail. "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! " re "joiec! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "4."
  "\nTho' " dark "ness " sur "round " "you " "by " "day, "
  "\nYour " "sky " "by " "the " "night " "be " o'er "cast, "
  "\nLet " no "thing " "your " spi "rit " dis "may, "
  "\nBut " "trust " "till " "the " dan "ger " "is " "past. "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! " re "joiec! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "

  \set stanza = "5."
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice, "
  "\nHis " prai "ses " pro claim "ing " "in " "song; "
  "\nWith " "harp, " "and " "with " or "gan, " "and " "voice, "
  "\nThe " "loud " hal le lu "jahs " pro "long! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! " re "joiec! "
  "\nRe" "joice " "in " "the " "Lord! " re "joice! " re "joice! "
  "\nBe " "glad " "in " "the " "Lord " "and " re "joice! "
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerT" \chorusMen
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                    { \global \bass \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerT" { \chorusMen \chorusMen \chorusMen \chorusMen \chorusMen }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                    { \global \bass \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerT" { \chorusMen \chorusMen \chorusMen \chorusMen \chorusMen }
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
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
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
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
