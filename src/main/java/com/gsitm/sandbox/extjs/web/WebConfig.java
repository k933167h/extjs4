package com.gsitm.sandbox.extjs.web;

import com.gsitm.sandbox.extjs.web.extjs.ExtSortHandlerMethodArgumentResolver;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.hibernate4.Hibernate4Module;
import com.fasterxml.jackson.datatype.joda.JodaModule;
import com.gsitm.sandbox.extjs.core.model.ProjectActionItem;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestMvcConfiguration;
import org.springframework.data.web.HateoasPageableHandlerMethodArgumentResolver;
import org.springframework.data.web.HateoasSortHandlerMethodArgumentResolver;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Configuration
@ComponentScan
@EnableWebMvc
@EnableSpringDataWebSupport
public class WebConfig extends RepositoryRestMvcConfiguration {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/public/**").addResourceLocations("/public/");
    }

    @Override
    public HateoasPageableHandlerMethodArgumentResolver pageableResolver() {
        HateoasPageableHandlerMethodArgumentResolver resolver = new HateoasPageableHandlerMethodArgumentResolver(sortResolver());
        resolver.setSizeParameterName("limit");
        resolver.setOneIndexedParameters(true);
        return resolver;
    }

    @Override
    public HateoasSortHandlerMethodArgumentResolver sortResolver() {
        return new ExtSortHandlerMethodArgumentResolver();
    }

    @Override
    protected void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
        config.exposeIdsFor(ProjectActionItem.class);
        super.configureRepositoryRestConfiguration(config);
    }

    @Override
    protected void configureJacksonObjectMapper(ObjectMapper objectMapper) {
        objectMapper.registerModules(new Hibernate4Module(), new JodaModule());
        super.configureJacksonObjectMapper(objectMapper);
    }
}
