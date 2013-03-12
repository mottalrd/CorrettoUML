/*
* generated by Xtext
*/
grammar InternalStateMachineTriggers;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package org.correttouml.grammars.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.correttouml.grammars.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.correttouml.grammars.services.StateMachineTriggersGrammarAccess;

}

@parser::members {
 
 	private StateMachineTriggersGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(StateMachineTriggersGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getTriggerAssignment()); }
(rule__Model__TriggerAssignment)
{ after(grammarAccess.getModelAccess().getTriggerAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTrigger
entryRuleTrigger 
:
{ before(grammarAccess.getTriggerRule()); }
	 ruleTrigger
{ after(grammarAccess.getTriggerRule()); } 
	 EOF 
;

// Rule Trigger
ruleTrigger
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTriggerAccess().getGroup()); }
(rule__Trigger__Group__0)
{ after(grammarAccess.getTriggerAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleLeft
entryRuleLeft 
:
{ before(grammarAccess.getLeftRule()); }
	 ruleLeft
{ after(grammarAccess.getLeftRule()); } 
	 EOF 
;

// Rule Left
ruleLeft
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLeftAccess().getGroup()); }
(rule__Left__Group__0)
{ after(grammarAccess.getLeftAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleRight
entryRuleRight 
:
{ before(grammarAccess.getRightRule()); }
	 ruleRight
{ after(grammarAccess.getRightRule()); } 
	 EOF 
;

// Rule Right
ruleRight
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getRightAccess().getGroup()); }
(rule__Right__Group__0)
{ after(grammarAccess.getRightAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEvent
entryRuleEvent 
:
{ before(grammarAccess.getEventRule()); }
	 ruleEvent
{ after(grammarAccess.getEventRule()); } 
	 EOF 
;

// Rule Event
ruleEvent
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEventAccess().getAlternatives()); }
(rule__Event__Alternatives)
{ after(grammarAccess.getEventAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEventExtensions
entryRuleEventExtensions 
:
{ before(grammarAccess.getEventExtensionsRule()); }
	 ruleEventExtensions
{ after(grammarAccess.getEventExtensionsRule()); } 
	 EOF 
;

// Rule EventExtensions
ruleEventExtensions
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEventExtensionsAccess().getAlternatives()); }
(rule__EventExtensions__Alternatives)
{ after(grammarAccess.getEventExtensionsAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__Event__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getGroup_0()); }
(rule__Event__Group_0__0)
{ after(grammarAccess.getEventAccess().getGroup_0()); }
)

    |(
{ before(grammarAccess.getEventAccess().getNowEventAssignment_1()); }
(rule__Event__NowEventAssignment_1)
{ after(grammarAccess.getEventAccess().getNowEventAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__EventExtensions__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); }

	'exit' 

{ after(grammarAccess.getEventExtensionsAccess().getExitKeyword_0()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); }

	'enter' 

{ after(grammarAccess.getEventExtensionsAccess().getEnterKeyword_1()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); }

	'start' 

{ after(grammarAccess.getEventExtensionsAccess().getStartKeyword_2()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); }

	'end' 

{ after(grammarAccess.getEventExtensionsAccess().getEndKeyword_3()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); }

	'tick' 

{ after(grammarAccess.getEventExtensionsAccess().getTickKeyword_4()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); }

	'sig' 

{ after(grammarAccess.getEventExtensionsAccess().getSigKeyword_5()); }
)

    |(
{ before(grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); }

	'call' 

{ after(grammarAccess.getEventExtensionsAccess().getCallKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Trigger__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Trigger__Group__0__Impl
	rule__Trigger__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Trigger__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTriggerAccess().getLeftAssignment_0()); }
(rule__Trigger__LeftAssignment_0)
{ after(grammarAccess.getTriggerAccess().getLeftAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Trigger__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Trigger__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Trigger__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTriggerAccess().getRightAssignment_1()); }
(rule__Trigger__RightAssignment_1)?
{ after(grammarAccess.getTriggerAccess().getRightAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Left__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Left__Group__0__Impl
	rule__Left__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLeftAccess().getCommercialAtKeyword_0()); }

	'@' 

{ after(grammarAccess.getLeftAccess().getCommercialAtKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Left__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Left__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Left__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLeftAccess().getEventAssignment_1()); }
(rule__Left__EventAssignment_1)
{ after(grammarAccess.getLeftAccess().getEventAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Right__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Right__Group__0__Impl
	rule__Right__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getHyphenMinusKeyword_0()); }

	'-' 

{ after(grammarAccess.getRightAccess().getHyphenMinusKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Right__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Right__Group__1__Impl
	rule__Right__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getCommercialAtKeyword_1()); }

	'@' 

{ after(grammarAccess.getRightAccess().getCommercialAtKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Right__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Right__Group__2__Impl
	rule__Right__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getEventAssignment_2()); }
(rule__Right__EventAssignment_2)
{ after(grammarAccess.getRightAccess().getEventAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Right__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Right__Group__3__Impl
	rule__Right__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getOpAssignment_3()); }
(rule__Right__OpAssignment_3)
{ after(grammarAccess.getRightAccess().getOpAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Right__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Right__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Right__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getValueAssignment_4()); }
(rule__Right__ValueAssignment_4)
{ after(grammarAccess.getRightAccess().getValueAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__Event__Group_0__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Event__Group_0__0__Impl
	rule__Event__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Event__Group_0__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getEventNameAssignment_0_0()); }
(rule__Event__EventNameAssignment_0_0)
{ after(grammarAccess.getEventAccess().getEventNameAssignment_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Event__Group_0__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Event__Group_0__1__Impl
	rule__Event__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Event__Group_0__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getFullStopKeyword_0_1()); }

	'.' 

{ after(grammarAccess.getEventAccess().getFullStopKeyword_0_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Event__Group_0__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Event__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Event__Group_0__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getEventExtensionAssignment_0_2()); }
(rule__Event__EventExtensionAssignment_0_2)
{ after(grammarAccess.getEventAccess().getEventExtensionAssignment_0_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}









rule__Model__TriggerAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getTriggerTriggerParserRuleCall_0()); }
	ruleTrigger{ after(grammarAccess.getModelAccess().getTriggerTriggerParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Trigger__LeftAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTriggerAccess().getLeftLeftParserRuleCall_0_0()); }
	ruleLeft{ after(grammarAccess.getTriggerAccess().getLeftLeftParserRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Trigger__RightAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTriggerAccess().getRightRightParserRuleCall_1_0()); }
	ruleRight{ after(grammarAccess.getTriggerAccess().getRightRightParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Left__EventAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLeftAccess().getEventEventParserRuleCall_1_0()); }
	ruleEvent{ after(grammarAccess.getLeftAccess().getEventEventParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Right__EventAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getEventEventParserRuleCall_2_0()); }
	ruleEvent{ after(grammarAccess.getRightAccess().getEventEventParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Right__OpAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getOpRELATIONSTerminalRuleCall_3_0()); }
	RULE_RELATIONS{ after(grammarAccess.getRightAccess().getOpRELATIONSTerminalRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Right__ValueAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRightAccess().getValueINTTerminalRuleCall_4_0()); }
	RULE_INT{ after(grammarAccess.getRightAccess().getValueINTTerminalRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Event__EventNameAssignment_0_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_0_0()); }
	RULE_ID{ after(grammarAccess.getEventAccess().getEventNameIDTerminalRuleCall_0_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Event__EventExtensionAssignment_0_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_2_0()); }
	ruleEventExtensions{ after(grammarAccess.getEventAccess().getEventExtensionEventExtensionsParserRuleCall_0_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Event__NowEventAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); }
(
{ before(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); }

	'now' 

{ after(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); }
)

{ after(grammarAccess.getEventAccess().getNowEventNowKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_RELATIONS : ('<'|'>'|'=='|'<='|'>='|'!=');

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

