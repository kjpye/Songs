\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Morning."
  subtitle    = "Sankey No. 833"
  subsubtitle = "N. H. No. 93"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Edwards."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*6
  \textMark \markup { \box \bold "C" }    s2.*5 s2
  \textMark \markup { \box \bold "D" } s4 s2.*5
  \textMark \markup { \box \bold "E" }    s2.*5
  \textMark \markup { \box \bold "C" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. ges16 | aes4. des8 f,8. ges16 | aes2 des8. c16 | bes4. a8 c8. bes16 | aes2 f8. g16 |
  aes4. des8 8. 16 | 2 c8. des16 | ees2. | aes,2 f8. ges16 | aes4. 8 bes8. aes16 | des2 8. c16 |
  bes4. ees8 des8. bes16 | aes2 des8. ees16 | f4. ees8 des8. bes16 | aes2 f8. des'16 | c2. | des2
  \section \sectionLabel \markup\smallCaps Chorus. \break
  des8. 16 | ees2 ees,8. f16 | ges2 c8. bes16 | aes2. | des2 8. c16 | bes2 des8. 16 |
  des2 ees8. f16 | ees2. | aes,2 f8. ges16 | aes4. 8 bes8. aes16 | des2 8. c16 |
  bes4. ees8 des8. bes16 | aes2 des8. ees16 | f4. ees8 des8. bes16 | aes2 f8. des'16 | c2. | des2
}

alto = \relative {
  \autoBeamOff
  des'8. ees16 | f4. 8 des8. ees16 | f2 aes8. 16 | ges4. 8 8. 16 | f2 des8. ees16 |
  f4. 8 8. 16 | ees2 8. 16 | 2. | 2 des8. ees16 | f4. 8 ges8. f16 | 2 aes8. 16 |
  ges4. 8 8. 16 | f2 8. ges16 | aes4. ges8 f8. ges16 | f2 des8. f16 | ees2(ges4) | f2
  f8. 16 | ges2 c,8. des16 | ees2 ges8. 16 | f2. | 2 aes8. 16 | ges2 8. 16 |
  g2 8. 16 | aes2. | ees2 des8. ees16 | f4. 8 ges8. f16 | 2 aes8. 16 |
  ges4. 8 8. 16 | f2 8. ges16 | aes4. ges8 f8. ges16 | f2 des8. f16 | ees2(ges4) | f2
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | des4. aes8 8. 16 | des2 8. 16 | 4. c8 ees8. des16 | 2 aes8. 16 |
  des4. aes8 8. 16 | g2 aes8. bes16 | c2. | 2 aes8. 16 | des4. 8 8. 16 | aes2 des8. 16 |
  des4. bes8 8. des16 | 2 aes8. 16 | des4. aes8 8. des16 | 2 aes8. 16 | 2. | 2 \section
  aes8. des16 | c2 aes8. 16 | 2 8. c16 | des2. | aes2 des8. 16 | 2 bes8. 16 |
  bes2 8. 16 | c2. | 2 aes8. 16 | des4. 8 8. 16 | aes2 des8. 16 |
  des4. bes8 8. des16 | 2 aes8. 16 | des4. aes8 8. des16 | 2 aes8. 16 | 2. | 2
}

bass = \relative {
  \autoBeamOff
  des8. 16 | 4. 8 8. 16 | 2 f8. 16 | ges4. 8 8. 16 | des2 8. 16 |
  des4. 8 8. 16 | ees2 8. 16 | aes2. | 4.(ges8) d8. ees16 | c4. 8 8. 16 | 2 des8. 16 |
  ges4. 8 8. 16 | des2 8. 16 | 4. 8 8. 16 | 2 8. 16 | aes2. | des2 \section
  des8. 16 | aes2 8. 16 | 2 8. 16 | des2. | 2 f8. 16 | ges2 8. 16 |
  ees2 8. 16 | aes2. | 4.(ges8) f8. ees16 | des4. 8 8. 16 | 2 f8. 16 |
  ges4. 8 8. 16 | des2 8. 16 | 4. 8 8. 16 | 2 8. 16 | aes2. | des2
}

