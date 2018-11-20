\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "We Will Walk with God"
  subtitle = "Sizohamba nave"
  composer = "Traditional Zulu"
  copyright = \today
}

global = {
  \key f \major
  \time 4/4
}

soprano = \relative c'' {
  a8 f16 g~g f e8 c f a f
  e8 e16 e~e f g8 f4. r8
  a8 f16 g~g f e8 c f a f
  e8 e16 e~e f g8 f4. r8
  d8 f bes g ~ g16 a8 f16~f4
  g8 g16 g ~ g a bes8 a4. r8
  d,8 f bes g ~ g16 a8 f16~f4
  e8 e16 e ~ e f g8 f4. r8
  \bar "||"
}

alto = \relative c'' {
  a8 f16 g~g f e8 c f f d
  c8 c16 c~c d e8 f4. r8
  a8 f16 g~g f e8 c f f d
  c8 c16 c~c d e8 f4. r8
  bes,8 d f d~d16 f8 d16 ~ d4
  e8 e16 e ~ e f g8 f4. r8
  bes,8 d f d~d16 f8 d16 ~ d4
  c8 c16 c ~ c d e8 f4. r8
}

firstverse = \lyricmode {
  We will walk _ with God, my broth- ers; we will walk _ with God.
  We will walk _ with God, my sist- ers; we will walk _ with God.
  We will go re- joic- ing till the king- dom has come.
  We will go re- joic- ing till the king- dom has come.
}

secondverse = \lyricmode {
  Si- zo- ham- ba na- ve wo, wo, wo, si- zo- ham- ba na- ve.
  Si- zo- ham- ba na- ve wo, wo, wo, si- zo- ham- ba na- ve.
  Ngom- hla wen- ja- bu- la, si- zo- ham- ba na- ve.
  Ngom- hla wen- ja- bu- la, si- zo- ham- ba na- ve.
}

Mwords =\lyricmode {
}

\book
{
  \score
  {
    \context ChoirStaff
    <<
          \context Staff  = all 
          {
            <<
              \context Voice = sopranos { \voiceOne << {\global \soprano} >> }
	      \context Voice = altos    { \voiceTwo << {\global \alto   } >> }
            >>
          }
	  \context Lyrics = firstverse  \lyricsto sopranos \firstverse
	  \context Lyrics = secondverse \lyricsto sopranos \secondverse
    >>
  }
  \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
  }
}
