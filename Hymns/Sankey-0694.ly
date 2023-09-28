\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Who's on the Lord's Side?"
  subtitle    = "Sankey No. 694"
  subsubtitle = "Sankey 880 No. 85"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "11s."
  piece       = \markup\smallCaps "Paulina."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2 s2
  \textMark \markup { \box \bold "E" } s2 s1*2
  \textMark \markup { \box \bold "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8.[f16] | a4 8. gis16 a4 f8. a16 | c4 8. b16 c4 a8.[g16] | f4 8. d16 \bar "|" \break
  f4 8. g16 | a4 g8. fis16 g4\fermata c,8.[f16] | a4 8. gis16 a4 f8. a16 |
  c4 8. b16 c4. a8 | g4 8. 16 c8 4 8 | b8. c16 e8.[d16] c4\fermata
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  d8.[c16] | 8. 16 8. 16 8 a4 8 | 4 8. g16 a4. g8 | f4 8. d16 \bar "|" \break
  f8 4 8 | a8. g16 4 4\fermata d'8.[c16] | 8. 16 8. 16 8 a4 8 |
  a4 8. g16 a4. g8 | f4 8. d16 f8 4 8 | g8. 16 4 a\fermata
}

alto = \relative {
  \autoBeamOff
  c'8.[f16] | 4 8. 16 4 8. 16 |a4 8. gis16 a4 f8.[e16] | d4 8. 16
  d4 f8. 16 | 4 e8. dis16 e4\fermata  c8.[f16] | 4 8. 16 4 8. 16 |
  a4 8. gis16 a4. f8 | e4 8. 16 8 4 8 | d8. e16 g8.[f16] e4\fermata
  e4 | f8. 16 8. 16 8 4 8 | e4 8. 16 4. 8 | d4 8. 16
  d8 4 f8 | 8. e16 4 4\fermata 4 | f8. 16 8. 16 8 4 8 |
  e4 8. 16 4. 8 | f4 d8. 16 8 4 8 | e8. 16 4 f\fermata
}

tenor = \relative {
  \autoBeamOff
  a4 | c4 8. b16 c4 a8. c16 | f,4 8. 16 4 c'8.[bes16] | a4 8. f16
  a4 8. b16 | c4 8. 16 4\fermata a | c4 8. b16 c4 a8. c16 |
  f,4 8. 16 4. c'8 | 4 8. 16 8 g4 8 | 8. 16 4 4\fermata \section
  bes4 | a8. 16 8. 16 8 c4 8 | cis4 8. 16 4. 8 | d4 a8. g16
  a8 4 b8 | c8. 16 4 4\fermata bes | a8. 16 8. 16 8 c4 8 |
  cis4 8. 16 4. 8 | d4 a8. f16 a8 4 8 | c8. 16 4 4\fermata
}

bass = \relative {
  \autoBeamOff
  f4 | 4 8. 16 4 8. 16 | 4 8. 16 4 c | d4 8. 16
  d4 8. 16 | c4 8. 16 4\fermata f | 4 8. 16 4 8. 16 |
  f4 8. 16 4. 8 | g4 8. 16 8 4 8 | 8. 16 4 c,\fermata
  c4 | f8. 16 8. 16 8 4 8 | a,4 8. 16 4. 8 | d4 8. 16
  d8 4 8 | c8. 16 4 4\fermata 4 | f8. 16 8. 16 8 4 8 |
  a,4 8. 16 4. 8 | d4 8. 16 8 4 8 | c8. 16 4 f\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, who is there a -- mong us, the true and the tried,
  Who'll stand by his col -- ours? who's on the Lord's side?
  Oh, who is there a -- mong us, the true and the tried,
  Who'll stand by his col -- ours? who's on the Lord's side?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  We're march -- ing to Ca -- naan with ban -- ner and song,
  We're sol -- diers en -- list -- ed to fight gainst the wrong;
  But, lest in the con -- flict our strength should di -- vide,
  We ask, Who a -- mong us is on the Lord's side?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The sword may be bur -- nished, the arm -- our be bright,
  For Sa -- tan ap -- pears as an an -- gel of light:
  Yet dark -- ly there bo -- som may treach -- er -- y hide,
  While lips are pro -- fes -- sing, “I'm on the Lord's side.”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Who is there a -- mong us yet un -- der the rod,
  Who knows not the par -- don -- ing mer -- cy of God?
  Oh, bring to Him hum -- bly the heart in its pride;
  Oh, haste while he's wait -- ing, and seek the Lord's side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, heed not the sor -- row, the pain or the wrong,
  For soon shall our sigh -- ing be changed in -- to song;
  So, bear -- ing the cross of our cov -- en -- ant Guide,
  We'll shout, as we tri -- umph, \markup\italic "“I'm" \markup\italic on \markup\italic the \markup\italic Lord's \markup\italic side.”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We're " march "ing " "to " Ca "naan " "with " ban "ner " "and " "song, "
  "\nWe're " sol "diers " en list "ed " "to " "fight " "gainst " "the " "wrong; "
  "\nBut, " "lest " "in " "the " con "flict " "our " "strength " "should " di "vide, "
  "\nWe " "ask, " "Who " a "mong " "us " "is " "on " "the " "Lord's " "side? "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side? "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side?\n"

  \set stanza = "2."
  "\nThe " "sword " "may " "be " bur "nished, " "the " arm "our " "be " "bright, "
  "\nFor " Sa "tan " ap "pears " "as " "an " an "gel " "of " "light: "
  "\nYet " dark "ly " "there " bo "som " "may " treach er "y " "hide, "
  "\nWhile " "lips " "are " pro fes "sing, " "“I'm " "on " "the " "Lord's " "side.” "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side? "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side?\n"

  \set stanza = "3."
  "\nWho " "is " "there " a "mong " "us " "yet " un "der " "the " "rod, "
  "\nWho " "knows " "not " "the " par don "ing " mer "cy " "of " "God? "
  "\nOh, " "bring " "to " "Him " hum "bly " "the " "heart " "in " "its " "pride; "
  "\nOh, " "haste " "while " "he's " wait "ing, " "and " "seek " "the " "Lord's " "side. "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side? "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side?\n"

  \set stanza = "4."
  "\nOh, " "heed " "not " "the " sor "row, " "the " "pain " "or " "the " "wrong, "
  "\nFor " "soon " "shall " "our " sigh "ing " "be " "changed " in "to " "song; "
  "\nSo, " bear "ing " "the " "cross " "of " "our " cov en "ant " "Guide, "
  "\nWe'll " "shout, " "as " "we " tri "umph, " "“I'm " "on " "the " "Lord's " "side.” "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side? "
  "\nOh, " "who " "is " "there " a "mong " "us, " "the " "true " "and " "the " "tried, "
  "\nWho'll " "stand " "by " "his " col "ours? " "who's " "on " "the " "Lord's " "side? "
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
