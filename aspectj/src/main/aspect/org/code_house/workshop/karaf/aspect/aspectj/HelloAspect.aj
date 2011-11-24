/*******************************************************************************
 * Copyright (c) 2008 Heiko Seeberger and others.
 * All rights reserved. This program and the accompanying materials 
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html.
 * 
 * Contributors:
 *     Heiko Seeberger - initial implementation
 ******************************************************************************/

package org.code_house.workshop.karaf.aspect.aspectj;

import java.io.PrintStream;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;;

public aspect HelloAspect {

	after(String msg, PrintStream stream) :
		call(void PrintStream.println(String)) 
		&& !within(HelloAspect) 
		&& args(msg) 
		&& target(stream) {
		stream.println("You just wrote " + msg.length() + " chars to " + stream);
	}
}
