\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bless the Lord, my Soul!"
  subtitle    = "Sankey No. 209"
  subsubtitle = "C. C. No. 176"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }        s1*2 s2
  \mark \markup { \box "B" } s2     s1*2
  \mark \markup { \box "C" }        s1*3
  \mark \markup { \box "D" }        s1*2 s2 s8.
  \mark \markup { \box "E" } s16 s4 s1*2
  \mark \markup { \box "F" }        s1*3
  \mark \markup { \box "G" }        s1*2 s2 s8.
  \mark \markup { \box "H" } s16 s4 s1*2
  \mark \markup { \box "I" }        s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*3
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*16
  s2 s8 \tempo 4=24 s8 \tempo 4=120 s4
  s2 s8 \tempo 4=24 s8 \tempo 4=120 s4
  s1*2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8. f16 d8 ees f bes4.
  d8. c16 bes8 a bes4 f8 8
  g4 4 \bar "|" \break c8 bes a g
  f4 g a\fermata f8 8 % B
  bes4 4 8 f bes c
  d4 4 4 8 8 % C
  c4 d ees8 8 d c
  bes4 a bes2 \bar "||" \break
  bes2^\markup\smallCaps Chorus. ~8. f16 bes8. c16 % D
  d2 bes
  bes2~8. \bar "|" \break 16 a8. g16
  f2. r4 % E
  a2~8. 16 g8. f16
  bes2 d % F
  c2~8. bes16 a8. g16
  f1
  bes2~8. f16 bes8. c16 % G
  d2 bes
  bes2~8. \bar "|" \break 16 a8. g16
  f2. d8 f % H
  bes4 4 8 a8\fermata f a
  c4 4 8 bes\fermata f bes % I
  d4 f4 8 ees d c
  bes4 a bes2
}

alto = \relative {
  \autoBeamOff
  bes'8. f16 d8 ees f bes4.
  f8. 16 8 ees d4 8 8
  g4 4 c8 bes a g
  f4 e4 ees\fermata 8 8
  d4 4 8 8 f f
  f4 4 4 8 8 % C
  ees4 f g8 ees f ees
  d4 c d2
  d2~8. 16 f8. 16 % D
  f2 2
  g2~8. 16 f8. ees16
  d2. r4 % E
  ees2~8. 16 8. 16
  d2 f % F
  e2~8. g16 f8. ees16
  f4(d ees2)
  d2~8. 16 f8. 16 % G
  f2 2
  g2~8. g16 f8. 16
  d2. 8 f % H
  bes4 d, ees8 ees\fermata f a
  c4 ees,4 8 8\fermata f bes % I
  d4 aes g8 8 8 8
  f4 ees d2
}

tenor = \relative {
  \autoBeamOff
  bes8. f16 d8 ees f bes4.
  bes8. ees16 d8 c bes4 8 8
  bes4 4 c8 8 8 bes
  a4 bes c\fermata 8 8 % B
  bes4 f4 8 bes bes a
  bes4 4 4 8 8 % C
  g4 b c8 8 bes g
  f4 4 2
  g8. 16 8. 16 8. bes16 8. a16 % D
  bes4 4 d2
  ees8. 16 8. 16 8. 16 bes8. 16
  bes4 4 4 r % E
  c8. 16 8. 16 8. 16 bes8. a16
  bes4 f bes2 % F
  g8. 16 8. 16 8. c16 8. bes16
  a4 bes c2
  bes8. f16 8. 16 8. bes16 8. a16 % G
  bes4 4 d2
  ees8. 16 8. 16 8. 16 bes8. 16
  bes4 4 4 d,8 f % H
  bes4 f4 8 8\fermata 8 a
  c4 a f8 8\fermata 8 bes % I
  d4 bes4 8 8 ees8 8 d4 c
  bes2
}

