\version "2.25.0"
\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Is thy Cruse of Comfort Failing?"
  subtitle    = "Sankey No. 760"
  subsubtitle = "N. H. No. 96"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. E. R. Charles."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
  \textMark \markup { \box \bold "E" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  fis'8. g16 | a4 d cis8. b16 | b4 a4 8. 16 | g4. gis8 a8. e16 | fis2 \bar "|" \break
  fis8. g16 | a4 d cis8. b16 | 4 a4 8. d16 | cis4. d8 b8. a16 | 2 \bar "|" \break
  a8. b16 | a4 e' d8. cis16 | d4 a4 8. b16 | a4. e'8 d8. cis16 | d2 \bar "|" \break
  fis,8. g16 | a4 d e8. d16 | cis4 b cis8. d16 | a4. 8 8. 16 | 2 \bar "|" \break
  fis8. g16 | a4 d e8. d16 | cis4 b cis8. d16 | a4. d8 8. cis16 | d2
}

alto = \relative {
  \autoBeamOff
  d'8. e16 | fis4 4 a8. g16 | 4 fis d8. 16 | 4. e8 8. cis16 | d2
  d8. e16 | fis4 4 a8. g16 | 4 fis4 8. 16 | e4. d8 8. cis16 | 2
  fis8. 16 | g4 4 8. 16 | fis4 4 d8. fis16 | g4. 8 8. 16 | fis2
  d8. e16 | fis4 4 g8. fis16 | a4 g eis8. 16 | fis4. d8 cis8. e16 | d2
  d8. e16 | fis4 4 g8. fis16 | a4 g eis8. 16 | fis4. 8 e8. g16 | fis2
}

tenor = \relative {
  \autoBeamOff
  a8. 16 | d4 a4 8. 16 | d4 4 8. a16 | b4. 8 a8. 16 | 2
  a8. 16 | d4 a4 8. 16 | d4 4 8. a16 | 4. b8 gis8. a16 | 2
  a8. 16 | 4 4 e'8. a,16 | 4 d fis,8. a16 | cis4. 8 b8. a16 | 2
  a8. 16 | d4 a4 8. 16 | b4 d b8. 16 | a4. fis8 e8. g16 | fis2
  a8. 16 | d4 a4 8. 16 | b4 d b8. 16 | a4. 8 8. 16 | 2
}

