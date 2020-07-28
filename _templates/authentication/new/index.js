module.exports = {
  
  prompt: ({ inquirer }) => {
    return inquirer
      .prompt({
        type: 'multiselect',
        name: 'components',
        message: 'Pick your components',
        choices: [
          { name: 'Current user context', test: 1, value: { name: 'context', message: 'User context name', initial: 'CurrentUser' } },
          { name: 'Login page' , value: [{ name: 'loginPage', message: 'Login page component name', initial: 'LoginPage' }, { name: 'loginPath', message: 'Login page URl', initial: '/login' }]},
          { name: 'Sign up page', value: [{ name: 'signUpPage', message: 'Sign up page component name', initial: 'SignUpPage'} , { name: 'signUpPath', message: 'Sign up page URl', initial: '/sign-up' }]},
        ], result(names) {
          return this.map(names);
         }
      })
      .then(answers => {
        const { components } = answers;
        const form = {
          type: 'form',
          name: 'values',
          message: 'Please provide the following information:',
          choices: []
        }
        Object.keys(components).forEach((field) => {
          form.choices = form.choices.concat(components[field]);
        })
        console.log(form);
        return inquirer.prompt(form).then(nextAnswers => {
          console.log(nextAnswers);
          return Object.assign({}, nextAnswers)
        })
      })
  },
}
