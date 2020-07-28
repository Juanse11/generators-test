---
inject: true
to: "<%= values.loginPage ? `src/router.js` : null %>"
skip_if: <%= values.loginPage %>
after: "<Switch>"
---
    
    
<Route path="<%= values.loginPath %>" exact component={<%= values.loginPage %>} />
