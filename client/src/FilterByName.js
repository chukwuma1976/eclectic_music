import React from 'react'

function FilterByName({category, handleFilterByName}) {
    let name
<<<<<<< HEAD
=======
    // const [name, setName] = useState('')
>>>>>>> 21ff6903f350e670d3c813f55e82810ffc271f75
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