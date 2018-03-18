export function selectTab(tabId) {
    console.log('id: '+ tabId)
    return {
        type:'TAB_SELECTED',
        payload: tabId
    }
}

