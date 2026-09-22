_PokemonCenterServicesGreetingText::
	text "How can I help"
	line "you today?"
	done

_MoveDeleterGreetingText::
	text "I can make a"
	line "#MON forget"
	cont "a move."
	done

_MoveDeleterSaidYesText::
	text "Which #MON?"
	done

_MoveDeleterOneMoveText::
	text "That #MON only"
	line "knows one move."
	done

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget?"
	done

_MoveDeleterConfirmText::
	text "Forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	done

_MoveDeleterForgotText::
	text "The move was"
	line "forgotten!"
	done

_MoveDeleterByeText::
	text "Come back anytime."
	done

_MoveReminderWhichMoveText::
	text "Which move should"
	line "it remember?"
	prompt

_MoveReminderNoMovesText::
	text "This #MON has"
	line "no moves to"
	cont "remember."
	prompt

_WonderTradeComingSoonText::
	text "Wonder Trade isn't"
	line "ready yet."
	done

_WonderTradeIntroText::
	text "WONDER TRADE lets"
	line "you send away"
	cont "one #MON."

	para "You'll receive"
	line "a random #MON"
	cont "in return!"

	para "Want to make a"
	line "WONDER TRADE?"
	prompt

_WonderTradeChooseMonText::
	text "Which #MON will"
	line "you trade?"
	prompt

_WonderTradeSelectedText::
	text "Okay! Let's see"
	line "what you get!"
	done
