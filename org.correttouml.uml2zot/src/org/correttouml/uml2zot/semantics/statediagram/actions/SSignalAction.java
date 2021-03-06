package org.correttouml.uml2zot.semantics.statediagram.actions;

import org.correttouml.uml.diagrams.classdiagram.Object;
import org.correttouml.uml.diagrams.expressions.ExpressionContext;
import org.correttouml.uml.diagrams.statediagram.actions.SignalAction;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;


public class SSignalAction implements SAction {

	private SignalAction mades_signalAction;

	public SSignalAction(SignalAction mades_signalAction){
		this.mades_signalAction=mades_signalAction;
	}
	
	@Override
	public Predicate getPredicate(Object... objects) {
		return new Predicate(mades_signalAction.getSignal().getName() + mades_signalAction.getContext().getUMLId()+"_CALL");
	}

	@Override
	public String getSemantics(ExpressionContext context,
			Object... optObject) {
		// No Need for semantics here
		return null;
	}

}
