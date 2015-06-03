package PortletExample1;

import com.vaadin.Application;
import com.vaadin.ui.Label;
import com.vaadin.ui.Window;

@SuppressWarnings("serial")
public class PortletExample1Application extends Application {

	public void init() {
		Window window = new Window();

		setMainWindow(window);

		Label label = new Label("Hello PortletExample1!");

		window.addComponent(label);
	}

}