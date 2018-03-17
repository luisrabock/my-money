import {combineReducers} from 'redux'

const rootReducer = combineReducers({
    dashboard: () => ({sumario: {credit: 100, debt: 50}})
})

export default rootReducer