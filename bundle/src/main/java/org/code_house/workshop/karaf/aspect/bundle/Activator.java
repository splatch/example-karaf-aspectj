package org.code_house.workshop.karaf.aspect.bundle;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator implements BundleActivator {

	public void start(BundleContext context) throws Exception {
		System.out.println("Starting " + context.getBundle().getSymbolicName());
	}

	public void stop(BundleContext context) throws Exception {
		System.out.println("Stopping " + context.getBundle().getSymbolicName());
	}

}
