package nt.ngc.com.filter;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class NgcSitemeshFilter extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        // Map default decorator. This shall be applied to all paths if no other paths match.
        builder.addDecoratorPath("/*", "/WEB-INF/decorators/main-decorator.jsp");
        builder.addExcludedPath("/ajax**");
    }

}
