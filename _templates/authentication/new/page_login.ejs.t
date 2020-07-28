---
to: "<%= locals.values.loginPage ? `src/pages/${values.loginPage}.js` : null %>"
---

import React from 'react';

export default function <%= values.loginPage %>() {
  return (
    <div>
      <%= values.loginPage %>
    </div>
  );
}