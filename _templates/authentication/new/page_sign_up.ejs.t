---
to: "<%= locals.values.signUpPage ? `src/pages/${values.signUpPage}.js` : null %>"
---

import React from 'react';

export default function <%= values.signUpPage %>() {
  return (
    <div>
      <%= values.signUpPage %>
    </div>
  );
}