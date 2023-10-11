\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fall into Line!"
  subtitle    = "Sankey No. 705"
  subsubtitle = "C. C. No. 221"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. K. Langley."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Wm. H. Gardner."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*4    \break
  \textMark \markup { \box \bold "B" }    s1*4
  \textMark \markup { \box \bold "C" }    s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*2
  \textMark \markup { \box \bold "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

apart = \partCombineApart
auto  = \partCombineAutomatic

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8. 16 8. 16 4 4 | c2 aes | c8. 16 8. 16 ees4 c8[aes] | bes2. r4 |
  bes8. 16 8. 16 4 4 | des2 bes | g8. aes16 bes8. ees,16 g4 f | ees2. r4
  \section \sectionLabel \markup\smallCaps "Chorus."
  aes4 ees8. 16  4 c'8. bes16 | <<{aes2 ees4 s} \new Voice {\voiceThree \tiny s2 s16*3 f16[g8. aes16]}>> | bes4 ees,8. 16 \bar "|" \break
  ees4 des'8. 16 | <<{c2 aes4 s} \new Voice {\voiceThree \tiny s2 s16*3 ees16[f8. g16]}>> | aes8 ees aes c ees8 8 4 |
  ees8 des~4 8 f,8~4 | ees8 8 aes c bes4 ees, | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  aes'8. 16 8. 16 4 4 | c2 aes | ees8. 16 8. 16 4 4 | <<{2. s4} \new Voice {\voiceTwo \tiny s4 ees8. 16 4 4}>>
  ees8. 16 8. 16 4 4 | 2 2 | 8. 16 8. 16 4 d | <<{ees2. s4} \new Voice {\voiceFour s4 \tiny des c bes}>> |
  c4 8. 16 4 r | c4 8. 16 4 r | ees4 8. 16
  ees4 \apart r \auto | 4 8. 16 4 \apart r \auto | c8 8 \apart r4 \auto ees8 8 ges8. 16 |
  f8 8 4 8 des8 8 8 | c c ees8 8 des4 4 | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 8. 16 4 4 | c2 aes | 8. 16 8. 16 4 4 | g2. r4 |
  g8. 16 8. 16 4 4 | bes2 g | bes8. c16 des8. c16 bes4 aes | g2. r4 | \section
  ees4 aes8. 16 4 r | ees4 8. 16 aes4 r | g4 8. 16
  g4 r | aes4 8. 16 c4 r | aes8 8 r4 c8 8 8. aes16 |
  aes8 8 4 8 8 8 8 | 8 8 8 8 g4 g | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes8. 16 8. 16 4 4 | c2 aes | 8. 16 ees8. 16 c4 aes8[c] | ees2. r4 |
  ees8. 16 8. 16 4 4 | 2 2 | 8. aes,16 g8. aes16 bes4 4 | ees2. r4 | \section
  aes,4 8. 16 4 r | aes4 8. 16 4 r | ees'4 8. 16
  ees4 r | aes, c8. ees16 aes4 r | 8 8 r4 8 8 8. 16 |
  des,8 8~4 8 8~4 | ees8 8 c aes ees'4 4 | aes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Fall in -- to line for the con -- flict!
  Fall in -- to line for the con -- flict!
  Ral -- ly at the trum -- pet's call, __
  ral -- ly! ral -- ly! __
  Ral -- ly, Chris -- tian sol -- diers all!
}

