import React from 'react'

function FilterByName({handleFilterByName}) {
    let name
    // const [name, setName] = useState('')
    function handleChange(event) {
        handleFilterByName(event.target.value)
    }

    return (
        <div>
            <h3>Filter by name</h3>
            <input type="text" value={name} onChange={handleChange} />
        </div>
  )
}

export default FilterByName