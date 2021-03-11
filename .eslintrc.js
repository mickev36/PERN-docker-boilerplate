module.exports = {
    env: {
        es2021: true,
        node: true,
    },
    extends: ['eslint:recommended'],
    globals: {
        Atomics: 'readonly',
        SharedArrayBuffer: 'readonly',
    },
    parserOptions: {
        ecmaVersion: 2021,
        sourceType: 'module',
    },
    rules: {
        'no-var': 2,
        'no-console': 0,
    },
    plugins: [],
};
