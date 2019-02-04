document.addEventListener( 'DOMContentLoaded', initialize)

const baseUrl = "http://localhost:3000/posts"
const main = document.querySelector('.main')

function initialize() {
  getPosts().then(posts => {
    state.posts = posts
    addPostsToPage(state.posts)
  })
}

const state = {
  posts: [],
  comments: []
}

const addPostsToPage = posts => {
  const main = document.querySelector(".main")
  main.innerHTML = ""
  posts.forEach(post => addPostToCard(post))
}

const addPostToCard = post => {
  state.comments = post.comments
  const postCard = document.createElement('div')
  postCard.className = 'card'
  postCard.dataset.id = post.id

  const postImage = document.createElement('img')
  postImage.className ='post-image'
  postImage.setAttribute('src', post.image)

  const postTitle = document.createElement('h2')
  postTitle.innerText = post.title

  const postDescription = document.createElement('p')
  postDescription.innerText = post.description

  const buttonWrapper = document.createElement('div')

  const likeButton = document.createElement('button')
  likeButton.className = 'like-button'
  likeButton.innerHTML = `${post.like_count} <img class='like-button-image' src='./images/like.png'>`

  likeButton.addEventListener('click', () => {
    increaseLikes(post.id)
    const postToChange = state.posts.find(storedPost => storedPost.id === post.id)
    updatePost(postToChange)
  })

  const viewCommentsButton = document.createElement('button')
  viewCommentsButton.className = 'comments-button'
  viewCommentsButton.setAttribute('style', 'vertical-align:middle')
  viewCommentsButton.innerHTML = "<span>Comments </span>"

  viewCommentsButton.addEventListener('click', () => {
    
  })

  buttonWrapper.append(likeButton, viewCommentsButton)
  postCard.append(postTitle, postImage, postDescription, buttonWrapper)
  main.append(postCard)
}

const updatePostCards = () => {
  main.innerHTML = ''
  addPostsToPage(state.posts)
}

const increaseLikes = id => {
  const post = state.posts.find(post => post.id === id)
  post.like_count++
  updatePostCards()
}

const getPosts = () => {
  return fetch(baseUrl)
    .then(response => response.json())
}

const updatePost = post => {
  return fetch(baseUrl +`/${post.id}`, {
    method: 'PATCH',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(post)
  })
}
