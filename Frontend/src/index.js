document.addEventListener( 'DOMContentLoaded', initialize)

baseUrl = "http://localhost:3000/posts"

function initialize() {
  getPosts().then(posts => {
    state.posts = posts
    addPostsToPage(state.posts)
  })
}

const state = {
  posts: [],
}

const addPostsToPage = posts => {
  
}

const getPosts = () => {
  return fetch(baseUrl)
    .then(response => response.json())
}
