\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Love, that passeth Knowledge!"
  subtitle    = "Sankey No. 76"
  subsubtitle = "C. C. No. 60"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cutler."
  meter       = \markup\smallCaps "7.6. d."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*5
  \mark \markup { \box "D" } s1*5
  \mark \markup { \box "E" } s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  bes'4
  bes4 bes c4. g8
  bes4 aes r aes
  aes4 aes bes4. f8
  g2. f4
  ees4 g bes ees % B
  d4 c r ees
  ees4 bes aes4. f8
  ees2. bes'4
  bes4 bes c4. g8
  bes4 aes r aes % C
  aes4 aes bes4. f8
  g2. f4
  ees4 g bes ees
  d4 c r ees
  ees4 bes aes4. f8 % D
  ees2. \bar "||" \partial 4 bes'4^\markup\smallCaps Chorus.
  ees4 ees ees4. d8
  d4 c2 c4
  c4 c f4. c8
  ees4 d2 bes4 % E
  ees4 bes aes g
  g4 f2 ees4
  ees4 f d4. ees8
  ees2.
}

alto = \relative {
  ees'4
  ees4 ees e4. 8
  f4 f r ees
  d4 d d4. d8
  ees2. d4
  ees4 4 4 4 % B
  ees4 4 r ees
  ees4 4 d4. 8
  ees2. 4
  ees4 4 e4. 8
  f4 f r ees % C
  d4 d d4. d8
  ees2. d4
  ees4 4 4 4
  ees4 ees r ees
  ees4 ees d4. d8 % D
  ees2. g4
  g4 g g4. ees8
  ees4 2 4
  ees4 e f4. 8
  g4 f2 4
  ees4 ees d ees
  c4 2 4
  bes4 4 4. 8
  bes2.
}

tenor = \relative {
  g4
  g4 g g4. c8
  c4 c r ces
  bes 4bes f4. bes8
  bes2. 4
  bes4 bes g bes % B
  bes4 aes r f
  g4 g f4. aes8
  g2. g4
  g4 g g4. c8
  c4 c r ces % C
  bes4 bes f4. bes8
  bes2. bes4
  bes4 bes g bes
  bes4 aes r f
  g4 g f4. aes8 % D
  g2. ees'4
  bes4 bes bes4. bes8
  bes4 aes2 aes4
  aes4 bes a4. 8
  bes4 2 d4 % E
  ees4 ees bes bes
  bes4 aes2 f4
  g4 aes f4. g8
  g2.
}

bass= \relative {
  ees4
  ees4 ees c4. c8
  f4 f r f
  bes,4 bes bes4. bes8
  ees2. aes4
  g4 ees ees g, % B
  aes4 aes r a
  bes4 bes bes4. bes8
  ees2. ees4
  ees4 ees c4. c8
  f4 f r f % C
  bes,4 bes bes4. bes8
  ees2. aes4
  g4 ees ees g,
  aes4 aes r a
  bes4 bes bes4. bes8 % D
  ees2. ees4
  ees4 ees ees4. g8
  aes4 2 4
  aes4 g f4. 8
  bes,4 2 aes'4 % E
  g4 g f ees
  aes,4 2 a4
  bes4 bes bes4. ees8
  ees2.
}

chorus = \lyricmode {
  O Love, all love ex -- cell -- ing:
  Un -- num -- ber'd hosts are tell -- ing,
  In yon -- der bliss -- ful dwell -- ing,
  What Thou for them hast done.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O Love, that pass -- eth know -- ledge,
  O Love, whose beams have shone
  Thro' ev -- er -- last -- ing a -- ges,
  From God's e -- ter -- nal throne;
  What pow'r Thy depths can fa -- thom?
  What tongue can speak Thy worth?:
  And yet Thou con -- de -- scend -- est
  To dwell with men on earth.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O Love, that our re -- demp -- tion
  Made per -- fect thro' the blood
  Of Him whose life was of -- fer'd,
  To being us near to God;
  O Love, that now ex -- tend -- eth
  A par -- don full and free,
  And bends with eyes of pi -- ty
  On sin -- ners such as we.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We give our hearts' de -- vo -- tion,
  And grate -- ful thanks we bring,
  And lift our hearts and voi -- ces,
  To praise our Lord and King.
  O Love, all thought sur -- pass -- ing,
  What will our rap -- ture be,
  When, safe be -- yond the riv -- er,
  Our souls are lost in Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Love, " "that " pass "eth " know "ledge, "
  "\nO " "Love, " "whose " "beams " "have " "shone "
  "\nThro' " ev er last "ing " a "ges, "
  "\nFrom " "God's " e ter "nal " "throne; "
  "\nWhat " "pow'r " "Thy " "depths " "can " fa "thom? "
  "\nWhat " "tongue " "can " "speak " "Thy " "worth?: "
  "\nAnd " "yet " "Thou " con de scend "est "
  "\nTo " "dwell " "with " "men " "on " "earth. "
  "\nO " "Love, " "all " "love " ex cell "ing: "
  "\nUn" num "ber'd " "hosts " "are " tell "ing, "
  "\nIn " yon "der " bliss "ful " dwell "ing, "
  "\nWhat " "Thou " "for " "them " "hast " "done. "

  \set stanza = "2."
  "\nO " "Love, " "that " "our " re demp "tion "
  "\nMade " per "fect " "thro' " "the " "blood "
  "\nOf " "Him " "whose " "life " "was " of "fer'd, "
  "\nTo " "being " "us " "near " "to " "God; "
  "\nO " "Love, " "that " "now " ex tend "eth "
  "\nA " par "don " "full " "and " "free, "
  "\nAnd " "bends " "with " "eyes " "of " pi "ty "
  "\nOn " sin "ners " "such " "as " "we. "
  "\nO " "Love, " "all " "love " ex cell "ing: "
  "\nUn" num "ber'd " "hosts " "are " tell "ing, "
  "\nIn " yon "der " bliss "ful " dwell "ing, "
  "\nWhat " "Thou " "for " "them " "hast " "done. "

  \set stanza = "3."
  "\nWe " "give " "our " "hearts' " de vo "tion, "
  "\nAnd " grate "ful " "thanks " "we " "bring, "
  "\nAnd " "lift " "our " "hearts " "and " voi "ces, "
  "\nTo " "praise " "our " "Lord " "and " "King. "
  "\nO " "Love, " "all " "thought " sur pass "ing, "
  "\nWhat " "will " "our " rap "ture " "be, "
  "\nWhen, " "safe " be "yond " "the " riv "er, "
  "\nOur " "souls " "are " "lost " "in " "Thee! "
  "\nO " "Love, " "all " "love " ex cell "ing: "
  "\nUn" num "ber'd " "hosts " "are " tell "ing, "
  "\nIn " yon "der " bliss "ful " dwell "ing, "
  "\nWhat " "Thou " "for " "them " "hast " "done. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
