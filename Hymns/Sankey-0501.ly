\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Heavenly Pastures Fair."
  subtitle    = "Sankey No. 501"
  subsubtitle = "N. H. No. 18"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. A. Whitaker."
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2.
  \mark \markup { \box "B" } s4 s1*2
  \mark \markup { \box "C" }    s1*2
  \mark \markup { \box "D" }    s1*2
  \mark \markup { \box "E" }    s1*3 s2.
  \mark \markup { \box "F" } s4 s1 s2.
  \mark \markup { \box "G" } s4 s1 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano= \relative {
  \autoBeamOff
  c''8. des16 | c8. bes16 ees,8. c'16 bes4 8. c16 | bes8. aes16 c,8. f16 ees4 \bar "|" \break aes8. bes16 |
  aes8. g16 8. aes16 bes8. a16 bes8. b16 | c2. 8. des16 |
  c8. bes16 ees,8. c'16 bes4 8. c16 | bes8. aes16 c,8. f16 ees4 aes8. bes16 |
  aes8. g16 8. aes16 bes8. a16 c8. bes16 | aes2. r4\fermata \bar "||" |
  ees'4^\markup\smallCaps Chorus. 4 8. des16 bes8. g16 | aes2 c | bes4 4 8. aes16 f8. des16 | ees2.\fermata \bar "|" \break c'8. des16 |
  c8. bes16 ees,8. c'16 bes4 8. c16 | bes8. aes16 c,8. f16 ees4 \bar "|" \break aes8. bes16 |
  aes8. g16 8. aes16 bes8. a16 c8. bes16 | aes2.^\markup\italic rit.
}

alto = \relative {
  \autoBeamOff
  ees'8. f16 | ees8. des16 8. 16 4 8. ees16 | des8. c16 8. des16 c4 8. 16 |
  des8. 16 8. 16  8. 16 8. 16 | c2(ees4) 8. f16 |
  ees8. des16 8. 16 4 8. ees16 | des8. c16 8. des16 c4 8. 16 |
  des8. 16 8. 16 8. 16 ees8. des16 | c2. r4\fermata |
  g'4 4 8. 16 ees8. 16 | 2 2 | d4 4 8. 16 bes8. 16 | 4 c8. 16 des4\fermata ees8. f16 |
  ees8. des16 8. 16 4 8. 16 | des8. c16 8. des16 c4 8. 16 |
  des8. 16 8. 16 8. c16 ees8. des16 | c4 des8. 16 c4
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | g8. 16 8. 16 4 8. 16 | aes8. 16 8. 16 4 8. 16 |
  bes8. 16 8. aes16 g8. 16 8. 16 | aes2. 8. 16 |
  g8. 16 8. 16 4 8. 16 | aes8. 16 8. 16 4 8. 16 |
  bes8. 16 8. aes16 g8. 16 8. 16 | aes2. r4\fermata |
  bes4 4 8. 16 des8. 16 | c2 aes | f4 4 8. 16 aes8. 16 | g4 aes8. 16 bes4\fermata aes8. 16 |
  g8. 16 8. 16 4 8. 16 | aes8. 16 8. 16 4 8. 16 |
  bes8. 16 8. aes16 g8. 16 8. 16 | aes4 f8. 16 ees4 
}

