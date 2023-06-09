import { ERROR } from "../constants/base";
import { DELETE, GET_ALL, GET_ONE, POST, UPDATE } from "../constants/building";

const initState = {
    data: [],
    building: {},
    error: false,
    success: true
}
const buildingReducers = (state = initState, payload) => {
    switch (payload.type) {
        case GET_ALL:
            return {
                ...state,
                data: payload.data,
                success: true,
                error: false
            }
        case GET_ONE:
            return {
                ...state,
                building: payload.data,
                success: true,
                error: false
            }
        case POST:
            return {
                ...state,
                success: true,
                error: false
            }
        case UPDATE:
            return {
                ...state,
                success: true,
                error: false
            }
        case DELETE:
            return {
                ...state,
                success: true,
                error: false
            }
        case ERROR:
            return {
                ...state,
                error: true
            }
        default:
            return state;
    }
}


export default buildingReducers;