bass = \relative {
  \autoBeamOff
  d8. 16 | 4 4 8. 16 | 4 4 fis8. 16 | e4. d8 cis8. a16 | d2
  d8. 16 | 4 4 8. 16 | 4 4 8. 16 | e4. 8 8. a,16 | 2
  d8. 16 | cis4 a4 8. 16 | d4 4 8. 16 | e4. d8 cis8. e16 | d2
  d8. 16 | 4 4 cis8. d16 | g,4 4 gis8. 16 | a4. 8 8. 16 | d2
  d8. 16 | 4 4 cis8. d16 | g,4 4 gis8. 16 | a4. 8 8. 16 | d2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Is thy cruse of com -- fort fail -- ing?
  Rise and share it with a friend!
  And thro' all the years of fa -- mine
  It shall serve thee to the end.
  Love Di -- vine will fill thy store -- house,
  Or thy hand -- ful still re -- new;
  Scan -- ty fare for one will of -- ten
  Make a roy -- al feast for two;
  Scan -- ty fare for one will of -- ten
  Make a roy -- al feast for two;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For the heart grows rich in giv -- ing:
  All its wealth is liv -- ing grain;
  Seeds— which mil -- dew in the gar -- ner—
  Scat -- tered, fill with gold the plain.
  Is thy bur -- den hard and hea -- vy?
  Do thy steps drag wea -- ri -- ly?
  Help to lift thy bro -- ther's bur -- den—
  God will bear both it and thee;
  Help to lift thy bro -- ther's bur -- den—
  God will bear both it and thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lost and wea -- ry on the moun -- tains,
  Wouldst thou sleep a -- midst the snow?
  Chafe that fro -- zen form be -- side thee,
  And to -- geth -- er both shall glow.
  Art thou wound -- ed in life's bat -- tle?
  Ma -- ny strick -- en round thee moan;
  Give to them thy pre -- cious oint -- ment,
  And that balm shall heal thine own;
  Give to them thy pre -- cious oint -- ment,
  And that balm shall heal thine own.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Is thy heart a well left emp -- ty?
  None but God its void can fill;
  No -- thing but a cease -- less foun -- tain
  Can its cease -- less long -- ings still.
  Is thy heart a liv -- ing pow -- er?
  Self -- en -- twined, its strength sinks low;
  It can on -- ly live by lov -- ing,
  And by serv -- ing love will grow;
  It can on -- ly live by lov -- ing,
  And by serv -- ing love will grow.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Is " "thy " "cruse " "of " com "fort " fail "ing? "
  "\nRise " "and " "share " "it " "with " "a " "friend! "
  "\nAnd " "thro' " "all " "the " "years " "of " fa "mine "
  "\nIt " "shall " "serve " "thee " "to " "the " "end. "
  "\nLove " Di "vine " "will " "fill " "thy " store "house, "
  "\nOr " "thy " hand "ful " "still " re "new; "
  "\nScan" "ty " "fare " "for " "one " "will " of "ten "
  "\nMake " "a " roy "al " "feast " "for " "two; "
  "\nScan" "ty " "fare " "for " "one " "will " of "ten "
  "\nMake " "a " roy "al " "feast " "for " "two;\n"

  \set stanza = "2."
  "\nFor " "the " "heart " "grows " "rich " "in " giv "ing: "
  "\nAll " "its " "wealth " "is " liv "ing " "grain; "
  "\nSeeds— " "which " mil "dew " "in " "the " gar "ner— "
  "\nScat" "tered, " "fill " "with " "gold " "the " "plain. "
  "\nIs " "thy " bur "den " "hard " "and " hea "vy? "
  "\nDo " "thy " "steps " "drag " wea ri "ly? "
  "\nHelp " "to " "lift " "thy " bro "ther's " bur "den— "
  "\nGod " "will " "bear " "both " "it " "and " "thee; "
  "\nHelp " "to " "lift " "thy " bro "ther's " bur "den— "
  "\nGod " "will " "bear " "both " "it " "and " "thee.\n"

  \set stanza = "3."
  "\nLost " "and " wea "ry " "on " "the " moun "tains, "
  "\nWouldst " "thou " "sleep " a "midst " "the " "snow? "
  "\nChafe " "that " fro "zen " "form " be "side " "thee, "
  "\nAnd " to geth "er " "both " "shall " "glow. "
  "\nArt " "thou " wound "ed " "in " "life's " bat "tle? "
  "\nMa" "ny " strick "en " "round " "thee " "moan; "
  "\nGive " "to " "them " "thy " pre "cious " oint "ment, "
  "\nAnd " "that " "balm " "shall " "heal " "thine " "own; "
  "\nGive " "to " "them " "thy " pre "cious " oint "ment, "
  "\nAnd " "that " "balm " "shall " "heal " "thine " "own.\n"

  \set stanza = "4."
  "\nIs " "thy " "heart " "a " "well " "left " emp "ty? "
  "\nNone " "but " "God " "its " "void " "can " "fill; "
  "\nNo" "thing " "but " "a " cease "less " foun "tain "
  "\nCan " "its " cease "less " long "ings " "still. "
  "\nIs " "thy " "heart " "a " liv "ing " pow "er? "
  "\nSelf" en "twined, " "its " "strength " "sinks " "low; "
  "\nIt " "can " on "ly " "live " "by " lov "ing, "
  "\nAnd " "by " serv "ing " "love " "will " "grow; "
  "\nIt " "can " on "ly " "live " "by " lov "ing, "
  "\nAnd " "by " serv "ing " "love " "will " "grow. "
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

#(set-global-staff-size 19)

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
