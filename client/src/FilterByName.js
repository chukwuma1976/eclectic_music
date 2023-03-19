import React from 'react'

function FilterByName({handleFilterByName}) {
    let name
    // const [name, setName] = useState('')
    // function handleChange(event) {
    //     setName(event.target.value)
    //     handleFilterByName(event.target.value)
    // }

    return (
        <div>
            <h3>Filter by name</h3>
            <input type="text" value={name} onChange={(e)=>handleFilterByName(e.target.value)} />
        </div>
  )
}

export default FilterByName