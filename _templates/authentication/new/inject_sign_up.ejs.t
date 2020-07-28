---
inject: true
to: "<%= values.signUpPage ? `src/router.js` : null %>"
skip_if: <%= values.signUpPage %>
after: "<Switch>"
---
    
    
<Route path="<%= values.signUpPath %>" exact component={<%= values.signUpPage %>} />