chorusMen = \lyricmode {
  \repeat unfold 34 _
  Fall in -- to line!
  _ _ _ _
  Fall in -- to line!
  Ral -- ly, ral -- ly at the trum -- pet's call,
  ral -- ly, ral -- ly!
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O -- ver hill and lof -- ty moun -- tain,
  Hear the gos -- pel trum -- pet call;
  List -- en to the strains in -- spir -- ing—
  'Tis a mes -- sage for us all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Gir -- ding on the roy -- al ar -- mour,
  Wave the glo -- rious ban -- ner high!
  While for truth and right con -- tend -- ing,
  An -- gels watch you from the sky.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sound a -- gain the sil -- ver trum -- pet!
  Sound a -- loud the bat -- tle- cry!
  “All for Je -- sus, all for Je -- sus!”
  We shall con -- quer tho' we die!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O" "ver " "hill " "and " lof "ty " moun "tain, "
  "\nHear " "the " gos "pel " trum "pet " "call; "
  "\nList" "en " "to " "the " "strains " in spir "ing— "
  "\n'Tis " "a " mes "sage " "for " "us " "all. "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nRal" "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "2."
  "\nGir" "ding " "on " "the " roy "al " ar "mour, "
  "\nWave " "the " glo "rious " ban "ner " "high! "
  "\nWhile " "for " "truth " "and " "right " con tend "ing, "
  "\nAn" "gels " "watch " "you " "from " "the " "sky. "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nRal" "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "3."
  "\nSound " a "gain " "the " sil "ver " trum "pet! "
  "\nSound " a "loud " "the " bat tle "cry! "
  "\n“All " "for " Je "sus, " "all " "for " Je "sus!” "
  "\nWe " "shall " con "quer " "tho' " "we " "die! "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nFall " in "to " "line " "for " "the " con "flict! "
  "\nRal" "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all! "
}

wordsMidiAT = \lyricmode {
  \set stanza = "1."
  "O" "ver " "hill " "and " lof "ty " moun "tain, "
  "\nHear " "the " gos "pel " trum "pet " "call; "
  "\nList" "en " "to " "the " "strains " in spir "ing— "
  "\n'Tis " "a " mes "sage " "for " "us " "all. "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "2."
  "\nGir" "ding " "on " "the " roy "al " ar "mour, "
  "\nWave " "the " glo "rious " ban "ner " "high! "
  "\nWhile " "for " "truth " "and " "right " con tend "ing, "
  "\nAn" "gels " "watch " "you " "from " "the " "sky. "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "3."
  "\nSound " a "gain " "the " sil "ver " trum "pet! "
  "\nSound " a "loud " "the " bat tle "cry! "
  "\n“All " "for " Je "sus, " "all " "for " Je "sus!” "
  "\nWe " "shall " con "quer " "tho' " "we " "die! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " trum "pet's " "call, " 
  "\nral" "ly! " ral "ly! " 
  "\nRal" "ly, " Chris "tian " sol "diers " "all! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "O" "ver " "hill " "and " lof "ty " moun "tain, "
  "\nHear " "the " gos "pel " trum "pet " "call; "
  "\nList" "en " "to " "the " "strains " in spir "ing— "
  "\n'Tis " "a " mes "sage " "for " "us " "all. "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " ral "ly, "
  "\nral" "ly! "
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "2."
  "\nGir" "ding " "on " "the " roy "al " ar "mour, "
  "\nWave " "the " glo "rious " ban "ner " "high! "
  "\nWhile " "for " "truth " "and " "right " con tend "ing, "
  "\nAn" "gels " "watch " "you " "from " "the " "sky. "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " ral "ly, "
  "\nral" "ly! "
  "\nRal" "ly, " Chris "tian " sol "diers " "all!\n"

  \set stanza = "3."
  "\nSound " a "gain " "the " sil "ver " trum "pet! "
  "\nSound " a "loud " "the " bat tle "cry! "
  "\n“All " "for " Je "sus, " "all " "for " Je "sus!” "
  "\nWe " "shall " con "quer " "tho' " "we " "die! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nFall " in "to " "line, " "Fall " in "to " "line! "
  "\nRal" "ly, " ral "ly " "at " "the " ral "ly, "
  "\nral" "ly! "
  "\nRal" "ly, " Chris "tian " sol "diers " "all! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-at"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \addlyrics \wordsMidiAT
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
