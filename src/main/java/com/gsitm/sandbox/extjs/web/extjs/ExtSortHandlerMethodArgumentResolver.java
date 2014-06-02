package com.gsitm.sandbox.extjs.web.extjs;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.web.HateoasSortHandlerMethodArgumentResolver;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.ModelAndViewContainer;

public class ExtSortHandlerMethodArgumentResolver extends HateoasSortHandlerMethodArgumentResolver {

    @Autowired
    private ObjectMapper objectMapper;
    private static final String DEFAULT_PARAMETER = "sort";

    @Override
    public Sort resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) {
        String[] directionParameter = webRequest
                .getParameterValues(DEFAULT_PARAMETER);
        if (directionParameter != null && directionParameter.length != 0) {
            return parseParameterIntoSort(directionParameter);
        } else {
            return null;
        }
    }

    private Sort parseParameterIntoSort(String[] directionParameter) {
        List<Order> allOrders = new ArrayList<Sort.Order>();
        for (String part : directionParameter) {
            try {
                List<SortRequest> allSortRequests = objectMapper
                        .readValue(part, new TypeReference<List<SortRequest>>() {
                });
                for (SortRequest sortRequest : allSortRequests) {
                    allOrders.add(new Order(Sort.Direction
                            .fromString(sortRequest.getDirection()), 
                            sortRequest.getProperty()));
                }
            } catch (IOException ex) {
                Logger.getLogger(ExtSortHandlerMethodArgumentResolver.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }
        return allOrders.isEmpty() ? null : new Sort(allOrders);
    }
}
