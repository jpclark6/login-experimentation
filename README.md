# README

Exercise to learn about login and user authentication with sessions.


What are the primary use cases for authentication and authorization within an application?

An app will usually have different content for different users/admins. It is important to limit editing to a user and make sure other people can't edit someones profile, etc. Also it's important to limit who can see what, such as social media sites where you don't want everyone to be able to see everything about someone. You can limit who can see what with authorization. The authentication is required to make sure someone is who they say they are.

What are some ways you could implement different authorization patterns if you wanted some users to have read/write access to different resources? (ie, you can see an index or show page but not allowed to create/edit/delete)

You could create a new namespace for people once they've logged in. By taking someone to a different view page it could have edit links, which would require a user to be logged in to edit. Also these paths could lead to get views which would also require a user to have the correct authorization, which you could store in the user database about which pages they can see.