chorus = \lyricmode {
  When we all meet a -- gain in the morn -- ing,
  On the sweet bloom -- ing hills in the morn -- ing;
  Nev -- er -- more to say “good -- night”
  In that sun -- ny re -- gion bright,
  When we hail the bles -- sed light of the morn -- ing.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  We are pil -- grims look -- ing home,
  Sad and wea -- ry oft we roam;
  But we know "'t will" all be well in the morn -- ing,
  When, our an -- chor firm -- ly cast,
  Ev -- 'ry stor -- my wave is past,
  And we gath -- er safe at last in the morn -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, these ten -- der bro -- ken ties,
  How they dim our ach -- ing eyes;
  But like jew -- els they will shine in the morn -- ing;
  When our vic -- tor palms we bear,
  And our robes im -- mor --tal bear,
  We shall know each oth -- er there, in the morn -- ing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When our fet -- tered souls are free,
  Far be -- yond the nar -- row sea,
  And we hear the Sa -- viour's voice in the morn -- ing;
  When our gol -- den sheaves we bring
  To the feet of Christ our King.
  What a cho -- rus we shall sing in the morn -- ing!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  On the pil -- grim jour -- ney here,
  Tho' the night is some -- times drear,
  Let us watch and per -- se -- vere till the morn -- ing;
  Then our high -- est tri -- bute raise
  For the love that crowns our days,
  And to Je -- sus give the praise in the morn -- ing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "are " pil "grims " look "ing " "home, "
  "\nSad " "and " wea "ry " "oft " "we " "roam; "
  "\nBut " "we " "know " "'t will " "all " "be " "well " "in " "the " morn "ing, "
  "\nWhen, " "our " an "chor " firm "ly " "cast, "
  "\nEv" "'ry " stor "my " "wave " "is " "past, "
  "\nAnd " "we " gath "er " "safe " "at " "last " "in " "the " morn "ing. "
  "\nWhen " "we " "all " "meet " a "gain " "in " "the " morn "ing, "
  "\nOn " "the " "sweet " bloom "ing " "hills " "in " "the " morn "ing; "
  "\nNev" er "more " "to " "say " “good "night” "
  "\nIn " "that " sun "ny " re "gion " "bright, "
  "\nWhen " "we " "hail " "the " bles "sed " "light " "of " "the " morn "ing.\n"

  \set stanza = "2."
  "\nOh, " "these " ten "der " bro "ken " "ties, "
  "\nHow " "they " "dim " "our " ach "ing " "eyes; "
  "\nBut " "like " jew "els " "they " "will " "shine " "in " "the " morn "ing; "
  "\nWhen " "our " vic "tor " "palms " "we " "bear, "
  "\nAnd " "our " "robes " im mor"tal " "bear, "
  "\nWe " "shall " "know " "each " oth "er " "there, " "in " "the " morn "ing. "
  "\nWhen " "we " "all " "meet " a "gain " "in " "the " morn "ing, "
  "\nOn " "the " "sweet " bloom "ing " "hills " "in " "the " morn "ing; "
  "\nNev" er "more " "to " "say " “good "night” "
  "\nIn " "that " sun "ny " re "gion " "bright, "
  "\nWhen " "we " "hail " "the " bles "sed " "light " "of " "the " morn "ing.\n"

  \set stanza = "3."
  "\nWhen " "our " fet "tered " "souls " "are " "free, "
  "\nFar " be "yond " "the " nar "row " "sea, "
  "\nAnd " "we " "hear " "the " Sa "viour's " "voice " "in " "the " morn "ing; "
  "\nWhen " "our " gol "den " "sheaves " "we " "bring "
  "\nTo " "the " "feet " "of " "Christ " "our " "King. "
  "\nWhat " "a " cho "rus " "we " "shall " "sing " "in " "the " morn "ing! "
  "\nWhen " "we " "all " "meet " a "gain " "in " "the " morn "ing, "
  "\nOn " "the " "sweet " bloom "ing " "hills " "in " "the " morn "ing; "
  "\nNev" er "more " "to " "say " “good "night” "
  "\nIn " "that " sun "ny " re "gion " "bright, "
  "\nWhen " "we " "hail " "the " bles "sed " "light " "of " "the " morn "ing.\n"

  \set stanza = "4."
  "\nOn " "the " pil "grim " jour "ney " "here, "
  "\nTho' " "the " "night " "is " some "times " "drear, "
  "\nLet " "us " "watch " "and " per se "vere " "till " "the " morn "ing; "
  "\nThen " "our " high "est " tri "bute " "raise "
  "\nFor " "the " "love " "that " "crowns " "our " "days, "
  "\nAnd " "to " Je "sus " "give " "the " "praise " "in " "the " morn "ing! "
  "\nWhen " "we " "all " "meet " a "gain " "in " "the " morn "ing, "
  "\nOn " "the " "sweet " bloom "ing " "hills " "in " "the " morn "ing; "
  "\nNev" er "more " "to " "say " “good "night” "
  "\nIn " "that " sun "ny " re "gion " "bright, "
  "\nWhen " "we " "hail " "the " bles "sed " "light " "of " "the " morn "ing. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
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

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
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
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
