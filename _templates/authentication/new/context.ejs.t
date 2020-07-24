---
to: src/contexts/<%= name %>.jsx
---

import React, { useMemo, useContext, useReducer, createContext } from 'react';

const <%= name %> = createContext();

export function <%= name %>Provider({ children }) {
  const [<%= h.inflection.camelize(name, true) %>, set<%= name %>] = useState(null);
  const value = useMemo(() => ({ <%= h.inflection.camelize(name, true) %>, set<%= name %> }), [<%= h.inflection.camelize(name, true) %>, set<%= name %>]);

  return <<%= name %>.Provider value={value}>{children}</<%= name %>.Provider>;
}

export function use<%= name %>() {
  const context = useContext(<%= name %>);
  if (!context) {
    throw new Error(`use<%= name %> must be used within a <%= name %>Provider`);
  }
  return context;
}



