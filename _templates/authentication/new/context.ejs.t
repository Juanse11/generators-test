---
to: src/contexts/<%= values.context %>.jsx
---

import React, { useMemo, useContext, useReducer, createContext } from 'react';

const <%= values.context %> = createContext();

export function <%= values.context %>Provider({ children }) {
  const [<%= h.inflection.camelize(values.context, true) %>, set<%= values.context %>] = useState(null);
  const value = useMemo(() => ({ <%= h.inflection.camelize(values.context, true) %>, set<%= values.context %> }), [<%= h.inflection.camelize(values.context, true) %>, set<%= values.context %>]);

  return <<%= values.context %>.Provider value={value}>{children}</<%= values.context %>.Provider>;
}

export function use<%= values.context %>() {
  const context = useContext(<%= values.context %>);
  if (!context) {
    throw new Error(`use<%= values.context %> must be used within a <%= values.context %>Provider`);
  }
  return context;
}