bass = \relative {
  \autoBeamOff
  aes8. 16 | ees8. 16 8. 16 4 8. 16 | aes,8. 16 8. 16 4 8. 16 |
  ees'8. 16 8. 16 8. 16 8. 16 | aes,2. aes'8. 16 |
  ees8. 16 8. 16 4 8. 16 | aes,8. 16 8. 16 4 8. 16 |
  ees'8. 16 8. 16 8. 16 8. 16 |aes,8. 16 c8. ees16 aes4 r\fermata |
  ees4 4 8. 16 8. 16 | aes,2 2 | bes4 4 8. 16 8. 16 | ees2.\fermata aes8. 16 |
  ees8. 16 8. 16 4 8. 16 | aes,8. 16 8. 16 4 8. 16 |
  ees'8. 16 8. 16 8. 16 8. 16 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Glo -- rious stream of life e -- ter -- nal,
  Beau -- teous fields of liv -- ing green. __
  Though re -- vealed with -- in the Word
  Of our Shep -- herd and our Lord.
  By the pure in heart a -- lone can they be seen. __
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ liv -- ing green.
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ ev -- er seen.
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1." with joy o -- bey.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  for ev -- er -- more.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  we may a -- bide.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the heaven -- ly pas -- tures fair,
  'Neath the ten -- der Shep -- herd's care,
  Let us rest be -- side the liv -- ing stream to -- day;
  Calm -- ly there in peace re -- cline.
  Drink -- ing in the truth Di -- vine,
  As His lov -- ing call we now with joy o -- bey. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Far from all the noise and strife
  That dis -- turb our dai -- ly life,
  Let us pause a -- while in si -- lence and a -- dore:
  Then the sound of His dear voice
  Will our wait -- ing sould re -- joice,
  As He na -- meth us His own for ev -- er -- more. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, how good, and true, and kind,
  Seek -- ing His stray sheep to find,
  If they wan -- der in -- to dan -- ger from His side!
  Ev -- er close -- ly may we tread
  Where His ho -- ly feet have led;
  So at last with Him in heaven we may a -- bide. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " heaven "ly " pas "tures " "fair, "
  "\n'Neath " "the " ten "der " Shep "herd's " "care, "
  "\nLet " "us " "rest " be "side " "the " liv "ing " "stream " to "day; "
  "\nCalm" "ly " "there " "in " "peace " re "cline. "
  "\nDrink" "ing " "in " "the " "truth " Di "vine, "
  "\nAs " "His " lov "ing " "call " "we " "now " "with " "joy " o "bey. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green, "
  "\nliv" "ing " "green. "
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen, "
  "\nev" "er " "seen.\n"

  \set stanza = "2."
  "\nFar " "from " "all " "the " "noise " "and " "strife "
  "\nThat " dis "turb " "our " dai "ly " "life, "
  "\nLet " "us " "pause " a "while " "in " si "lence " "and " a "dore: "
  "\nThen " "the " "sound " "of " "His " "dear " "voice "
  "\nWill " "our " wait "ing " "sould " re "joice, "
  "\nAs " "He " na "meth " "us " "His " "own " "for " ev er "more. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green, "
  "\nliv" "ing " "green. "
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen, "
  "\nev" "er " "seen.\n"

  \set stanza = "3."
  "\nOh, " "how " "good, " "and " "true, " "and " "kind, "
  "\nSeek" "ing " "His " "stray " "sheep " "to " "find, "
  "\nIf " "they " wan "der " in "to " dan "ger " "from " "His " "side! "
  "\nEv" "er " close "ly " "may " "we " "tread "
  "\nWhere " "His " ho "ly " "feet " "have " "led; "
  "\nSo " "at " "last " "with " "Him " "in " "heaven " "we " "may " a "bide. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green, "
  "\nliv" "ing " "green. "
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen, "
  "\nev" "er " "seen. "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "In " "the " heaven "ly " pas "tures " "fair, "
  "\n'Neath " "the " ten "der " Shep "herd's " "care, "
  "\nLet " "us " "rest " be "side " "the " liv "ing " "stream " to "day; "
  "\nCalm" "ly " "there " "in " "peace " re "cline. "
  "\nDrink" "ing " "in " "the " "truth " Di "vine, "
  "\nAs " "His " lov "ing " "call " "we " "now " "with " "joy " o "bey. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen.\n" 

  \set stanza = "2."
  "\nFar " "from " "all " "the " "noise " "and " "strife "
  "\nThat " dis "turb " "our " dai "ly " "life, "
  "\nLet " "us " "pause " a "while " "in " si "lence " "and " a "dore: "
  "\nThen " "the " "sound " "of " "His " "dear " "voice "
  "\nWill " "our " wait "ing " "sould " re "joice, "
  "\nAs " "He " na "meth " "us " "His " "own " "for " ev er "more. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen.\n" 

  \set stanza = "3."
  "\nOh, " "how " "good, " "and " "true, " "and " "kind, "
  "\nSeek" "ing " "His " "stray " "sheep " "to " "find, "
  "\nIf " "they " wan "der " in "to " dan "ger " "from " "His " "side! "
  "\nEv" "er " close "ly " "may " "we " "tread "
  "\nWhere " "His " ho "ly " "feet " "have " "led; "
  "\nSo " "at " "last " "with " "Him " "in " "heaven " "we " "may " a "bide. " 
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen. " 
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "In " "the " heaven "ly " pas "tures " "fair, "
  "\n'Neath " "the " ten "der " Shep "herd's " "care, "
  "\nLet " "us " "rest " be "side " "the " liv "ing " "stream " to "day; "
  "\nCalm" "ly " "there " "in " "peace " re "cline. "
  "\nDrink" "ing " "in " "the " "truth " Di "vine, "
  "\nAs " "His " lov "ing " "call " "we " "now " "with " "joy " o "bey, "
  "\nwith " "joy " o "bey. "
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen.\n"

  \set stanza = "2."
  "\nFar " "from " "all " "the " "noise " "and " "strife "
  "\nThat " dis "turb " "our " dai "ly " "life, "
  "\nLet " "us " "pause " a "while " "in " si "lence " "and " a "dore: "
  "\nThen " "the " "sound " "of " "His " "dear " "voice "
  "\nWill " "our " wait "ing " "sould " re "joice, "
  "\nAs " "He " na "meth " "us " "His " "own " "for " ev er "more, "
  "\nfor " ev er "more. "
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen.\n"

  \set stanza = "3."
  "\nOh, " "how " "good, " "and " "true, " "and " "kind, "
  "\nSeek" "ing " "His " "stray " "sheep " "to " "find, "
  "\nIf " "they " wan "der " in "to " dan "ger " "from " "His " "side! "
  "\nEv" "er " close "ly " "may " "we " "tread "
  "\nWhere " "His " ho "ly " "feet " "have " "led; "
  "\nSo " "at " "last " "with " "Him " "in " "heaven " "we " "may " a "bide, "
  "\nwe " "may " a "bide. "
  "\nGlo" "rious " "stream " "of " "life " e ter "nal, "
  "\nBeau" "teous " "fields " "of " liv "ing " "green. " 
  "\nThough " re "vealed " with "in " "the " "Word "
  "\nOf " "our " Shep "herd " "and " "our " "Lord. "
  "\nBy " "the " "pure " "in " "heart " a "lone " "can " "they " "be " "seen. "
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
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiBass
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new NullVoice { \bass }
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new NullVoice  { \repeat unfold \verses \bass }
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
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