bass = \relative {
  \autoBeamOff
  bes8. f16 d8 ees f bes4.
  f8. 16 8 8 bes,4 8 8
  ees4 4 c8 8 8 8
  f4 4 4\fermata 8 8 % B
  bes4 bes,4 8 8 d f
  bes4 4 4 bes,8 8 % C
  ees4 d c8 8 d ees
  f4 4 bes,2
  bes8. 16 8. 16 8. 16 d8. f16 % D
  bes4 4 2
  ees,8. 16 8. 16 8. 16 8. 16
  bes4 4 4 r % E
  f'8. 16 8. 16 8. 16 8. 16
  bes,4 4 2 % F
  c8. 16 8. 16 8. 16 8. 16
  f4 bes a2
  bes8. bes,16 8. 16 8. 16 d8. f16 % G
  bes4 4 2
  ees,8. 16 8. 16 8. 16 8. 16
  bes4 4 4 d8 f % H
  bes4 bes, c8 8\fermata f a
  c4 f, bes,8 8\fermata f' bes % I
  d4 d, ees8 8 8 8 f4 4
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Praise __ Him, shi -- ning an -- gels,
  strike __ your harps of gold; __
  All __ His hosts a -- fore Him,
  who __ His face be -- hold: __
  Through __ His great do -- min -- ion.
  while __ the a -- ges roll. __
  All His works shall praise Him,
  All His works shall praise Him,
  All His works shall praise Him,
  bless the Lord, my soul!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Praise Him, shin -- ing an -- gels, strike your harps of gold;
  Praise Him, shin -- ing an -- gels, strike your harps of gold;
  All His hosts a -- dore Him, who His face be -- hold.
  All His hosts a -- dore Him, who His face be -- hold.
  Through __ His great do -- min -- ion. while __ the a -- ges roll,
  Through __ His great do -- min -- ion. while __ the a -- ges roll,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise the King of Glo -- ry, He is God a -- lone;
  Praise Him for the won -- ders He to us hath shown;
  For His gifts of kind -- ness all the pil -- grim way;
  For the flam -- ing pil -- lar amd the cloud by day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise Him for re -- demp -- tion, free to ev -- 'ry soul;
  Praise Him for the Foun -- tain that can make us whole;
  For His gifts of kind -- ness and His lov -- ing care;
  For the blest as -- sur -- ance that He ans -- wers prayer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Praise Him for the tri -- als sent as cords of love,
  Bind -- ing us more close -- ly to the things a -- bove;
  For the faith that con -- quers; hope that naught can dim;
  For the land where loved ones ga -- ther un -- to Him.
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Praise " "the " "King " "of " Glo "ry, " "He " "is " "God " a "lone; "
  "\nPraise " "Him " "for " "the " won "ders " "He " "to " "us " "hath " "shown; "
  "\nFor " "His " "gifts " "of " kind "ness " "all " "the " pil "grim " "way; "
  "\nFor " "the " flam "ing " pil "lar " "amd " "the " "cloud " "by " "day. "
  "\nPraise "  "Him, " shi "ning " an "gels, "
  "\nstrike "  "your " "harps " "of " "gold; " 
  "\nAll "  "His " "hosts " a "fore " "Him, "
  "\nwho "  "His " "face " be "hold: " 
  "\nThrough "  "His " "great " do min "ion. "
  "\nwhile "  "the " a "ges " "roll. " 
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "

  \set stanza = "2."
  "\nPraise " "Him " "for " re demp "tion, " "free " "to " ev "'ry " "soul; "
  "\nPraise " "Him " "for " "the " Foun "tain " "that " "can " "make " "us " "whole; "
  "\nFor " "His " "gifts " "of " kind "ness " "and " "His " lov "ing " "care; "
  "\nFor " "the " "blest " as sur "ance " "that " "He " ans "wers " "prayer. "
  "\nPraise "  "Him, " shi "ning " an "gels, "
  "\nstrike "  "your " "harps " "of " "gold; " 
  "\nAll "  "His " "hosts " a "fore " "Him, "
  "\nwho "  "His " "face " be "hold: " 
  "\nThrough "  "His " "great " do min "ion. "
  "\nwhile "  "the " a "ges " "roll. " 
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "

  \set stanza = "3."
  "\nPraise " "Him " "for " "the " tri "als " "sent " "as " "cords " "of " "love, "
  "\nBind" "ing " "us " "more " close "ly " "to " "the " "things " a "bove; "
  "\nFor " "the " "faith " "that " con "quers; " "hope " "that " "naught " "can " "dim; "
  "\nFor " "the " "land " "where " "loved " "ones " ga "ther " un "to " "Him. "
  "\nPraise "  "Him, " shi "ning " an "gels, "
  "\nstrike "  "your " "harps " "of " "gold; " 
  "\nAll "  "His " "hosts " a "fore " "Him, "
  "\nwho "  "His " "face " be "hold: " 
  "\nThrough "  "His " "great " do min "ion. "
  "\nwhile "  "the " a "ges " "roll. " 
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Praise " "the " "King " "of " Glo "ry, " "He " "is " "God " a "lone; "
  "\nPraise " "Him " "for " "the " won "ders " "He " "to " "us " "hath " "shown; "
  "\nFor " "His " "gifts " "of " kind "ness " "all " "the " pil "grim " "way; "
  "\nFor " "the " flam "ing " pil "lar " "amd " "the " "cloud " "by " "day. "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "

  \set stanza = "2."
  "\nPraise " "Him " "for " re demp "tion, " "free " "to " ev "'ry " "soul; "
  "\nPraise " "Him " "for " "the " Foun "tain " "that " "can " "make " "us " "whole; "
  "\nFor " "His " "gifts " "of " kind "ness " "and " "His " lov "ing " "care; "
  "\nFor " "the " "blest " as sur "ance " "that " "He " ans "wers " "prayer. "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "

  \set stanza = "3."
  "\nPraise " "Him " "for " "the " tri "als " "sent " "as " "cords " "of " "love, "
  "\nBind" "ing " "us " "more " close "ly " "to " "the " "things " a "bove; "
  "\nFor " "the " "faith " "that " con "quers; " "hope " "that " "naught " "can " "dim; "
  "\nFor " "the " "land " "where " "loved " "ones " ga "ther " un "to " "Him. "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nPraise " "Him, " shin "ing " an "gels, " "strike " "your " "harps " "of " "gold; "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nAll " "His " "hosts " a "dore " "Him, " "who " "His " "face " be "hold. "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nThrough "  "His " "great " do min "ion. " "while "  "the " a "ges " "roll, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nAll " "His " "works " "shall " "praise " "Him, "
  "\nbless " "the " "Lord, " "my " "soul! "
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
