import React from 'react'

function FilterByName({category, handleFilterByName}) {
    let name
    // const [name, setName] = useState('')
    function handleChange(event) {
        handleFilterByName(event.target.value)
    }

    return (
        <div>
            <p>
                Filter by {category} {"  "}
                <input type="text" placeholder="please enter the category" value={name} onChange={handleChange} />
            </p>
        </div>
  )
}

export default FilterByName